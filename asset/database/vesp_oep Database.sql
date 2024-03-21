-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 05:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vesp_oep`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_test_details`
--

CREATE TABLE `class_test_details` (
  `subject` varchar(100) DEFAULT NULL,
  `class_test` varchar(5) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `co1` varchar(2) DEFAULT NULL,
  `co2` varchar(2) DEFAULT NULL,
  `co3` varchar(2) DEFAULT NULL,
  `co4` varchar(2) DEFAULT NULL,
  `co5` varchar(2) DEFAULT NULL,
  `co6` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_test_details`
--

INSERT INTO `class_test_details` (`subject`, `class_test`, `exam_date`, `start_time`, `end_time`, `co1`, `co2`, `co3`, `co4`, `co5`, `co6`) VALUES
('est', 'ct1', '2024-03-18', '11:06:00', '17:06:00', '0', '0', '5', '9', '6', '0'),
('mgt', NULL, '2024-03-12', '19:43:00', '19:44:00', NULL, NULL, NULL, NULL, NULL, NULL),
('bsc', NULL, '2024-03-13', '09:00:00', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_ajp`
--

CREATE TABLE `ct_qb_ajp` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_asc`
--

CREATE TABLE `ct_qb_asc` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_bee`
--

CREATE TABLE `ct_qb_bee` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_bsc`
--

CREATE TABLE `ct_qb_bsc` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_est`
--

CREATE TABLE `ct_qb_est` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ct_qb_est`
--

INSERT INTO `ct_qb_est` (`sr_no`, `co_map`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
('1', 'co3', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b'),
('2', 'co3', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a'),
('3', 'co3', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a'),
('4', 'co3', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a'),
('5', 'co3', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a'),
('6', 'co4', 'The harmful materials in environment are called__________.', 'a) Harmtants', 'b) Pollution', 'c) pollutants', 'd) Polants', 'c'),
('7', 'co4', 'Basic types of pollutions are______', 'a) Natural pollutions', 'b) Man-made pollutions', 'c) Both a) and b)', 'd) Animal Made polution', 'c'),
('8', 'co4', 'Which of the following is not a Natural pollution?', 'a) Automotives', 'b) Volcano eruption', 'c) Forest fire', 'd)Sea salt Particals', 'a'),
('9', 'co4', 'Landfill of waste is basically a _________pollution', 'a) Land', 'b) Noise', 'c) Sewage', 'd) Water', 'a'),
('10', 'co4', 'Causes of land pollution are..........', 'a) Industrialization', 'b) Mining', 'c) Agriculture', 'd) All of the above', 'd'),
('11', 'co4', 'The Negative Impact Of Land Pollution is ______', 'a) Soil erosion', 'b) Shifting of habitat', 'c) Water pollution', 'd) All of the above', 'd'),
('12', 'co4', 'Which of the following is not a type of impurities of water.?', 'a) Pollen', 'b) Colloidal', 'c) Dissolved', 'd) Bacteriological', 'a'),
('13', 'co4', 'Need of water treatment is', 'a) To remove dissolved gases', 'b) To remove dissolved oxygen', 'c) To enhance odour', 'd) To enhance colour', 'a'),
('14', 'co4', 'The object of coagulation is.....', 'a) To remove suspended particles', 'b) To remove colloidal particles', 'c) To remove dissolved particles', 'd) To remove bacteria', 'b'),
('15', 'co4', 'On earth ________ is freshwater.', 'a) 3 %', 'b) 4 %', 'c) 5 %', 'd) 6 %', 'a'),
('16', 'co4', 'Effects of water pollution on human beings are________', 'a) Typhoid', 'b) HIV', 'c) Dengue', 'd) Plague', 'a'),
('17', 'co4', 'Spring is a _________ source of water.', 'a) Surface', 'b) Sub-surface', 'c) Both a) and b)', 'd) All of the above', 'b'),
('18', 'co4', 'The impact of waste water on environment is........', 'a) Noise pollution', 'b) Nuisance', 'c) Diseases', 'd) Air pollution', 'b'),
('19', 'co4', 'Which of the following is not a tertiary treatment of wastewater?', 'a) FIltration', 'b) Removal of nutrients', 'c) Chlorination', 'd) Aeration', 'd'),
('20', 'co4', 'Which of the following is not a water born disease?', 'a) Jaundice', 'b) Cholera', 'c) Plague', 'd) Amoebioasis', 'c'),
('21', 'co4', 'Which of the following is not a primary pollutant of air pollution?', 'a) Ash', 'b) Pollen', 'c) Smoke', 'd) Smog', 'd'),
('22', 'co4', 'Which of the following is not a secondary pollutant of air pollution?', 'a) Acid rain', 'b) Ozone', 'c) Smog', 'd) Dust', 'd'),
('23', 'co4', 'Effects of air pollution on environment is_____', 'a) Global warming', 'b) Acid rain', 'c) Green house effect', 'd) All of the above', 'd'),
('24', 'co4', 'The particulate matter suspended in air______', 'a) Dust', 'b) Pollen', 'c) Liquid droplets', 'd) All of the above', 'd'),
('25', 'co4', 'Settling chambers collecting dust of size________.', 'a) > 10µm', 'b) < 10µm', 'c) = 10µm', 'd) =100 µm', 'a'),
('26', 'co4', 'Gaseous pollutants are controlled by_____', 'a) Absorption', 'b) Adsorption', 'c) Cumbustion', 'd) All of the above', 'd'),
('27', 'co4', 'The permissible range of sound after 10 P.M. for residential area is____', 'a) 60 - 100', 'b) 70 - 100', 'c) 80 - 100', 'd) 90 - 100', 'a'),
('28', 'co4', 'The permissible range of sound after 2.5 A.M. for residential area is____', 'a) 30 - 60', 'b) 40 - 60', 'c) 50 - 60', 'd) 60 - 70', 'b'),
('29', 'co4', '­­­­­­­_______is a process where gases, vapors or liquids are concentrated on a solid surface', 'a) Absorption', 'b) Adsorption', 'c) Cumbustion', 'd) Decomposition', 'b'),
('30', 'co4', 'The World Health Organization (WHO) defines noise above _________ (dB) as noise pollution.', 'a) 45 decibels', 'b) 55 decibels', 'c) 65 decibels', 'd) 75 decibels', 'c'),
('31', 'co4', 'Which of the following is not a physiological effect on human beings?', 'a) Rise in blood pressure', 'b) Reduction in vision', 'c) Heart pain', 'd) damage nerve system', 'd'),
('32', 'co4', 'Artificial sources of noise pollution are....', 'a) Thunder', 'b) Land slides', 'c) Earth quake', 'd) None of the above', 'd'),
('33', 'co4', 'Which of the following is not a solid waste?', 'a) Rubber', 'b) cloth', 'c) wastewater', 'd) paper', 'c'),
('34', 'co4', 'High level radioactive waste can be managed in which of the following ways?', 'a) Open dumping', 'b) Incineration', 'c) Composting', 'd) Deep burial', 'd'),
('35', 'co4', 'Which of the following is a biodegradable waste?', 'a) Plastic', 'b) Polythene', 'c) Glass', 'd) None of the above', 'd'),
('36', 'co4', 'Biomedical waste may be disposed of by?', 'a) Incineration', 'b) Autoclaving', 'c) Landfilling', 'd) Both a) and b)', 'd'),
('37', 'co4', 'Which of the following is a biodegradable organic chemical/substance?', 'a) Plastic', 'b) Oil', 'c) Pesticide', 'd) Garbage', 'd'),
('38', 'co4', 'Which one the following is not biodegradable?', 'a) Vegetable waste', 'b) Fruit waste', 'c) Leaves', 'd) Aluminium foil', 'd'),
('39', 'co4', 'Which of the following is not a Municipal solid waste?', 'a Market waste', 'b Agriculture waste', 'c ) Domestic waste', 'd) Commercial waste', 'b'),
('40', 'co4', 'Municipal solid waste includes...', 'a) Domestic waste', 'b) Commercial waste', 'c) Institutional waste', 'd) All of the above', 'd'),
('41', 'co4', 'The highest heating valve is of:', 'a) Garbage', 'b) Rubbish', 'c)Hospital waste', 'd) Industrial waste', 'b'),
('42', 'co4', 'Average generation rate of MSW is considered as.....', 'a) 0.4 Kg/capita/day', 'b) 0.8 Kg/capita/day', 'c) 1.0 Kg/capita/day', 'd) 0.2 Kg/capita/day', 'a'),
('43', 'co4', 'Which of the following is not a component of Sanitary Landfill?', 'a) Liner', 'b) Water monitoring well', 'c) Autoclaving', 'd) Leachate management facility', 'c'),
('44', 'co4', 'Which of the following is a likely characteristic of hazardous waste?', 'a) Ignitability', 'b) Corrosively', 'c) Reactivity', 'd) Any of the above', 'd'),
('45', 'co4', 'Sources of sound pollution by defence activities includes:', 'a) Satellite launching', 'b) Missile launching', 'c) Bomb', 'd) All of the above', 'd'),
('46', 'co4', 'The unit of sound is:', 'a) decibel', 'b) Maribel', 'c) Sensible', 'd) Pedicel', 'a'),
('47', 'co4', 'Near the airport the noise pollution level is above ­­­­_____', 'a) 100 dB', 'b) 150 dB', 'c) 200 dB', 'd) 250 dB', 'b'),
('48', 'co4', 'As per Central Pollution Control Board (CPCB) the permissible noise level at night in residential areas is:', 'a) 65dB', 'b) 55 dB', 'c) 45 dB', 'd) 35 dB', 'c'),
('49', 'co4', 'Primary treatment of sewage includes:', 'a) Screening', 'b) Grit removal', 'c) Primary clarifier', 'd)Allof the above', 'd'),
('50', 'co4', 'Types of grit in sewage treatment includes:', 'a) Sand', 'b) Silt', 'c) Egg shell', 'd) All of the above', 'd'),
('51', 'co4', '_______can be used to remove the nitrates.', 'a) renitrification', 'b) gentrification', 'c) denitrification', 'd) Regentrification', 'c'),
('52', 'co4', 'The BOD content of treated sewage should not be more than ____ mg/l.', 'a) 10', 'b) 20', 'c) 30', 'd)40', 'a'),
('53', 'co4', 'processes to remove gaseous pollutants by dissolution into a liquid solvent such as water is called as:', 'a) Adsorption', 'b) Absorption', 'c) Combustion', 'd) Decomposition', 'b'),
('54', 'co4', 'The particulate matter is controlled by:', 'a) Cyclone', 'b) Settling chamber', 'c) Scrubber', 'd)All of the above', 'd'),
('55', 'co4', 'Smog is:', 'a) A natural phenomenon', 'b) A combination of smoke and fog', 'c) Is colourless', 'd) All of the above', 'd'),
('56', 'co4', 'Fluoride pollution mainly affects:', 'a) Kidney', 'b) Brain', 'c) Heart', 'd) Teeth', 'd'),
('57', 'co4', 'Which of the following is a non-point source of water pollution?', 'a) Factories', 'b) Sewage treatment plants', 'c) Urban and suburban lands', 'd)Marine dumping', 'c'),
('58', 'co4', 'Which of the following is not a marine pollutant?', 'a) Oil', 'b) Plastic', 'c) Dissolved oxygen', 'd) Sewage Water', 'c'),
('59', 'co4', 'Fugitive emissions consist of', 'a) Street dust', 'b) Dust from construction activities', 'c) Dust from farm cultivation', 'd) All of the above', 'd'),
('60', 'co4', 'Noise is ---------------------', 'a) Huge sound', 'b) Sound of vehicles', 'c) Undesirable and unwanted sound', 'd) Sound of crackers', 'c'),
('61', 'co4', 'The presence of solid, liquid or gaseous compounds, in excess concentration in the atmosphere is', 'a) Radioactive pollution', 'b) Soil pollution', 'c) Water pollution', 'd) Air pollution', 'd'),
('62', 'co4', 'What is ‘temporary threshold shift’ ?', 'a) Hearing loss due to excessive noise', 'b) Noise that is bearable', 'c) Tolerable noise', 'd) Noise below tolerance', 'a'),
('63', 'co4', 'Which of the following is an air pollutant?', 'a) Nitrogen', 'b) Carbon dioxide', 'c) Carbon monooxide', 'd) Oxygen', 'c'),
('64', 'co4', 'The Pollution Standard Index (PSI) scale has span from', 'a) 0 - 200', 'b) 0 - 300', 'c) 0 - 400', 'd) 0 - 500', 'd'),
('65', 'co4', 'Which of the following is not an air pollutant ?', 'a) Smoke', 'b) CO2', 'c) Nitrogen gas', 'd) Sulphur dioxide', 'c'),
('66', 'co4', 'Which of the following problems is not created by noise pollution ?', 'a) Diarrhoea', 'b) hypertension', 'c) Deafness', 'd) Irritation', 'a'),
('67', 'co4', 'A combination of smoke, fog and chemical pollutants seen in industrialized', 'a) Sole', 'b) Smog', 'c) Fallouts', 'd) Fog', 'b'),
('68', 'co4', 'Air pollution is caused by', 'a) Smoke', 'b) Insecticides', 'c) Sewage', 'd) Loud speaker', 'a'),
('69', 'co4', 'Which of the following is not a primary pollutant?', 'a) SO2', 'b) Volcanic ash', 'c) O3', 'd) CO2', 'c'),
('70', 'co4', 'Which of the followings is not the physical characteristics of MSW?', 'a) Density', 'b) Moisture content', 'c) pH', 'd) Porosity', 'c'),
('71', 'co4', 'Which of the followings is not the chemical characteristics of MSW?', 'a) Field capacity', 'b) Carbon', 'c) Nitrogen', 'd) Potassium', 'a'),
('72', 'co4', 'Calorific value is ______characteristics of MSW.', 'a) Physical', 'b) Chemical', 'c) Biological', 'd)Electrical', 'b'),
('73', 'co4', 'Bird menace above dump site affects aircrafts is.....', 'a) Public health impact', 'b) Environmental impact', 'c) Social Impact', 'd) Ethical Impact', 'b'),
('74', 'co4', 'Sanitary landfilling is....', 'a) Engineered method', 'b) Dumping', 'c) landfilling', 'd) Secured Landfilling', 'a'),
('75', 'co4', 'Which of the followings is not a health care facility?', 'a) Mortuaries', 'b) Funeral services', 'c) Path Labs', 'd) Institution', 'd'),
('76', 'co4', 'Biomedical waste contains______ Non-hazardous waste.', 'a) 50 - 75 %', 'b) 75 - 90 %', 'c) 65 - 75 %', 'd) 75 - 80 %', 'b'),
('77', 'co4', 'Followings is /are the composition of biomedical waste', 'a) Plastic', 'b) Paper', 'c) Sharp', 'd) All of the above', 'd'),
('78', 'co4', 'The generation of BMW in India is ____ Kg/bed /day.', 'a) 1 - 2', 'b) 1.5 - 2.5', 'c) 2.5 - 3.5', 'd) 0.8 - 1.5', 'a'),
('79', 'co4', 'Landfill gas contains....', 'a) Methane', 'b) CO2', 'c) NOx', 'd) All of the above', 'd'),
('80', 'co4', 'The landfilling where two liners are provided is called as....', 'a) Sanitary landfilling', 'b) Secured landfilling', 'c) Parallel Landfilling', 'd) Serial Landfilling', 'b'),
('81', 'co4', 'Which of the followings is not the method of BMW management?', 'a) Shredding', 'b) Autoclaving', 'c) Sanitary landfilling', 'd) Deep burial', 'c'),
('82', 'co4', 'Incinerators are ...........projects.', 'a) Eco-friendly', 'b) Digestion', 'c) Composting', 'd) Waste to energy', 'd'),
('83', 'co4', 'Incinerators are designed to operate at high temperature @ more than_____.', 'a) 8500 C', 'b) 18500 C', 'c) 850 C', 'd) 28500 C', 'a'),
('84', 'co4', 'The rate of E-waste generation increases _____every year.', 'a) 5 %', 'b) 15 %', 'c) 20 %', 'd) 10 %', 'd'),
('85', 'co4', 'Incinerators reduce the volume of waste from..........', 'a) 60 to 75 %', 'b) 70 to 85 %', 'c) 80 to 95 %', 'd) 100%', 'c'),
('86', 'co4', 'The by-products of incineration is / are....', 'a) Heat', 'b) Gases', 'c) Ash', 'd) All of the above', 'd'),
('87', 'co4', 'The calorific value of RDF pellets can be around ------ Kcal / Kg.', 'a) 4000', 'b) 400', 'c) 40', 'd) 4400', 'a'),
('88', 'co4', 'If the RDF is used off-site, it is usually densified into pellets through the process of..........', 'a) Pelletization', 'b. b) Carbonation', 'c. c) Stabilization', 'd) Filtration', 'a'),
('89', 'co4', 'Acidification of soil is the effect of.......', 'a) MSW', 'b) E-Waste', 'c) Institutional waste', 'd) Market waste', 'b'),
('90', 'co4', 'complete destruction of toxic wastes possible in..........', 'a) Refused Derived Fuel', 'b) Incineration', 'c) Sanitary landfilling', 'd) Autoclaving', 'b'),
('91', 'co4', 'Which of the followings is not an E-waste?', 'a. a) Cable', 'b) Refrigerator', 'c) Monitor', 'd) Glass', 'd'),
('92', 'co4', 'India ranked --------in the world in generating E-waste.', 'a) second', 'b) third', 'c) fourth', 'd) fifth', 'd'),
('93', 'co4', 'Which of the followings is not a method of E-waste management', 'a) Open dumping', 'b) Dismantling', 'c) Recycling', 'd) Component recovery', 'a'),
('94', 'co4', 'Ash generated from incinerator is used ...........', 'a) as sand', 'b) as decorative material', 'c) as filler material', 'd) in M 30 concrete', 'b'),
('95', 'co5', 'Article 51-A (g) of indian Constitution represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'b'),
('96', 'co5', 'Article 48 A in The Constitution Of India represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'a'),
('97', 'co5', 'It shall be duty of every citizen of India to protect and improve the natural environment including forests, lakes, rivers and wild life and to have __________for living creatures.', 'a) competition', 'b) conquarance', 'c) compassion', 'd) contingence', 'c'),
('99', 'co5', 'The State shall endeavour to protect and improve the environment and to safeguard\n the _____ and ______of the country.', 'a) forest, human life', 'b) human life , wild life', 'c) plants, trees', 'd) forests , wildlife', 'd'),
('100', 'co5', 'Which among the following is Act of Environmental Protection?', 'a) Biological Diversity Act, 2002', 'b) National Green Tribunal Act, 2010', 'c) Batteries (Management and\n Handling) Rules, 2001', 'd) All of the above', 'd'),
('101', 'co5', 'Article 48A was added by the Constitution vide ________Amendment in1976.', 'a) 22 nd', 'b) 32 nd', 'c) 42 nd', 'd) 452 nd', 'c'),
('102', 'co5', 'an ability or capacity of something to be maintained or to sustain itself is known as', 'a) Biodicersity', 'b) Ecology', 'c) Sustainability', 'd) All of the above', 'c'),
('103', 'co5', 'Sustainable Development includes:', 'a) Economical development', 'b) Generate resources', 'c) Maintain balance between human and\n environment', 'd) All of the above', 'd'),
('104', 'co5', 'Which of the following is an aspect of Sustainable Development', 'a) Social', 'b) Environmental', 'c) Economical', 'd) All of the above', 'd'),
('105', 'co5', 'Water management includes:', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'd'),
('106', 'co5', '__________ is a hydrologic process where water moves downward from surface water to groundwater.', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'b'),
('107', 'co5', 'Green Belt Development benefited in', 'a) reducing air pollution', 'b) water conservation', 'c) reduce soil erosion', 'd) All of the above', 'd'),
('108', 'co5', 'Formal environmental education represents education', 'a) within the class room', 'b) outside the class room', 'c) both a) and b)', 'd) None of the above', 'a'),
('109', 'co5', 'mankind needs environmental education for', 'a) environmental pollution', 'b) environmental degradation', 'c) environmental protection', 'd) environmental publication', 'c'),
('110', 'co5', 'Both formal and non-formal environmental education must have _________ goals', 'a) different', 'b) common', 'c) two', 'd) All of the above', 'b'),
('111', 'co5', 'Which among the following is not an Act of Environmental Protection?', 'a) Biomedical Waste (Management\n and handling) Rules, 1998', 'b) Recycled Plastics,\n Plastics Manufacture\n and Usage Rules, 1999', 'c) Construction and\n Demolition Waste\n Management Rules,\n 2016', 'd) Conservation of\n plastic, waste and\n increasing act 2016.', 'd'),
('112', 'co5', 'Administrative framework for environmental protection includes:', 'a) Central pollution\n control Board', 'b) State pollution\n control Board', 'c) Ministry of\n Environment and Forest', 'd) All of the above', 'd'),
('113', 'co5', 'Central pollution control Board is formed to_______', 'a) prevent the\n environmental\n pollution', '\"b) promote the\n environmental\n pollution\"', 'c) practice the\n environmental\n pollution', 'd)All of the above', 'a'),
('114', 'co5', 'Maharashtra Pollution Control Board is established on', 'a) 7 September 1980', 'b) 7 September 1990', 'c) 7 September 1970', 'd) 7 September 1960', 'c'),
('115', 'co5', 'The responsibilities of pollution control board:', 'a) create public\n awareness', 'b) Inspect sewage', 'c) inspect air control\n system', 'd) All of the above', 'd'),
('116', 'co5', 'NGO stands for_____', 'a) Non Governance\n Organization', 'b) Non Government\n Optimization', 'c) Non Government\n Organization', 'd) Non Government\n Organiser', 'c'),
('117', 'co5', 'Supposed to be working not for ‘profit’ but for a ‘cause(s)’ is', 'a) NGO', 'b) CGO', 'c) GOO', 'd) MGO', 'a'),
('118', 'co5', 'Narmada Bachao Andalon is initiated by', 'a) Nana Patekar', 'b) Amir Khan', 'c) Medha Patkar', 'd) Sardar Patel', 'c'),
('119', 'co5', 'the study to predict the effect of a proposed activity/project on the environment is known\n as_____', 'a) Sustainable\n development', 'b) Environmental\n impact assessment', 'c) Environmental\n improvement', 'd) Environmental\n cultivation', 'b'),
('120', 'co5', 'EIA can be seen as a\n ___________', 'a) measuring tool', 'b) product', 'c) multiplying tool', 'd) None of the above', 'a'),
('121', 'co5', 'Any spatial area from which runoff from precipitation is collected and drained\n through a common point or outlet is called', 'a) Green belt', 'b) Rainfall', 'c) Water shed', 'd) Rain water\n harvesting', 'c'),
('122', 'co5', 'The main components of watershed programme :', 'a) water conservation', 'b) soil conservation', 'c) crop management', 'd) All of the above', 'd'),
('123', 'co5', 'National River Linkage Project, Hydropower generation is proposed\n __________.', 'a) About 34,00 MW', 'b) About 44,000 MW', 'c) About 34,000 MW', 'd) About 44,00 MW', 'c'),
('124', 'co5', 'Water shed within crop fields is called as', 'a) Micro water shed', 'b) Small water shed', 'c) Large water shed', 'd) All of the above', 'a'),
('125', 'co5', 'National river linkage project includes, Interlinking of ___ rivers across the country through a\n network of ____ storage dams', 'a) 30, 3000', 'b) 37, 3000', 'c) 40, 3000', 'd) 47, 3000', 'b'),
('126', 'co5', 'Formal environmental education begin at___________.', 'a) research level', 'b) college level', 'c) high school level', 'd) primary school level', 'd'),
('127', 'co5', 'Sustainable Development by solving problems of Environment teached at', 'a) post - research level', 'b) college/ university\n level', 'c) high school level', 'd) primary school level', 'b'),
('128', 'co5', 'Adult education is ____', 'a) Formal education', 'b) Non-formal\n education', 'c) Primary education', 'd) Group education', 'b'),
('129', 'co5', 'GIS stands for', 'a) Geographical\n Information Systems', 'b) Geological\n Information Systems', 'c) Geographical\n Importation Systems', 'd) Geographical\n Information Solutions', 'a'),
('130', 'co5', 'Which of the followings is not an IT tool used for environment and public health.', 'a) Arogya Setu App', 'b) Artificial\n Intelligence', 'c) M S Word', 'd) GIS', 'c'),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_etc`
--

CREATE TABLE `ct_qb_etc` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_ete`
--

CREATE TABLE `ct_qb_ete` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_etee`
--

CREATE TABLE `ct_qb_etee` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_eti`
--

CREATE TABLE `ct_qb_eti` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_etm`
--

CREATE TABLE `ct_qb_etm` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_mem`
--

CREATE TABLE `ct_qb_mem` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_qb_mgt`
--

CREATE TABLE `ct_qb_mgt` (
  `sr_no` varchar(5) DEFAULT NULL,
  `co_map` varchar(5) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_test_code`
--

CREATE TABLE `exam_test_code` (
  `test_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_test_code`
--

INSERT INTO `exam_test_code` (`test_code`) VALUES
('abcd');

-- --------------------------------------------------------

--
-- Table structure for table `fy_ao_students`
--

CREATE TABLE `fy_ao_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_ce_students`
--

CREATE TABLE `fy_ce_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_co_students`
--

CREATE TABLE `fy_co_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_ee_students`
--

CREATE TABLE `fy_ee_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_ej_students`
--

CREATE TABLE `fy_ej_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fy_me_students`
--

CREATE TABLE `fy_me_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `staff_name` varchar(50) NOT NULL,
  `staff_dept` varchar(50) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_password` varchar(255) NOT NULL DEFAULT 'Reset@me',
  `staff_dob` date DEFAULT NULL,
  `security_question` varchar(100) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_name`, `staff_dept`, `staff_email`, `staff_password`, `staff_dob`, `security_question`, `security_answer`) VALUES
('hira rakhunde', 'computer engineering', 'hira.rakhunde@ves.ac.in', '$2y$10$xJFWog2xv3TkfAtViCJUIuti.Uz/K.88nSW5RVn81OhH9fN2P0v6.', '2006-03-06', 'What is your favorite color?', '$2y$10$KjL7lMqwfAAhY5xhjtJfM.xU4KCGXGWBXcbE.BpOe74RvbNewRGHO'),
('jayashree kamble', 'computer engineering', 'jayashree.kamble@ves.ac.in', '$2y$10$qFQVHE/m4dBCAd1qAdfoxek0X68/LC9PzFPUM0eTesNp0Fwl9qtHe', '2024-03-04', 'What is your favorite color?', '$2y$10$T.usv9OSbjxWdL4gV69NEuQVlbQlT0C24k0AnA.E.JngCO9Arw6YS'),
('meena talele', 'co', 'meena.talele@ves.ac.in', 'Reset@me', NULL, NULL, NULL),
('sangita bhoyar', 'co', 'sangita.bhoyar@ves.ac.in', '$2y$10$rK6bEWXTDc0I2PjAO0Pqsuz3k6HoIWJQ8ZzhHwUmEzqcaJDvf9loi', '2006-02-26', 'What is your favorite color?', '$2y$10$dhYVzRaYUrd9evCVNRG7wO3RD48qh.EjjqBg0zo4jgS3ipw4iDEIK'),
('sanjay wankhade', 'computer engineering', 'sanjay.wankhade@ves.ac.in', '$2y$10$2cyjnH9UqsFS9z3gFM138eJmWOA2DYWvnvoc8.pwPoOX9AaKl.t42', '2024-03-06', 'What is your favorite color?', '$2y$10$8EjlFVX/nknO64MHxwCFg.HhLrU.51CBcERfZyPanEmHh/6AIrHsq'),
('shubhangi chintawar', 'computer engineering', 'shubhangi.chintawar@ves.ac.in', '$2y$10$y0VRFE3NVO8OPTnqTHKj6OQ2bO7R7KzQ5AykxRvVuBsChIahsdPCC', '1983-08-25', 'In what city were you born?', '$2y$10$muMLECA0nANFH9kgTXU4AuLp.ywci6L4i6wuyqcSzXKOzFzuV2g.i'),
('vishwas paradkar', 'admin', 'vishwas.paradkar@ves.ac.in', '$2y$10$Wq9SUqjrCdwjRk5uvYq9He0oSa1HoufCdLWKURqYjiAv5vDCKqCWy', '2024-03-06', 'What is your favorite color?', '$2y$10$rIkfkVZRkTwjYoo1pst2aej7H85AAXSUMVko/pnvLTf57tFa2BCLm');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_details`
-- (See below for the actual view)
--
CREATE TABLE `student_details` (
`enrollment_no` decimal(25,0)
,`roll_no` varchar(10)
,`student_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_meta_data`
--

CREATE TABLE `student_exam_meta_data` (
  `enrollment_no` varchar(25) DEFAULT NULL,
  `ip_address` varchar(25) DEFAULT 'Not Available',
  `status` varchar(25) DEFAULT 'Not Attempted',
  `remark` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_response`
--

CREATE TABLE `student_exam_response` (
  `sr_no` int(11) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `enrollment_no` varchar(25) DEFAULT NULL,
  `roll_no` varchar(10) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `class_test` varchar(5) DEFAULT NULL,
  `class_test_date` date DEFAULT NULL,
  `subject` varchar(25) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_answer` varchar(5) DEFAULT NULL,
  `selected_answer` varchar(5) DEFAULT NULL,
  `secured_marks` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_exam_response`
--

INSERT INTO `student_exam_response` (`sr_no`, `question_no`, `enrollment_no`, `roll_no`, `student_name`, `class_test`, `class_test_date`, `subject`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `selected_answer`, `secured_marks`) VALUES
(1, 3, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a', 'X', '0'),
(2, 1, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b', 'X', '0'),
(3, 2, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a', 'X', '0'),
(4, 5, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a', 'X', '0'),
(5, 4, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a', 'X', '0'),
(6, 15, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'On earth ________ is freshwater.', 'a) 3 %', 'b) 4 %', 'c) 5 %', 'd) 6 %', 'a', 'X', '0'),
(7, 72, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Calorific value is ______characteristics of MSW.', 'a) Physical', 'b) Chemical', 'c) Biological', 'd)Electrical', 'b', 'X', '0'),
(8, 36, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Biomedical waste may be disposed of by?', 'a) Incineration', 'b) Autoclaving', 'c) Landfilling', 'd) Both a) and b)', 'd', 'X', '0'),
(9, 9, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Landfill of waste is basically a _________pollution', 'a) Land', 'b) Noise', 'c) Sewage', 'd) Water', 'a', 'X', '0'),
(10, 51, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', '_______can be used to remove the nitrates.', 'a) renitrification', 'b) gentrification', 'c) denitrification', 'd) Regentrification', 'c', 'X', '0'),
(11, 117, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Supposed to be working not for ‘profit’ but for a ‘cause(s)’ is', 'a) NGO', 'b) CGO', 'c) GOO', 'd) MGO', 'a', 'X', '0'),
(12, 95, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Article 51-A (g) of indian Constitution represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'b', 'X', '0'),
(13, 113, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Central pollution control Board is formed to_______', 'a) prevent the\n environmental\n pollution', '\"b) promote the\n environmental\n pollution\"', 'c) practice the\n environmental\n pollution', 'd)All of the above', 'a', 'X', '0'),
(14, 127, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Sustainable Development by solving problems of Environment teached at', 'a) post - research level', 'b) college/ university\n level', 'c) high school level', 'd) primary school level', 'b', 'X', '0'),
(15, 99, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'The State shall endeavour to protect and improve the environment and to safeguard\n the _____ and ______of the country.', 'a) forest, human life', 'b) human life , wild life', 'c) plants, trees', 'd) forests , wildlife', 'd', 'X', '0'),
(16, 100, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Which among the following is Act of Environmental Protection?', 'a) Biological Diversity Act, 2002', 'b) National Green Tribunal Act, 2010', 'c) Batteries (Management and\n Handling) Rules, 2001', 'd) All of the above', 'd', 'X', '0'),
(17, 112, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Administrative framework for environmental protection includes:', 'a) Central pollution\n control Board', 'b) State pollution\n control Board', 'c) Ministry of\n Environment and Forest', 'd) All of the above', 'd', 'X', '0'),
(18, 106, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', '__________ is a hydrologic process where water moves downward from surface water to groundwater.', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'b', 'X', '0'),
(19, 97, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'It shall be duty of every citizen of India to protect and improve the natural environment including forests, lakes, rivers and wild life and to have __________for living creatures.', 'a) competition', 'b) conquarance', 'c) compassion', 'd) contingence', 'c', 'X', '0'),
(20, 121, '2200040221', 'CO6IA-61', 'Yash Laxman Balotiya', 'ct1', '2024-03-14', 'est', 'Any spatial area from which runoff from precipitation is collected and drained\n through a common point or outlet is called', 'a) Green belt', 'b) Rainfall', 'c) Water shed', 'd) Rain water\n harvesting', 'c', 'X', '0'),
(1, 1, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b', 'b', '1'),
(2, 3, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a', 'a', '1'),
(3, 4, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a', 'b', '0'),
(4, 2, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a', 'a', '1'),
(5, 5, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a', 'X', '0'),
(6, 32, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Artificial sources of noise pollution are....', 'a) Thunder', 'b) Land slides', 'c) Earth quake', 'd) None of the above', 'd', 'X', '0'),
(7, 39, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Which of the following is not a Municipal solid waste?', 'a Market waste', 'b Agriculture waste', 'c ) Domestic waste', 'd) Commercial waste', 'b', 'X', '0'),
(8, 17, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Spring is a _________ source of water.', 'a) Surface', 'b) Sub-surface', 'c) Both a) and b)', 'd) All of the above', 'b', 'X', '0'),
(9, 31, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Which of the following is not a physiological effect on human beings?', 'a) Rise in blood pressure', 'b) Reduction in vision', 'c) Heart pain', 'd) damage nerve system', 'd', 'X', '0'),
(10, 83, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Incinerators are designed to operate at high temperature @ more than_____.', 'a) 8500 C', 'b) 18500 C', 'c) 850 C', 'd) 28500 C', 'a', 'X', '0'),
(11, 94, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Ash generated from incinerator is used ...........', 'a) as sand', 'b) as decorative material', 'c) as filler material', 'd) in M 30 concrete', 'b', 'X', '0'),
(12, 67, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'A combination of smoke, fog and chemical pollutants seen in industrialized', 'a) Sole', 'b) Smog', 'c) Fallouts', 'd) Fog', 'b', 'X', '0'),
(13, 58, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Which of the following is not a marine pollutant?', 'a) Oil', 'b) Plastic', 'c) Dissolved oxygen', 'd) Sewage Water', 'c', 'X', '0'),
(14, 41, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'The highest heating valve is of:', 'a) Garbage', 'b) Rubbish', 'c)Hospital waste', 'd) Industrial waste', 'b', 'X', '0'),
(15, 127, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Sustainable Development by solving problems of Environment teached at', 'a) post - research level', 'b) college/ university\n level', 'c) high school level', 'd) primary school level', 'b', 'X', '0'),
(16, 97, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'It shall be duty of every citizen of India to protect and improve the natural environment including forests, lakes, rivers and wild life and to have __________for living creatures.', 'a) competition', 'b) conquarance', 'c) compassion', 'd) contingence', 'c', 'X', '0'),
(17, 110, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Both formal and non-formal environmental education must have _________ goals', 'a) different', 'b) common', 'c) two', 'd) All of the above', 'b', 'X', '0'),
(18, 113, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Central pollution control Board is formed to_______', 'a) prevent the\n environmental\n pollution', '\"b) promote the\n environmental\n pollution\"', 'c) practice the\n environmental\n pollution', 'd)All of the above', 'a', 'X', '0'),
(19, 119, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'the study to predict the effect of a proposed activity/project on the environment is known\n as_____', 'a) Sustainable\n development', 'b) Environmental\n impact assessment', 'c) Environmental\n improvement', 'd) Environmental\n cultivation', 'b', 'X', '0'),
(20, 95, '2100040189', 'CO6IA-35', 'Kazi Mohammed Zaid Nadeem Yasin', 'ct1', '2024-03-15', 'est', 'Article 51-A (g) of indian Constitution represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'b', 'X', '0'),
(1, 2, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a', 'a', '1'),
(2, 3, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a', 'a', '1'),
(3, 4, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a', 'a', '1'),
(4, 1, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b', 'b', '1'),
(5, 5, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a', 'a', '1'),
(6, 61, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'The presence of solid, liquid or gaseous compounds, in excess concentration in the atmosphere is', 'a) Radioactive pollution', 'b) Soil pollution', 'c) Water pollution', 'd) Air pollution', 'd', 'a', '0'),
(7, 49, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Primary treatment of sewage includes:', 'a) Screening', 'b) Grit removal', 'c) Primary clarifier', 'd)Allof the above', 'd', 'd', '1'),
(8, 68, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Air pollution is caused by', 'a) Smoke', 'b) Insecticides', 'c) Sewage', 'd) Loud speaker', 'a', 'a', '1'),
(9, 90, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'complete destruction of toxic wastes possible in..........', 'a) Refused Derived Fuel', 'b) Incineration', 'c) Sanitary landfilling', 'd) Autoclaving', 'b', 'd', '0'),
(10, 35, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Which of the following is a biodegradable waste?', 'a) Plastic', 'b) Polythene', 'c) Glass', 'd) None of the above', 'd', 'd', '1'),
(11, 93, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Which of the followings is not a method of E-waste management', 'a) Open dumping', 'b) Dismantling', 'c) Recycling', 'd) Component recovery', 'a', 'a', '1'),
(12, 53, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'processes to remove gaseous pollutants by dissolution into a liquid solvent such as water is called as:', 'a) Adsorption', 'b) Absorption', 'c) Combustion', 'd) Decomposition', 'b', 'b', '1'),
(13, 17, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Spring is a _________ source of water.', 'a) Surface', 'b) Sub-surface', 'c) Both a) and b)', 'd) All of the above', 'b', 'd', '0'),
(14, 6, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'The harmful materials in environment are called__________.', 'a) Harmtants', 'b) Pollution', 'c) pollutants', 'd) Polants', 'c', 'c', '1'),
(15, 99, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'The State shall endeavour to protect and improve the environment and to safeguard\n the _____ and ______of the country.', 'a) forest, human life', 'b) human life , wild life', 'c) plants, trees', 'd) forests , wildlife', 'd', 'd', '1'),
(16, 122, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'The main components of watershed programme :', 'a) water conservation', 'b) soil conservation', 'c) crop management', 'd) All of the above', 'd', 'd', '1'),
(17, 105, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Water management includes:', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'd', 'd', '1'),
(18, 130, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Which of the followings is not an IT tool used for environment and public health.', 'a) Arogya Setu App', 'b) Artificial\n Intelligence', 'c) M S Word', 'd) GIS', 'c', 'a', '0'),
(19, 113, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'Central pollution control Board is formed to_______', 'a) prevent the\n environmental\n pollution', '\"b) promote the\n environmental\n pollution\"', 'c) practice the\n environmental\n pollution', 'd)All of the above', 'a', 'a', '1'),
(20, 125, '2100040172', 'CO6IA-19', 'Palekar Vedant Vijay', 'ct1', '2024-03-15', 'est', 'National river linkage project includes, Interlinking of ___ rivers across the country through a\n network of ____ storage dams', 'a) 30, 3000', 'b) 37, 3000', 'c) 40, 3000', 'd) 47, 3000', 'b', 'a', '0'),
(1, 2, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a', NULL, NULL),
(2, 4, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a', NULL, NULL),
(3, 3, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a', NULL, NULL),
(4, 1, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b', NULL, NULL),
(5, 5, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a', NULL, NULL),
(6, 38, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Which one the following is not biodegradable?', 'a) Vegetable waste', 'b) Fruit waste', 'c) Leaves', 'd) Aluminium foil', 'd', NULL, NULL),
(7, 87, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'The calorific value of RDF pellets can be around ------ Kcal / Kg.', 'a) 4000', 'b) 400', 'c) 40', 'd) 4400', 'a', NULL, NULL),
(8, 80, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'The landfilling where two liners are provided is called as....', 'a) Sanitary landfilling', 'b) Secured landfilling', 'c) Parallel Landfilling', 'd) Serial Landfilling', 'b', NULL, NULL),
(9, 24, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'The particulate matter suspended in air______', 'a) Dust', 'b) Pollen', 'c) Liquid droplets', 'd) All of the above', 'd', NULL, NULL),
(10, 59, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Fugitive emissions consist of', 'a) Street dust', 'b) Dust from construction activities', 'c) Dust from farm cultivation', 'd) All of the above', 'd', NULL, NULL),
(11, 39, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Which of the following is not a Municipal solid waste?', 'a Market waste', 'b Agriculture waste', 'c ) Domestic waste', 'd) Commercial waste', 'b', NULL, NULL),
(12, 26, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Gaseous pollutants are controlled by_____', 'a) Absorption', 'b) Adsorption', 'c) Cumbustion', 'd) All of the above', 'd', NULL, NULL),
(13, 57, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Which of the following is a non-point source of water pollution?', 'a) Factories', 'b) Sewage treatment plants', 'c) Urban and suburban lands', 'd)Marine dumping', 'c', NULL, NULL),
(14, 25, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Settling chambers collecting dust of size________.', 'a) > 10µm', 'b) < 10µm', 'c) = 10µm', 'd) =100 µm', 'a', NULL, NULL),
(15, 97, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'It shall be duty of every citizen of India to protect and improve the natural environment including forests, lakes, rivers and wild life and to have __________for living creatures.', 'a) competition', 'b) conquarance', 'c) compassion', 'd) contingence', 'c', NULL, NULL),
(16, 96, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Article 48 A in The Constitution Of India represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'a', NULL, NULL),
(17, 128, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'Adult education is ____', 'a) Formal education', 'b) Non-formal\n education', 'c) Primary education', 'd) Group education', 'b', NULL, NULL),
(18, 109, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'mankind needs environmental education for', 'a) environmental pollution', 'b) environmental degradation', 'c) environmental protection', 'd) environmental publication', 'c', NULL, NULL),
(19, 106, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', '__________ is a hydrologic process where water moves downward from surface water to groundwater.', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'b', NULL, NULL),
(20, 125, '2200040220', 'CO6IA-60', 'Shukla Shreya Rakesh', 'ct1', '2024-03-15', 'est', 'National river linkage project includes, Interlinking of ___ rivers across the country through a\n network of ____ storage dams', 'a) 30, 3000', 'b) 37, 3000', 'c) 40, 3000', 'd) 47, 3000', 'b', NULL, NULL),
(1, 2, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'The death of the last individual of a species is called …..', 'extinction', 'endanger', 'Conservation', 'diversity', 'a', NULL, NULL),
(2, 1, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'What is an important reason for the conservation of natural resources?', 'Disturb the ecological balance', 'Preserve the biological diversity', ' Disruption of quality of the environment', 'Hampering the biological species', 'b', NULL, NULL),
(3, 4, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'A species existing but in declining number is ___________ species', 'Threatened', 'Normal', 'Extinguishing', 'Rare', 'a', NULL, NULL),
(4, 3, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Biodiversity', 'Includes genetic,species,ecosystem and functional diversities', 'Refers to diversifying earth\'s non-renewable resource', 'Refers to biological effects on commercial plantation', 'Refers to reconstruction of tropical rainforests', 'a', NULL, NULL),
(5, 5, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Which one of the following is said to be the most important cause or reason for the extinction of animals and plants?', 'Loss of habitat and fragmentation', 'Over-exploitation of species', 'Invasion of alien species', 'Co-extinctions', 'a', NULL, NULL),
(6, 73, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Bird menace above dump site affects aircrafts is.....', 'a) Public health impact', 'b) Environmental impact', 'c) Social Impact', 'd) Ethical Impact', 'b', NULL, NULL),
(7, 26, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Gaseous pollutants are controlled by_____', 'a) Absorption', 'b) Adsorption', 'c) Cumbustion', 'd) All of the above', 'd', NULL, NULL),
(8, 43, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Which of the following is not a component of Sanitary Landfill?', 'a) Liner', 'b) Water monitoring well', 'c) Autoclaving', 'd) Leachate management facility', 'c', NULL, NULL),
(9, 32, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Artificial sources of noise pollution are....', 'a) Thunder', 'b) Land slides', 'c) Earth quake', 'd) None of the above', 'd', NULL, NULL),
(10, 79, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Landfill gas contains....', 'a) Methane', 'b) CO2', 'c) NOx', 'd) All of the above', 'd', NULL, NULL),
(11, 91, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Which of the followings is not an E-waste?', 'a. a) Cable', 'b) Refrigerator', 'c) Monitor', 'd) Glass', 'd', NULL, NULL),
(12, 28, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'The permissible range of sound after 2.5 A.M. for residential area is____', 'a) 30 - 60', 'b) 40 - 60', 'c) 50 - 60', 'd) 60 - 70', 'b', NULL, NULL),
(13, 11, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'The Negative Impact Of Land Pollution is ______', 'a) Soil erosion', 'b) Shifting of habitat', 'c) Water pollution', 'd) All of the above', 'd', NULL, NULL),
(14, 42, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Average generation rate of MSW is considered as.....', 'a) 0.4 Kg/capita/day', 'b) 0.8 Kg/capita/day', 'c) 1.0 Kg/capita/day', 'd) 0.2 Kg/capita/day', 'a', NULL, NULL),
(15, 99, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'The State shall endeavour to protect and improve the environment and to safeguard\n the _____ and ______of the country.', 'a) forest, human life', 'b) human life , wild life', 'c) plants, trees', 'd) forests , wildlife', 'd', NULL, NULL),
(16, 123, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'National River Linkage Project, Hydropower generation is proposed\n __________.', 'a) About 34,00 MW', 'b) About 44,000 MW', 'c) About 34,000 MW', 'd) About 44,00 MW', 'c', NULL, NULL),
(17, 119, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'the study to predict the effect of a proposed activity/project on the environment is known\n as_____', 'a) Sustainable\n development', 'b) Environmental\n impact assessment', 'c) Environmental\n improvement', 'd) Environmental\n cultivation', 'b', NULL, NULL),
(18, 106, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', '__________ is a hydrologic process where water moves downward from surface water to groundwater.', 'a) Rain water harvesting', 'b) Ground water recharge', 'c) Green belt development', 'd) All of the above', 'b', NULL, NULL),
(19, 102, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'an ability or capacity of something to be maintained or to sustain itself is known as', 'a) Biodicersity', 'b) Ecology', 'c) Sustainability', 'd) All of the above', 'c', NULL, NULL),
(20, 96, '2200040214', 'CO6IA-59', 'Garje Aditya Ashok', 'ct1', '2024-03-18', 'est', 'Article 48 A in The Constitution Of India represents:', 'a) Directive Principles', 'b) Fundamental duties', 'c) Both a) and b)', 'd) None of the above', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sy_ao_students`
--

CREATE TABLE `sy_ao_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy_ce_students`
--

CREATE TABLE `sy_ce_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy_co_students`
--

CREATE TABLE `sy_co_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy_ee_students`
--

CREATE TABLE `sy_ee_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy_ej_students`
--

CREATE TABLE `sy_ej_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy_me_students`
--

CREATE TABLE `sy_me_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ty_ao_students`
--

CREATE TABLE `ty_ao_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ty_ce_students`
--

CREATE TABLE `ty_ce_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ty_co_students`
--

CREATE TABLE `ty_co_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ty_co_students`
--

INSERT INTO `ty_co_students` (`enrollment_no`, `roll_no`, `student_name`) VALUES
(2100040153, 'co6ia-01', 'rijhwani khushi haresh'),
(2100040154, 'co6ia-02', 'talreja simran sachin'),
(2100040155, 'co6ia-03', 'shah svayam pratik'),
(2100040156, 'co6ia-04', 'ahuja prem umesh'),
(2100040157, 'co6ia-05', 'galani nayan deepak'),
(2100040158, 'co6ia-06', 'khilare asmi sachin'),
(2100040159, 'co6ia-07', 'kamble sakshi balasaheb'),
(2100040160, 'co6ia-08', 'krish bhojwani'),
(2100040162, 'co6ia-09', 'krishh jagdish lohar'),
(2100040163, 'co6ia-10', 'awasare aachal milind'),
(2100040164, 'co6ia-11', 'sayali mohan golatkar'),
(2100040165, 'co6ia-12', 'sayam jeetendra gursahani'),
(2100040166, 'co6ia-13', 'bajaj lalit ravi'),
(2100040167, 'co6ia-14', 'shaikh salman mohd salim'),
(2100040168, 'co6ia-15', 'shinde prasad atmaram'),
(2100040169, 'co6ia-16', 'bhatia krish arvindkumar'),
(2100040170, 'co6ia-17', 'ahire sonali kishor'),
(2100040171, 'co6ia-18', 'esha shailesh daiya'),
(2100040172, 'co6ia-19', 'palekar vedant vijay'),
(2100040173, 'co6ia-20', 'nayak kshama jawahar'),
(2100040174, 'co6ia-21', 'gupta mahek rajesh'),
(2100040176, 'co6ia-22', 'gaur ajay ashok'),
(2100040177, 'co6ia-23', 'chandiramani dev haresh'),
(2100040178, 'co6ia-24', 'chabriya bhumika mahesh'),
(2100040179, 'co6ia-25', 'yadav sanskruti bhalchandra'),
(2100040180, 'co6ia-26', 'jadhav chaitali vikas'),
(2100040181, 'co6ia-27', 'bhanushali neil'),
(2100040182, 'co6ia-28', 'pote prathmesh shantaram'),
(2100040183, 'co6ia-29', 'punjabi diaz pradeep'),
(2100040184, 'co6ia-30', 'jawalkar varad bharat'),
(2100040185, 'co6ia-31', 'brahma dinesh bathija'),
(2100040186, 'co6ia-32', 'patil aayush dinesh'),
(2100040187, 'co6ia-33', 'chanchlani sagar shankar'),
(2100040188, 'co6ia-34', 'kavade sakshi dnyaneshwar'),
(2100040189, 'co6ia-35', 'kazi mohammed zaid nadeem yasin'),
(2100040192, 'co6ia-36', 'manuja bhoomi prakash'),
(2100040194, 'co6ia-37', 'nathwani tiya premchand'),
(2100040195, 'co6ia-38', 'udasi divesh haresh'),
(2100040196, 'co6ia-62', 'sanika agre'),
(2100040197, 'co6ia-39', 'jagwani mayur chandu'),
(2100040198, 'co6ia-40', 'rohra dhiraj bhagwandas'),
(2100040199, 'co6ia-41', 'lotwani muskan roop'),
(2100040200, 'co6ia-42', 'rajai vaibhav vinod'),
(2100040201, 'co6ia-43', 'sharma mohit pradeep'),
(2100040202, 'co6ia-63', 'shrushtri sarvade'),
(2100040203, 'co6ia-44', 'bhoneja ritika purshottam'),
(2100040204, 'co6ia-45', 'peeya haresh gurdasani'),
(2100040205, 'co6ia-46', 'waghela krupa ramnik'),
(2100040206, 'co6ia-47', 'patade gaurish prakash'),
(2100040207, 'co6ia-48', 'adhikari nachiket jaychandra'),
(2100040208, 'co6ia-49', 'aryan vijay ahuja'),
(2100040209, 'co6ia-50', 'lulla sahil ajay'),
(2100040210, 'co6ia-51', 'jagiasi viren vinod'),
(2100040212, 'co6ia-52', 'modi jinay jayendra'),
(2100040213, 'co6ia-53', 'heena kausar shabbir hasan'),
(2100040214, 'co6ia-54', 'shivale sahil santosh'),
(2100040278, 'co6ia-55', 'vetal sumant nitin'),
(2100040398, 'co6ia-56', 'dhanve sejal prabhakar'),
(2100040423, 'co6ia-57', 'deokule devang rajendra'),
(2200040211, 'co6ia-58', 'ambole tejashree ravindra'),
(2200040214, 'co6ia-59', 'garje aditya ashok'),
(2200040220, 'co6ia-60', 'shukla shreya rakesh'),
(2200040221, 'co6ia-61', 'yash laxman balotiya');

-- --------------------------------------------------------

--
-- Table structure for table `ty_ee_students`
--

CREATE TABLE `ty_ee_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ty_ej_students`
--

CREATE TABLE `ty_ej_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ty_me_students`
--

CREATE TABLE `ty_me_students` (
  `enrollment_no` decimal(25,0) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `student_details`
--
DROP TABLE IF EXISTS `student_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_details`  AS SELECT `fy_ao_students`.`enrollment_no` AS `enrollment_no`, `fy_ao_students`.`roll_no` AS `roll_no`, `fy_ao_students`.`student_name` AS `student_name` FROM `fy_ao_students`union all select `fy_ce_students`.`enrollment_no` AS `enrollment_no`,`fy_ce_students`.`roll_no` AS `roll_no`,`fy_ce_students`.`student_name` AS `student_name` from `fy_ce_students` union all select `fy_co_students`.`enrollment_no` AS `enrollment_no`,`fy_co_students`.`roll_no` AS `roll_no`,`fy_co_students`.`student_name` AS `student_name` from `fy_co_students` union all select `fy_ee_students`.`enrollment_no` AS `enrollment_no`,`fy_ee_students`.`roll_no` AS `roll_no`,`fy_ee_students`.`student_name` AS `student_name` from `fy_ee_students` union all select `fy_ej_students`.`enrollment_no` AS `enrollment_no`,`fy_ej_students`.`roll_no` AS `roll_no`,`fy_ej_students`.`student_name` AS `student_name` from `fy_ej_students` union all select `fy_me_students`.`enrollment_no` AS `enrollment_no`,`fy_me_students`.`roll_no` AS `roll_no`,`fy_me_students`.`student_name` AS `student_name` from `fy_me_students` union all select `sy_ao_students`.`enrollment_no` AS `enrollment_no`,`sy_ao_students`.`roll_no` AS `roll_no`,`sy_ao_students`.`student_name` AS `student_name` from `sy_ao_students` union all select `sy_ce_students`.`enrollment_no` AS `enrollment_no`,`sy_ce_students`.`roll_no` AS `roll_no`,`sy_ce_students`.`student_name` AS `student_name` from `sy_ce_students` union all select `sy_co_students`.`enrollment_no` AS `enrollment_no`,`sy_co_students`.`roll_no` AS `roll_no`,`sy_co_students`.`student_name` AS `student_name` from `sy_co_students` union all select `sy_ee_students`.`enrollment_no` AS `enrollment_no`,`sy_ee_students`.`roll_no` AS `roll_no`,`sy_ee_students`.`student_name` AS `student_name` from `sy_ee_students` union all select `sy_ej_students`.`enrollment_no` AS `enrollment_no`,`sy_ej_students`.`roll_no` AS `roll_no`,`sy_ej_students`.`student_name` AS `student_name` from `sy_ej_students` union all select `sy_me_students`.`enrollment_no` AS `enrollment_no`,`sy_me_students`.`roll_no` AS `roll_no`,`sy_me_students`.`student_name` AS `student_name` from `sy_me_students` union all select `ty_ao_students`.`enrollment_no` AS `enrollment_no`,`ty_ao_students`.`roll_no` AS `roll_no`,`ty_ao_students`.`student_name` AS `student_name` from `ty_ao_students` union all select `ty_ce_students`.`enrollment_no` AS `enrollment_no`,`ty_ce_students`.`roll_no` AS `roll_no`,`ty_ce_students`.`student_name` AS `student_name` from `ty_ce_students` union all select `ty_co_students`.`enrollment_no` AS `enrollment_no`,`ty_co_students`.`roll_no` AS `roll_no`,`ty_co_students`.`student_name` AS `student_name` from `ty_co_students` union all select `ty_ee_students`.`enrollment_no` AS `enrollment_no`,`ty_ee_students`.`roll_no` AS `roll_no`,`ty_ee_students`.`student_name` AS `student_name` from `ty_ee_students` union all select `ty_ej_students`.`enrollment_no` AS `enrollment_no`,`ty_ej_students`.`roll_no` AS `roll_no`,`ty_ej_students`.`student_name` AS `student_name` from `ty_ej_students` union all select `ty_me_students`.`enrollment_no` AS `enrollment_no`,`ty_me_students`.`roll_no` AS `roll_no`,`ty_me_students`.`student_name` AS `student_name` from `ty_me_students`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_test_code`
--
ALTER TABLE `exam_test_code`
  ADD PRIMARY KEY (`test_code`);

--
-- Indexes for table `fy_ao_students`
--
ALTER TABLE `fy_ao_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `fy_ce_students`
--
ALTER TABLE `fy_ce_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `fy_co_students`
--
ALTER TABLE `fy_co_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `fy_ee_students`
--
ALTER TABLE `fy_ee_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `fy_ej_students`
--
ALTER TABLE `fy_ej_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `fy_me_students`
--
ALTER TABLE `fy_me_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_email`);

--
-- Indexes for table `sy_ao_students`
--
ALTER TABLE `sy_ao_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `sy_ce_students`
--
ALTER TABLE `sy_ce_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `sy_co_students`
--
ALTER TABLE `sy_co_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `sy_ee_students`
--
ALTER TABLE `sy_ee_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `sy_ej_students`
--
ALTER TABLE `sy_ej_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `sy_me_students`
--
ALTER TABLE `sy_me_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_ao_students`
--
ALTER TABLE `ty_ao_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_ce_students`
--
ALTER TABLE `ty_ce_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_co_students`
--
ALTER TABLE `ty_co_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_ee_students`
--
ALTER TABLE `ty_ee_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_ej_students`
--
ALTER TABLE `ty_ej_students`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `ty_me_students`
--
ALTER TABLE `ty_me_students`
  ADD PRIMARY KEY (`enrollment_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
