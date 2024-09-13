import streamlit as st
import mysql.connector
from PIL import Image
import pytesseract
import re
from fpdf import FPDF
import tempfile
import base64
import os

def clean_text(text):
    if isinstance(text, tuple):
        return tuple(clean_text(item) for item in text)
    elif isinstance(text, str):
        return text.encode('latin-1', 'replace').decode('latin-1')
    else:
        return text

# Streamlit UI
st.title("Data Extraction of FYP Title Page")
st.header('HAZARA UNIVERSITY MANSEHRA')
st.write("This system allows you to upload a thesis image. It will extract text from the image and save it for future reference.")

# Create a layout with two columns
col1, col2 = st.columns([1, 1])

# Function to retrieve data from the database based on search criteria
def fetch_data(search_term, search_fields):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="unidb"
        )
        cursor = connection.cursor()

        # Base query
        query = "SELECT id, title, session, program, submitted_by, supervised_by FROM detail_tbl5"
        if search_term and search_fields:
            conditions = []
            for field in search_fields:
                conditions.append(f"{field} LIKE '%{search_term}%'")
            query += " WHERE " + " OR ".join(conditions)
        cursor.execute(query)
        records = cursor.fetchall()

        return records

    except mysql.connector.Error as error:
        st.error(f"Error: {error}")
        return []

# Function to delete a record
def delete_record(record_id):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="unidb"
        )
        cursor = connection.cursor()

        cursor.execute("DELETE FROM detail_tbl5 WHERE id = %s", (record_id,))
        connection.commit()

    except mysql.connector.Error as error:
        st.error(f"Error: {error}")

# Function to display the delete button
def delete_button(record_id, record_list):
    if st.button(f"Delete Record {record_id}", key=f"delete_button_{record_id}"):
        delete_record(record_id)
        st.success("Record deleted")
        # Update the record list to remove the deleted record
        record_list[:] = [record for record in record_list if record[0] != record_id]

uploaded_file = col1.file_uploader("Upload Thesis Image:", type=["jpg", "jpeg", "png"])

if uploaded_file is not None:
    # Function to process the uploaded image
    def process_image(uploaded_file):
        # Read the uploaded image
        img = Image.open(uploaded_file)
        # Preprocess the image
        img = img.convert('L')  # Convert to grayscale
        img = img.resize((1000, 1000))  # Resize for better OCR results
        img = img.point(lambda x: 0 if x < 140 else 255)  # Binarize the image
        
        text = pytesseract.image_to_string(img, lang='eng')
        return text

    # Resize the image using PIL
    img = Image.open(uploaded_file)
    img = img.resize((700, 700))  # Resize to 300x300 pixels

    # Display the uploaded image with fixed size
    st.image(img, caption="Uploaded Image", use_column_width=False)
    # Process the image
    text = process_image(uploaded_file)

    # Display the extracted data
    st.subheader("Extracted Data:")
    st.write("Here, you'll see the text extracted from the uploaded image.")
    st.text_area("", value=text, height=300)

    # Extract specific details using regular expressions
    title = re.search(r'^\s*(.*\S.*)\s*$', text, re.MULTILINE)
    session = re.search(
        r'(?:Session|session)?\s*(?:[:-]?\s*|\()?(\d{4})\s*[-–=:]?\s*(\d{4})\b', text, re.IGNORECASE
    ) or re.search(
        r'Session\s*\(?(Fall|Spring)?\s*(\d{4})\s*[-–=:]?\s*(Fall|Spring)?\s*(\d{4})\)?', text, re.IGNORECASE
    )
    program = re.search(r'Program\s+(.*)', text)
    submitted_by = re.search(r'Submitted\s+By\s+(.*)', text, re.IGNORECASE)
    supervised_by = re.search(r'Supervised\s+by\s+(.*)', text, re.IGNORECASE)

    title_text = title.group(1).strip() if title else ""
    session_text = "{}-{}".format(session.group(1), session.group(2)).strip() if session else ""
    program_text = program.group(1).strip() if program else ""
    submitted_by_text = submitted_by.group(1).strip() if submitted_by else ""
    supervised_by_text = supervised_by.group(1).strip() if supervised_by else ""

    st.write(f"Title: {title_text}")
    st.write(f"Session: {session_text}")
    st.write(f"Program: {program_text}")
    st.write(f"Submitted By: {submitted_by_text}")
    st.write(f"Supervised By: {supervised_by_text}")

    # Save data to the database
    if st.button("Save Record"):
        try:
            connection = mysql.connector.connect(
                host="localhost",
                user="root",
                password="",
                database="unidb"
            )
            cursor = connection.cursor()

            # Insert data into the database
            cursor.execute(
                "INSERT INTO detail_tbl5 (title, session, program, submitted_by, supervised_by) VALUES (%s, %s, %s, %s, %s)",
                (title_text, session_text, program_text, submitted_by_text, supervised_by_text)
            )
            connection.commit()
            st.success("Data saved to the database.")

        except mysql.connector.Error as error:
            st.error(f"Error: {error}")

        finally:
            if connection is not None and connection.is_connected():
                cursor.close()
                connection.close()

    # Try the process again
    if st.button("Try Again"):
        uploaded_file = None

