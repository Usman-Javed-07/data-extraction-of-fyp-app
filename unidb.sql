-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 12:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_tbl`
--

CREATE TABLE `detail_tbl` (
  `id` int(11) NOT NULL,
  `detail` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_tbl5`
--

CREATE TABLE `detail_tbl5` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `submitted_by` varchar(255) DEFAULT NULL,
  `supervised_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_tbl5`
--

INSERT INTO `detail_tbl5` (`id`, `title`, `session`, `program`, `submitted_by`, `supervised_by`) VALUES
(25, 'Face Attendance Using Python', '2018-2022', 'Bachelor of Studies In Softwere Engineering', 'Syed Fasee Ul Hasean 52373 |', 'Syed Hammad Sherazi'),
(30, 'ABC PICKER GAME', '2018-2022', 'BSSE', 'Husnain Asif 52308-FI8', 'Ms. Romana Saleem'),
(31, 'Android & Arduino Base Automatic home door lock', '2018-2022', 'Bachelor of Studies In Software Engineering', 'Kamran Ali 52322sF 18', 'Dr. Hammad Sherazi'),
(33, 'CAR RENTAL WEBSITE', '2017-2021', 'Bachelor of studies in computer science', 'Muhammad Hassaan 47590', 'Mr.Zulfiqar Ahmed'),
(34, 'CHILD IMMUNIZATION SYSTEM', 'Fall-2018', 'Bachelor of Studies in Computer Science', 'Sharif Ullah 51334', 'Dr. Hizbullah Khattak'),
(37, 'GPs TRACKING SYSTEM FOR AMBULANCE', '2018-2022', '', 'Usama Khan', 'Faisal Bahadur'),
(38, 'VIRTUAL MOUSE', '2019-2022', 'BSCS', 'Muhammad Shujaat 53690-S19', 'Dr. Faisal Bahadur'),
(39, 'MEDICAL REPRESENTATIVE', '2019-22', 'Bachelor of Studies in Computer Science', 'Painda Muhammad 53694-S19', 'Dr. Faisal Bahadur'),
(40, 'Daily Expenses Tracker System', '2019-2023', 'Bachelor of Studies in Computer Sclences', 'Musadiq Iqbal', 'Ghulam Mustafa Assad'),
(41, 'VOICE AIDED ATM FOR BLIND PEOPLB', '', 'BSCS', 'Ali Khan 53660-S19', 'Dr. Faisal Bahadur'),
(42, 'Smart Topic Extractor', '2019-2022', 'Bachelor of Studies in Software Engincerig', 'Hamish Ullah 54151', 'Mr. Asif Umar'),
(43, 'The Flutter FacMan Game', '2019-2022', 'Bachelor of Studies in Software Engtneering', 'Ayesha Lodhi 54147-S19', 'Dr. Faisal Bahadur'),
(44, 'FARM MANAGEMENT SYSTEM', '2018-2022', 'Bachelor of Studies in Computer Science', 'Mobashir Afzal 53716 +619', 'Dr. Zalfiqar Abmed'),
(45, 'Geography Flashcard Quiz Game In Python', '2019-2022', 'Bachelor of Studies In Software Engineering', 'Sher Ali 54167819', 'Mr Miraj Gul'),
(46, 'HEART RATE MONITORING FINGER BASED', '2018-2021', 'Bachelor of Studies in Computer Science', 'Lal Badshah 49569', 'Dr. Hammad Sherazi'),
(47, 'SMART GYM MANAGEMENT SYSTEM', '2015-2019', '', 'Shehriyar Khan Reg. No. 14-BCS-F-Hu-81', 'Mr. Rizwan Munawar'),
(48, 'CONSTRUCTION BIDDING SYSTEM', '2015-2019', 'Bachelor of Studies In Computer Science', 'Muhammad Janees Khan 14-BCS-F-HU-53', '| Ghulam Mustafa Assad'),
(49, 'IMAGE COMPRESSION BASED ON DISCRETE', '2015-2019', 'Bachelor of Studies in Computer Science', 'Sheraz Khan 15-BCS-F-HU-62', 'Mr. Ibrar Afzal'),
(51, 'EXAMINATION HALL SEATING ARRANGEMENT', '2015-2019', 'Bachelors of Studies in Computer Science', 'Raja Amin Ul Furgan 15=BCS-FsHUs115', 'Mr. Ibrar Afzal —'),
(52, 'ONLINE QUIZE GAME FOR IT DEPARTMENT', '2015-2019', 'Bachelor of Studies in Computer Science', 'Sayed Saleem Shal Roll No. 40295', ''),
(53, 'ONLINE DEPARTMENTAL MERIT LIST GENERATOR', '2015-2019', 'Bachelor of Studies in Computer Sclence', 'Azizul Karim Khan 15-BCS-F-HU=16', 'Mr. Imran Khan'),
(54, 'ONLINE TOUR AND TRAVEL SERVICES', '', 'Bachelor of Studies in Computer Science', 'Muhammad Huzaifa', 'Mr. Jawaid Iqbal'),
(55, 'BEAUTY PARLOR SYSTEM PROJECT', '2015-2019', 'Bachelor of Studies in Computer Science', 'Nayab Naseem Roll No: 40306', 'Mr. Awais Khan'),
(56, 'HISTORICAL PLACES OF MANSEHRA', '2015-2019', 'Bachelor of Studies ia Computer Science', 'Ibrar Ahmad Roll No: 40255', 'Mr. Ghulam Mustefa Asad'),
(57, 'HISTORICAL PLACES OF MANSEHRA', '2015-2019', 'Bachelor of Studies ia Computer Science', 'Ibrar Ahmad Roll No: 40255', 'Mr. Ghulam Mustefa Asad'),
(58, 'JALIL HARDWARE SHOP MANAGEMENT SYSTEM', '2015-2019', 'Bachelor of Studies in Computer Science', 'Noor UI Haq 15-BCS-F-HU-25', 'Mr. Zulfiqar Ahmad'),
(59, 'BILAL COACH TERMINAL ONLINE', '2015-2019', 'Bachelor of Studies in Computer Science', 'Wajid Khan | 5-BCS-F-HU23', 'Mr. Imran Khan'),
(60, 'PICTO WORD', '2015-2019', 'Bachelor of Studics in Computer Science', 'Obaid Anwar 1 5eB8CS-F-HU-08', 'Mr. Zulfigar Ahmad'),
(61, 'PICTO WORD', '2015-2019', 'Bachelor of Studics in Computer Science', 'Obaid Anwar 1 5eB8CS-F-HU-08', 'Mr. Zulfigar Ahmad'),
(62, 'CAR RENTING MANAGEMENT SYSTEM', '2014-2019', 'Bachelor of Studies In Computer Science', 'Ehtazaz UI Haq 14-BCS-F-HU-28', 'Mr, Fagir Gul'),
(63, 'ONLINE FEE PAYMENT SYSTEM FOR AFQ PUBLIC', '2015-2019', 'Bachelor of Studies im Computer Science', 'Amjid All 15-BCS-FeHU255', 'Mrs. Romana Saleem'),
(64, 'JALIL HARDWARE SHOP MANAGEMENT SYSTEM', '2015-2019', '', 'Noor U! Haq 0S-BCS-FFHU-2$', 'Me. Zulfiqar Ahmad'),
(65, 'ONLINE DEPARTMENTAL MERIT LIST GENERATOR', '2015-2019', 'Bachelor of Studies in Computer Science', 'Azizul Karim Khon §5-BCS-F-HUsI6', 'Mr. imran Khan'),
(66, 'ABC PICKER GAME', '2018-2022', 'BSSE', 'Husnain Asif 52308-Fi8', 'Ms. Rovian Saleem'),
(67, 'Hacking Mini Game', '2018-2022', 'BSCS', 'Osama Manzoor 51314', 'Dr Hizbullah Khattak'),
(68, 'THE GARDENER APP', 'Session 2019 2023', 'Bachelor of Studies in Software Engineering', 'SAEED 54161-S19\r\nMUHAMMAD WAHEED 541€0-S19\r\nYASIR KHAN 54172-S19', 'Sir. Faisal Bahadar'),
(69, 'TOY EXCHANGE APP', '(Session 2019-23)', 'BSSE', 'Mohammad Usman 56938-F19', 'Mr. Asif Umar'),
(70, '“My Expenses', '2019-2023', 'Bachelor In Computer Science Hons', 'Babar Ali 57034-F19\r\nFurqan Khalid 57042-F19', 'Mr. Hizbullah Khattak'),
(71, 'GROCERY SHOPPING STORE', '2019-2023', 'Bachelor of Studies in Computer Science', '\r\numair riaz\r\nusman ali \r\nusama', 'Mr.Amanullah Bloch'),
(72, 'HIDE AND SEEK GAME .', 'Fall-2019', 'Bachelor of Studies in Computer Selence', 'Fahad Anwar Abbasi 57039 F-19\r\n\r\nSyed Ali Raza Shah 57049 F-19\r\n\r\nQazi Muhammad Sajeer S7112 F-19\r\nSupervised By:', 'Dr. Asfandyar Khan'),
(73, 'FIUMAN RESOURCE MANAGEMENT SYSTEM', '2019-2023', 'Bachelor of Studies in Computer Science', 'Mubammad Asad Khan 57087', 'Mr Asif Umer'),
(74, 'INSTITUTE ENTRY CHECKER THROUGH FACE', 'Fall-2019', 'Bachelor of Studies in ‘Computer Science', 'Syed Saad Ahmad (57136-F19)', 'Dr. Zulfiqar Ahmad'),
(75, 'Interactive Hindko and Urdu Learning APP for Kids', 'Fall-2019', 'Bachelor of Studies in Computer Science', 'Muhammad Rashid 57143-F19\r\nMuhammad Shaheer 57101-F19\r\nMahjabeen 57076-F19', 'Dr. Faisal Bahadur'),
(76, 'IOT-BASED SMART CAR PARKING SYSTEM', 'Session 2019 —2023', 'Bachelor of Studies in Computer Science', 'Gul Afzal 57170-F19', 'Dr. Zulfiqar Ahmad'),
(77, 'JUDICIARY LEAVE MANAGEMENT SYSTEM', '2019-2023', 'Bachelor of Studies in Computer Science\r\n', 'Muhammad Aizaz 57085-F19\r\nZia Ullah Khon, 57162-F19\'\r\nZia Ur Rehman 57163-F19', 'Mr. Asfandyar Khan'),
(78, 'LINKING PARENTS TO UNIVERSITY', '2019-2023', 'Bachelor of Studies in Computer Science (BSCS)', 'Anus Israr Khan 57027-F 19\r\nM. Faizan Babar 57045-F19', 'Mr, Imran Khan'),
(79, 'OFFICIAL WEBSITE FOR DISTRICT\r\nPOLICE MANSEHRA\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '(Session 2019-23)', 'BSCS ©', 'Hassaan Khalid ST060-FI9\r\nHasnat Tariq 57059-F19\r\nIshwa Khan 57069-FI9\r\nMuhammad Fahad 57088-HP\r\nGul e Rana 57056-t19', 'Mr. Amanullah Baloch'),
(80, 'ONLINE AUTOMOBILE OL CHANGING SERVICES', '2019-2023', 'Bachelor of Studies in Computer Science', 'Fatima Jamal 57055\r\nWajiha Gul 57094\r\nSadia Mushtaq 57091\r\n\r\n\r\n', 'Mr. FAQIR GUL'),
(81, 'PROCTORIAL BOARD REPORTING SYSTEM', '2019-2023', 'Bachelor of Studies in Computer Science\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Afaq Ahmed S701\r\n\r\nAfaq Khan\r\nAzam Tariq 57032-F19', 'Mr, Asif Umer'),
(82, 'J0B PORTAL FOR JUDICARY SYSTEM', '2021-2023', 'Bachelor of Studies in Computer Science\r\n', 'Aiman Bibi 3011-2104', 'Mr. asif Umer'),
(83, 'PLANT DISEASE DETECTION', '2019-2023', 'Bachelor of Studies in Computer Science', 'Hammad Tariq 5STI72-F lS\r\nMuhammad Rashid 57142-Fl9\r\nMuhammad Abdullah 57180-E19', 'Mr. Faqir Gul'),
(84, 'ONLINE TEST & RESULT GENERATION SYSTEM', 'Fall-2059', 'Bachelors in Computer Science', '‘Wasiq Nisar 57160-F19\r\nFahad Khalid ST167-F19\r\nMohammad Jalal 57081-F 19', 'Dr. Asfandyar Khan'),
(85, 'IOT BASED FIRE DEPARTMENT ALERT SYSTEM', 'Spring-2020', 'Bachelor of Studies in Computer Science', 'Kafeel Ahmed 51284\r\n\r\nMuhammad Umar 58047\r\n\r\n', 'Mr. Asif Umer'),
(86, 'HOSTEL FINDER SYSTEM (HOSTEL', '(Spring 2020- Fall 2024)', 'Bachelor’s In Computer Sciences', 'Muhammad Zakarya 58050-S020', 'Dr. Faisal Bahadar'),
(87, 'WE.', 'Session Spring 2020 — Fall 2023', 'Bachelor of Studies in Computer Science', 'Bibi Muqaddas 58029-8020', 'Ma’am Romana Saleem'),
(88, 'SMART ATTENDANCE SYSTEM USING FACIAL', '2020-2023', '\r\n\r\nBachelor Of Studies in Computer Sciences\r\n\r\n\r\n', 'MUHAMMAD USMAN ASHRAF 58048-5020', 'Dr. Zufiqar Ahmad'),
(89, 'IOT BASED FIRE DEPARTMENT ALERT SYSTEM', 'Spring-2020', 'Bachelor of Studies in Computer Science', 'Kafeel Ahmed 51284\r\nMuhammad Umar 58047\r\n\r\n\r\n', 'Mr, Asif Umer'),
(90, 'AMAN NEWS WEBISTE', 'Session (Spring 2020 - Fall 2023)', 'Bachelor of Studies in Computer Science', 'Abdul Wahid 58016-5020', 'Mr, Ghulam Mustafa Asad'),
(91, 'Unity Forest Hunting Game\r\n\r\n\r\n\r\n', 'Session (2020- Spring 2023)', 'Bachelor of Studies in Software Engineering', 'Haneef Ur Rehman 58562-8020', 'Mr. Asif Umar'),
(92, '\r\nOnline Property Market Place\r\n\r\n\r\n\r\n\r\n\r\n', 'Session (2020 - 2023)', 'Bachelor of Studies in Software Engineering', 'Muhammad Kamran 58575-S020\r\n\r\nWajid Jallani 58596-$020', 'Dr.Faisal Bahadar'),
(93, 'MOBILE SHOP MANAGEMENT SYSTEM', '2020-2023', 'Bachelor of Science in Software Engineering', 'Submitted by:\r\nTalal Ahmed 58593-5020\r\nEhsan Ali 56883-F19\r\n\r\n', 'Mr. Ghulam Mustafa Asad'),
(94, 'LEARN MUSHAF ONLINE APP', 'Session(2020-2023)\r\n\r\n\r\n\r\n', 'Bachelor of Studies in Software Engineering', 'Aymen Sajjad 58559\r\nHaleema Sadia Khan 58561\r\nLaiba Anwar 58571', 'Mr. Ibrar Afzal\r\n'),
(95, 'Food Price System Android Application :', 'Spring-2020', 'Bachelor of Studies in Software Engineering\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Abdullah Khan 58552\r\nKashif Khan 58569\r\nAmeer Hamza 58556', '\r\nDr. Zulfiqar Ahmed'),
(96, 'Smart Trace (Mobile Application)\r\n\r\n\r\n\r\n', '\r\nSession (2020-2023) ', 'Bachelor of Studies in Software Engineering ©', 'Hassan Shafique \r\nHanzala Manzoor\r\nMuhammad Wasif', 'Mr. Ibrar Afzal'),
(97, 'MY SAFETY APPLICATION', '2020-2023', 'Bachelor of Studies in Software Engineering', 'Abdullah Ahmad 56862-F19', 'Mr. Miraj Gul'),
(98, 'E-Programming Learning App', '2020-2023', 'Bachelor of Science in Software Engineering\r\n\r\n\r\n\r\n', 'Muhammad Usama 58579-S020\r\nMuhammad Muzammil 58576- S020', 'Dr. Hizbullah Khattak'),
(99, 'PLANT DESEIES DETECTION i', 'Fall-2018', 'Bachelor of Studies in Computer Science', 'Awais Khan $1254\r\n\r\n', 'Dr. Syed Hammad Sherazi'),
(100, 'ANDROID MOBILE GAME APP', 'session (Fall 2018 — Spring 2022)\r\n\r\n\r\n\r\n\r\n\r\n', 'Bachelor of Studies in Computer Sciences', 'Muhammad Awais 51299 ', 'Dr. Hizbullah Khattak'),
(101, '\'SIRAN VALLEY TROUT FISH POND', 'Fall-2018', 'Bachelor of Studies in Computer Science', 'Ahsan Ullah Khan\r\nRoll No. 51241\r\n\r\n\r\n', 'Mr. Asif Umer'),
(102, 'PARKED BIKE LOCATOR', '2018-2022', 'Bachelor of Studies in Computer Science', 'Abdul Wahab 51225\r\n\r\n\r\n\r\n', 'Mr Miraj Gul'),
(103, 'Smart Crop Protection System', 'Fall-2018', 'Bachelor of Studies in Computer Science', 'Kinza Maheen 51287\r\n\r\n', '\r\nMr. Miraj Gul'),
(104, 'PARKED BIKE LOCATOR', '2018-2022', 'Bachelor of Studies in Computer Science', 'Abdul Wahab 51225\r\n\r\n\r\n', 'Mr Miraj Gul'),
(105, 'Vehicle Tracking System', 'Fall-2018 Spring 2022', 'Bachelor of Studies in Computer Science', 'Haseeb Ahmad Roll No: 51274-F18\r\n\r\n', 'Mr. Zulfiqar Ahmad'),
(106, 'VULNERABILITY RECOMMENDATION TOOL FOR', 'Fall-2018 Spring 2022', 'Bachelor of Studies in Computer Science', 'Huzzefa Bin Nafees Roll no: 51278-F18\r\n', '\r\nHizbullah khattak'),
(107, 'THALASSEMIA INFORMATION SYSTEM APP', '2018-2022', 'Bachelor of Studies in Computer Science\r\n\r\n\r\n\r\n\r\n', 'Hamda Arif 51265', 'Mr. Miraj Gul '),
(108, 'FIUMAN RESOURCE MANAGEMENT SYSTEM', '2019-2023', 'Bachelor of Studies in Computer Science', 'Mubammad Asad Khan 57087', 'Mr Asif Umer'),
(109, 'INSTITUTE ENTRY CHECKER THROUGH FACE', 'Fall-2019 Spring 2023', 'Bachelor of Studies in ‘Computer Science', 'Syed Saad Ahmad (57136-F19)\r\nMuhammad Sadeeq {57100-F19)', 'Dr. Zulfiqar Abmad'),
(110, 'Interactive Hindko and Urdu Learning APP for Kids', 'Fall-2019 Spring 2023', 'Bachelor of Studies in Computer Science', 'Muhammad Rashid 57143-F19\r\nMuhammad Shaheer 57101-F19\r\nMahjabeen 57076-F19', 'Dr. Faisal Bahadur'),
(111, 'PIXEL DUNGEON ANDROID APP', '2018-2023', 'Bachelor in Computer Science', 'Ahsan Iqbal (51239)', 'Dr. Zulfiqar Ahmad\r\n'),
(112, 'ANWER-E-MUSTAFA DIGITAL MOSQUE SYSTEM', '2018-2022', 'Bachelor of Studies in Computer Science', 'Hamza Khan Roll no: 51268\r\n\r\n\r\n', 'Mr. Zulfiqar Ahmad'),
(113, 'THE DEATH DRIVE RACING GAME', '2018-2022', 'Bachelor of Studies in Computer Science', 'Mubasher 51296\r\n', '\r\nTayyaba Bibi'),
(114, 'AUTOMATIC BELL SYSTEM', 'Session (Fall 2018 — Spring2022)\r\n\r\n', 'Bachelor of Studies in Computer Science ', 'Arif Ullah khan 51250', 'Mr’s Romana saleem'),
(115, 'Android App for Image Recognition', 'Session (Fall 2018 - Spring 2022)', 'Bachelor in Computer Science', '\r\n\r\nHassan Zaib 51276\r\n\r\n\r\n', '\r\nMr. Amanullah Baloch'),
(116, 'Arduino based Automatic Plant Watering System', 'Session (Fall 2018 - Spring 2022)\r\n\r\n', 'Bachelor of Studies in Computer Sciences\r\n', 'Umar khan 51356', 'Mr. Asif Umer'),
(117, 'Advance Tourism System for kohistan', '2018-2022', 'Bachelor of Studies in Computer Sciences', 'Noor Din Shah 51312', 'Mr. Hizbullah Khattak'),
(118, 'Water Quality Monitoring System Using', 'Session (Fall 2013- Spring 2022)\r\n', 'Bachelor of Studies in Computer Sciences', 'Syed Usman Haider 51319', 'Mr. Zulfiqar Ahmad'),
(119, 'Redesign of Website .', 'Fall 2018 Spring 2024', 'bscs', 'Mushaid Hussan Shah', 'Faisal Bahadur'),
(120, 'SELF DRIVIMG CAR IN SIMULATION', 'Session (Spring 2018 — Fall 2021)', 'Bachelor of Studies in Computer Science', 'Zabih Ullah 51363\r\n\r\n\r\n', 'Dr. Syed Hammad Sherazi'),
(121, 'Data Summuarization Using NLP', 'Session (Fall 2018- Spring 2022)', 'Bachelor of Studies in Computer Science', 'Sajid Bashir 51321', 'Dr. Hammad Sherazi'),
(122, 'DIGITAL INSTALLMENT SERVICES', 'Fall 2018 Spring 2022', 'Bachelor of Studies in Computer Science', 'Muhammad Jibran', 'Assistant Professor, Faisal Bahadur'),
(123, 'Air Craft War Game', '\r\nSession (Fall 2018 - Spring 2022)\r\n', 'Bachelor of Studies in Computer Science', 'Tayyab Rasheed 51353', 'Mr. Asif Umer'),
(124, 'Air Pollution and Temperature Sensing', '2018-2022', 'BSCS', 'Syed Arsalan Ali Shah Kazmi', 'Mr. Ghulam Mustafa'),
(125, 'Blind Walking Stick Using Arduino', '2018-22', 'BSCS', 'zain ur rehman', 'Mr Ibrar Afzal'),
(126, 'Hacking Mini Game', '2018-2022', 'BSCS', 'Osama Manzoor', 'Dr Hizbullah Khatak'),
(127, 'Exercise Monitoring system using kinect device\r\n', 'fall 2018-spring 2022', 'BSCS', 'sami ullah', 'Mr Ibrar Afzal'),
(128, 'CHILD IMMUNIZATION SYSTEM', 'Session (Fall 2018 — Spring 2022)', 'Bachelor of Studies in Computer Science', 'Sharif Ullah 51334', 'Dr. Hizbullah Khattak'),
(129, 'UFM MANAGEMENT SYSTEM', 'Fall-2019', 'BSSE', 'Nosheen Fariq 56939', 'Mr. Imran Khan'),
(130, 'TEXT EXTRACTOR', '2019-2023', 'Bachelor of Studies In Software Engineering', 'Tayyab Zaheer 56907-F19\r\nHamza All Liaqat 56889-FI9\r\nHamza Mazhar 56917-FI9\r\n\r\n', 'Mr. Miraj Gul'),
(131, 'TOY EXCHANGE APP', '(Session 2019-23)', 'BSSE', 'Muhammad Usman 56938-F19', 'Mr. Asif Umar'),
(132, 'SYLLABUS MANAGEMENT SYSTEM', '2019-2023', 'Bachelor of Studies in Software Engineering', 'Noor U Saba 56902-F19', 'Dr. Fasil Bahadur'),
(133, 'SPACE SHOOTER GAME', '2019-2023', 'BSSE\r\n\r\n', '\r\nJibran Khan 56922-F19\r\nHaris Iqbal 56894-F19\r\nEman Bibi 56884-F19', 'Mr. Asfandyar'),
(137, 'REALTIME VEHICLE TRACKING APP', '(Session 2019-23)', 'BSSE', 'Younis Yousaf 56954\r\nzaid Mushtaq 56956\r\nMuhammad Muzamil Zeb 56936', 'Mr. Faqir Gul'),
(138, 'Premium Services Web Application', '2019-2023', 'Bachelor In Software Engineering', 'Talmoor Ayaz 56946-F19\r\nIbrahim shahzad 56968-f19', 'Mr. Amanullah Baloch'),
(139, 'Price Comparison Android Application', '2019-2023', 'Bachelor of Studies in Software Engineering', 'Yusra Sajid S610-F19\r\nSawaira Azhar 56905-FI9\r\nRimsha Arif 56904-F19\r\n\r\n\r\n', 'Dr. Zalfiqar Ahmed'),
(140, 'Product Distribution System Mobile Application', '2019-2023', 'Bachelor of Studies in Software Engineering', 'Bahar Ahmad 56a82-Ft9\r\nArooba Khurshid 56876-F19\r\n\r\n\r\n', 'Mr. Asif Umer'),
(141, 'EVENTS PLANNER', '2019-2023', 'Bachelor of Studies in Software Engineering 7', 'Muhammad Ali 56933\r\nSardar Wall 56943\r\nMuhammad Osama 56937\r\n', 'Mrs. Romana Saleem Khan'),
(142, 'J’S HOME RENOVATION SERVICE PORTAL', '2019-2023', 'Bachelor of Studies in Software Engineering', 'Ihtisham Ul Haq 56899-F19\r\nHazarat Hilal 56896-F19', 'Dr. Faisal Bahadur'),
(143, '1Q++ Desktop Game', '2019-2023', 'Bachelor of Studies in Software Engineering', 'Husnain Jamshed\r\nAhmed Rehman ', 'Mrs. Romana Saleem'),
(144, 'HOSTEL FINDER AND MANAGEMENT SYSTEM', '(Fall 2019 Spring 2023)\r\n\r\n\r\n\r\n\r\n\r\n', 'Bachelor of Studies in Software Engineering', 'Hanzla Khan 569!\r\nHamza Baig 56850\r\nLuqman Khan 5692', 'Ghulam Mustafa'),
(145, 'GAT(CS) Trainer App', '2019-2023', 'Bachelor in Software Engineering', 'Hamza Sher 56893-F19\r\nAhmad Khan 56868-F19\r\n\r\n', 'Imran Khan'),
(146, 'FACE MASK DETECTION SYSTEM \'', '2019-2023', 'BSSE', 'Hamza Khan 56916', 'Dr. Hammad Sherazi'),
(147, 'DIGITAL SCHOOL DIARY', '2019-2023', '\r\n\r\n\r\nBachelor of Studies in Software Engineering\r\n\r\n', 'Muzammil Javaid 56982-F19\r\n\r\nMuhammad Hussain 56935-F19\r\n\r\nMuhammad Ibrahim Malik 56975-F19', 'Dr. Hizbullah Khattak'),
(148, 'CAMPUS NAVIGATION SYSTEN', '(Session 2019-23)\r\n\r\n\r\n\r\n\r\n', 'BSSE', 'Misbah Naseem 56928-F19\r\nRimsha Rafique 36940-F19', 'Mr. Amanullah Baloch'),
(149, 'CAR DETAILING SERVICE', '(2019-23)\r\n\r\n\r\n', 'BSSE', 'Abdel Muhim 56861-FI9\r\nNazma Amir 56901-F19', 'Dr. Faisal Bahadur'),
(151, 'CHILD VACCINATION', '2019-23\r\n\r\n\r\n\r\n', 'BSSE', 'Imran Khan 56969\r\nUsama Irshad 56950\r\nHamid Ali 56995', 'Ghulam Mustafa Assad'),
(152, 'CRICKET SCORER APPLICATION', '2019-2023', 'Bachelor of Studies In Software Engineering', 'Amad ud Din 56915-F19\r\nMashad Zaman 56926-F19\r\nAhmad Waheed 56871-F19', 'Mr. MiraJ Gul'),
(153, 'BLOOD DONATION APPLICATION', '2019-23)\r\n\r\n', 'BSSE', 'Safdar Majeed 56987\r\nMehran Uddin 57174\r\nSalman Khan 56990', 'Ghulam Mustafa Assad'),
(154, 'ACCIDENT ALERT AND', '2019-23\r\n\r\n\r\n\r\nHamza Naseer 56891-F19\r\nHaider Abbas 56887-FI9', 'BSSE', 'Hamza Naseer 56891-F19\r\nHaider Abbas 56887-FI9', 'Mr. Asif Umer'),
(155, 'CATTLE FARM (E-COMMERCE WEBSITE)', '2019-2023', 'Bachelor of Studies in Computer Science ', 'Nageen Noor 57046-F19\r\nMaryam Rafique 57044-F19\r\n', 'Mr, Amanullah Baloch'),
(156, 'Contract Handling System', '2019-2023', 'Bachelor of Studies In Computer Science', 'Syed Umar Sheerazl 57137\r\nMuneeb Ur Rahman 5705', 'Syed Umar Sheerazl 57137\r\n\r\n\r\n\r\nMrs. Romana Saleem'),
(157, 'Voice Based Train Automatic System', '2019-2023', 'BSSE', 'Shahid Hussain 56987-FI9\r\nYounas Ali Shah\r\ntehar Ullah 56970-F19', 'Dr. Zulfiqar Ahmad'),
(158, 'KPK TOURISM APPLICATION', '2019-2023', 'Bachelor of Studies in Computer Sciences\r\n\r\n\r\n\r\n', 'Farrukh Jawad 536676S19\r\nHasseb ur Rehman 536724S19', 'Mr. Asif Umer'),
(159, 'Traffic Signs Recognition and Classification Using Convolutional Neural Network\r\n\r\n\r\n', 'Session (2019-2023)', 'BSCS', 'Saad Bin Saeed \r\nAnas\r\nHasnain Shah', 'Dr. Mushtaq Ali'),
(160, 'Shooter unity 3D Game Space', '2019-2023', 'Bachelor of Studies In Computer Sclence', 'Hamsa Rofiqae 57146-F19', 'Dr. Faisal Bahadur'),
(161, 'UNIVERSITY VEHICLE TAGING SYSTEM', '2019-2023', 'Bachelor of Studies in Computer Sciences', 'Abdul Haseeb 57010-F19\r\nAbdul Wahid Khan S7011-FI9\r\nAbdullah Khan 57012-F19', 'Mr. Asif Umer'),
(162, 'URDU TALKER\r\n(Android Application)\r\n\r\n\r\n\r\n\r\n\r\n', '2019-2023', 'BSCS', 'Amira Sakhawat 3011-2103\r\nFizza Batoo! 3011-2101\r\nAssad Rehman 57030-F19', 'Dr. Faisal Bahadur'),
(163, '‘Wi-Fi Router Information Tracer App', '2019-2023', 'Bachelors In Computer Sciences\r\n\r\n\r\n\r\n\r\n', '\r\nKashif Ali Khan 19-BCS-HU-9033\r\nMuhammad Anas __ 19-BCS-HU-9046\r\nLaiq Muhammad 19-BCS-HU-9034', 'Dr. Hizbullah Khattak '),
(164, 'Puzzle Game Using Hand Gesture', 'Session (Spring 2019~ Spring 2023)', 'Bachelor of Studies In Computer Science', 'Sardar Jawad Mazhar 53699-S19', 'Mr. Hizbullah Khattak'),
(165, 'Venue Recommendation and Booking Application', '2019-2022', 'Bachelor in Software Engineering', 'Muhammad Anas 54156 -S18', 'Mr, Faqir Gul'),
(166, 'Voice Based Notice Board Using Android', 'Session (Fall 2018- Spring 2022)\r\n', 'Bachelor of Studies in Computer Sciences', 'Muhammad Hassam 51302', 'Mr. Ibrar Afzal'),
(167, 'PUBBLE SHOOTER GAME', 'session(2018-2022)', 'BSCS', 'Hashim Khan 51275', 'Mr. Faisal Bahadur'),
(168, ' Vehicle Distance Measurement & Alert System', '2018-2021', 'Bachelor of Studies In Computer Science', 'Mian Ayaz Afzal + 51294', 'Mr. Asif Umar'),
(169, 'COVID-19 Prediction from Chest X=Ray Images', '2018-2022', 'Bachelor of Studies in Computer Science', 'Syed Touseeq Aluacd 51346', 'Hammad Sherazi'),
(170, 'EXERCISE MONITORING SYSTEM', 'Fall-2018', 'BSCS', 'Sami Ullah _ 31322', 'Mr. Ibrar Atzal'),
(171, 'Math Quiz Game', '(2018-22)', 'BSCS', 'Sheikh Zohaib Ur Rehman —-51337-F18', 'Mr, Miraj Gul'),
(172, 'Motion Detector and Alarm Services', '2018-2022', 'Mian Muhammad Abbas 51293-F18', 'Mian Muhammad Abbas 51293-F18', 'Mr. Zulfiqar Ahmed'),
(173, 'POWER SAVING AUTOMATIC AND VARIABLE', '2018-2022', 'Bachelor of Studies in Software Engineering', 'Saad Abdullah Roll No. 52351\r\n\r\n\r\n\r\n', 'Faisal Bahadur'),
(174, 'Medicine Reminder Androld Application', '2018-2022', 'Bachelor of Studies In Computer Sciences', 'Seemab Fayyaz 5U328:F 18\r\n\r\n\r\n', 'Mr. Zulfiqar Ahmed'),
(175, 'Easy Travel', 'Session (2018-22)', 'BSCS', 'Amir Hamza Zeb 51247', 'Mr.Faqir Gul'),
(176, 'Deliver food in running train', 'Fall-2018', 'BSCS', 'Moazam Ali 595', 'Ms. Romana Saleem'),
(177, 'HOUSE RENTAL SYSTEM', 'Session (Fall 2018 - Spring 2022)', 'Bachelor of Studies in Computer Science', 'Gulfam', 'Ibrar Afzal'),
(178, 'Keyboard Jumping Game', '(Fall 2018-Spring 2022)', 'Bachelor of Studies io Computer Science', 'Sheryar Ali 51339', 'Mr. Ghulam Mustafa Assad'),
(179, 'LED GESTURE CONTROL BICYCLE INDICATOR GLOVE', 'Session (Fall 2018-Spring 2022)\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'BSCS', 'Abd Ur Rashid 51220', 'Mr. Asif Umar'),
(180, 'JUMPING HIPHOP GAME', '2018-2022', 'BSCS', 'Usama Majtaba 51358\r\n\r\n', 'Zulfiqar Ahmed'),
(181, 'IOT Based Streetlight & Selar Tracker System', 'Session (Fall 2018-Spring 2022)', 'BSCS', 'Usama Naeem 51359', 'Sir Ibrar Afzal'),
(182, 'DETECTION SYSTEM FOR PLANT DISEASE USING\r\nDEEP LEARKING TECHNIQUES\r\n', '2018-2022', 'BSCS', 'Abdal Haseeb 51222', 'Mr Mushtaq Ahmed'),
(183, 'Lost Adventure Game', 'Bachelor in Computer Science\r\n\r\n\r\n\r\n', 'Bachelor in Computer Science', 'Muhammad Umair 51306', 'Mr,Hizbullah Khattak'),
(184, 'Cow Boy Horse Riding', 'Session (Spring 2018-Fall 2022)', 'BSCS', 'Abdullah Malik 51227', 'Mr Miraj Gul'),
(185, 'BRIGHTNESS AND VOLUME CONTROLLER BY GESTURES', '2018-2022', 'Bachelor of Studies in Computer Science', 'Afnad Khan 51235\r\n\r\n\r\n', 'Mr. Faqir Gul'),
(186, 'MULTIPLE PATIENT’S HEART BEAT MONITORIN', '\r\nSession (Fall 2018 — Spring 2022)', 'Bachelor of Studies in Computer Science', 'Shabbir Ahmad 51329', 'Dr. Mushtaq Ahmad'),
(187, 'Memory Puzzle Game', '2018-2022', 'BSCS', 'Sardar Abdul Rehman 51325', 'Mr, Asfandyar'),
(188, 'Glowing Indicator By Detecting Movement of Car', '2018-2022', 'Bachelor of Studies in Compater Sciences', 'Arslan Usman 51251', 'Maam Tayyba bibi'),
(189, 'Explore Hazara Application', '2018-2022', 'BSCS\r\n', 'Haris Ali 51273-F18', 'Mr. Miraj Gull'),
(190, 'EMPLOYEE TRACKING SYSTEM', 'Session (Fall 2018- Spring 2022)\r\n\r\n\r\n\r\n\r\n\r\n', 'Bachelor of Studies in Computer Sciences', 'Adeel Rouf 51230-F18', 'Maam Tayyba Bibi'),
(191, 'ONLINE CAKE SHOP SYSTEM', '2018-2022', 'BSCS', 'Abdul Rehman 51224 ', 'Mr, Asif Umer'),
(192, 'Automatic Question Paper Generator', 'Fall-2018', 'Bachelor of Studies in Computer Sciences', 'Muhammad Waleed $1308-F18', 'Mr. Ibrar Afzal'),
(193, 'Hospital Recommendation For FATA (Kurram) Patients', '2018-2022', 'Bachelor of Studies in Computer Sciences', 'Sarfaraz Hussain 51326', 'Mr Faqir Gul'),
(194, 'CARROM BOARD GAME WITH ARTIFICIAL INTELLIGENCE\r\n\r\n\r\n', '(Fall 2018-Spring 2022)', 'BS in Computer Science', 'Shafgat Hussain 51331', 'Mr. Amanullah Baloch'),
(195, 'MONITORING AND DELETING FAKE REVIEWS', '2019-2022', 'Bachelor of Studies in Computer Science', 'Shams Ur Rahman 57130-F19\r\nMashood Niaz 512: 1-F18\r\nRizwan Ali SI117-F19', 'Dr Hammad Sharazi'),
(196, 'CHILD IMMUNIZATION SYSTEM', 'Session (Fali 2018-Spring 2022\r\n\r\n\r\n\r\n', 'Bachelor of Stadies in Computer Science', 'Sharif Ullah 51334', '\r\n\r\nDr. Hizbullah khattak'),
(197, 'THE GARDENER APP\r\n\r\n\r\n\r\n\r\n', 'Session 2019 2023', 'Bachelor of Studies in Software Engineering', '\r\nSAEED 54161-S19\r\nMUHAMMAD WAHEED 541€0-S19\r\nYASIR KHAN 54172-S19\r\n\r\n', 'Sir. Faisal Bahadur'),
(198, 'TOY EXCHANGE APP', '(Session 2019-23)', 'BSSE', 'Mohammad Usman 56938-F19', 'Mr Asif Umar'),
(199, 'ONLINE TUTOR FINDER', '2019-2023', 'Bachelor in software engineering (BSSE)', 'SHAHMEER MALIK 56992-F19', 'Mr Ibrar Afzal'),
(200, 'Online Printing System', '2019-2023', 'BSSE\r\n\r\n\r\n', 'Abdur Razzaq 56864-F19\r\nMamoon Ur Rasheed 56925-F19', 'Mr. Asfandyar'),
(201, 'ONLINE SEARCHING FOR FYP', '2019-2023', 'Rehman Ali 56986\r\nFawad Nasir 56997\r\n', 'Rehman Ali 56986', 'Amanullah Baloch'),
(202, 'Online 3D Multiplayer Hunter Game', 'Session 2019-2023', 'Bachelor In Softwar Engineering', 'Saif ur Rehmau 56988-F19\r\nSheryar Khan 56993-F19', 'Mr, Asif Umar'),
(203, 'ONLINE COMPLAINT MANAGEMENT', '(Session 2019-23)\r\n\r\n', 'BSSE', '\r\nIshtiaq Yousaf 56920\r\nAbdullah Khan 56863', 'Mr. Miraj Gul'),
(204, 'CAR DASHCAM\r\n(Android Application)', 'Session (2019 - 2023)', 'Bachelor of Studies in Software Engineering\r\n\r\n\r\n\r\n\r\n', 'Qazi Usama Shahid 56903\r\nAhmed Ali 56870', 'Dr. Faisal Bahadur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_tbl`
--
ALTER TABLE `detail_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_tbl5`
--
ALTER TABLE `detail_tbl5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_tbl`
--
ALTER TABLE `detail_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `detail_tbl5`
--
ALTER TABLE `detail_tbl5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