# Sidebar search bar with checkboxes
search_term = st.sidebar.text_input("Search:")
search_fields = []
if st.sidebar.checkbox("Search by Title"):
    search_fields.append("title")
if st.sidebar.checkbox("Search by Session"):
    search_fields.append("session")
if st.sidebar.checkbox("Search by Supervisor"):
    search_fields.append("supervised_by")
if st.sidebar.checkbox("Search by Submitted By"):
    search_fields.append("submitted_by")

# Add a search button
search_button_clicked = st.sidebar.button("Search")

# Count and display the total number of records in the database
try:
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="unidb"
    )
    cursor = connection.cursor()

    cursor.execute("SELECT COUNT(*) FROM detail_tbl5")
    total_records = cursor.fetchone()[0]

    # Display the total records right next to the search bar
    st.sidebar.text(f"Total Records: {total_records}")

except mysql.connector.Error as error:
    st.error(f"Error: {error}")

finally:
    if connection is not None and connection.is_connected():
        cursor.close()
        connection.close()

# Function to create PDF for a record
def create_pdf(record, selected_fields):
    def sanitize_text(text):
        replacements = {
        '\u2014': '-',  # em dash
        '\u2014': '_',  # em dash
        '\u2014': '--',  # em dash
        '\u2013': '-',  # en dash
        '\u2018': "'",  # left single quotation mark
        '\u2019': "'",  # right single quotation mark
        '\u201c': '"',  # left double quotation mark
        '\u201d': '"',  # right double quotation mark
        # Add more replacements if necessary
    }
        for old, new in replacements.items():
            text = text.replace(old, new)
        
        # Remove any remaining non-ASCII characters
        text = text.encode('ascii', 'ignore').decode('ascii')
        
        return text

    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("Arial", size=12)
    pdf.cell(200, 10, txt="Thesis Record", ln=True, align='C')
    pdf.ln(10)
    pdf.cell(200, 10, txt=f"Record ID: {record[0]}", ln=True)

    if "title" in selected_fields:
        pdf.multi_cell(0, 10, txt=f"Title: {sanitize_text(record[1])}")
    if "session" in selected_fields:
        pdf.cell(200, 10, txt=f"Session: {sanitize_text(record[2])}", ln=True)
    if "program" in selected_fields:
        pdf.cell(200, 10, txt=f"Program: {sanitize_text(record[3])}", ln=True)
    if "submitted_by" in selected_fields:
        pdf.cell(200, 10, txt=f"Submitted By: {sanitize_text(record[4])}", ln=True)
    if "supervised_by" in selected_fields:
        pdf.cell(200, 10, txt=f"Supervised By: {sanitize_text(record[5])}", ln=True)
        
    return pdf

# Fetch and display the records based on the search criteria only if the search button is clicked
if search_button_clicked:
    records = fetch_data(search_term, search_fields)

    if records:
        # Use a list to manage the records
        displayed_records = records.copy()
        
        for record in displayed_records:
            if "title" in search_fields:
                st.write(f"Title: {clean_text(record[1])}")
            if "session" in search_fields:
                st.write(f"Session: {clean_text(record[2])}")
            if "program" in search_fields:
                st.write(f"Program: {clean_text(record[3])}")
            if "submitted_by" in search_fields:
                st.write(f"Submitted By: {clean_text(record[4])}")
            if "supervised_by" in search_fields:
                st.write(f"Supervised By: {clean_text(record[5])}")

            delete_button(record[0], displayed_records)

            # st.write(f"Generate PDF for Record {record[0]}")
            pdf = create_pdf(record, search_fields)
            
            with tempfile.NamedTemporaryFile(delete=False, suffix=".pdf") as tmp_file:
                pdf.output(tmp_file.name)
                # st.success(f"PDF generated: {tmp_file.name}")

                # Read the PDF file and create a download link
                with open(tmp_file.name, "rb") as f:
                    pdf_data = f.read()

                b64_pdf = base64.b64encode(pdf_data).decode("utf-8")
                pdf_link = f'<a href="data:application/octet-stream;base64,{b64_pdf}" download="record_{record[0]}.pdf">Download PDF</a>'
                st.markdown(pdf_link, unsafe_allow_html=True)
    else:
        st.write("No records found.")



footer = """<style>
a:link , a:visited{
color: blue;
background-color: transparent;
text-decoration: underline;
}

a:hover,  a:active {
color: red;
background-color: transparent;
text-decoration: underline;
}

.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color: white;
color: black;
text-align: center;
}
</style>
<div class="footer">
<p>Developed with ❤ by Usman Javed, Muhammad Shoaib, Rimsha Bibi</p>
</div>
"""
st.markdown(footer, unsafe_allow_html=True)
