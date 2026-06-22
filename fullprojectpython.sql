-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2026 at 02:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullprojectpython`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `achievement_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `difficulty` enum('Medium','Hard','Very Hard') NOT NULL,
  `reward_money` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`achievement_id`, `name`, `description`, `difficulty`, `reward_money`) VALUES
(1, 'Hello World', 'หาเงินจากการเขียนโค้ดได้ครบ 500 บาทแรก', 'Medium', 50.00),
(2, 'First Bill Paid', 'จ่ายค่าใช้จ่ายงวดแรกสำเร็จทันเวลา', 'Medium', 100.00),
(3, 'Syntax Hero', 'เขียนโค้ดงานระดับง่ายโดยไม่มี Error เลย 1 ครั้ง', 'Medium', 50.00),
(4, 'Coffee Lover', 'ซื้อไอเทมกาแฟ/เครื่องดื่มชูกำลังครบ 5 ครั้ง', 'Medium', 20.00),
(5, 'Junior Developer', 'ทำงานรับจ้างสำเร็จครบ 10 งาน', 'Medium', 150.00),
(6, 'Bug Squasher', 'แก้ไขบั๊กในโค้ดสำเร็จรวม 20 ตัว', 'Medium', 100.00),
(7, 'Survivor Week', 'เอาชีวิตรอดผ่านสัปดาห์แรก (7 วัน) โดยไม่เกมโอเวอร์', 'Medium', 200.00),
(8, 'Night Owl', 'ทำงานโต้รุ่ง (ช่วงเวลากลางคืนในเกม) ติดต่อกัน 3 วัน', 'Medium', 50.00),
(9, 'Fast Typer', 'ทำงานเสร็จก่อนเวลาที่กำหนด 30% ในงานระดับใดก็ได้', 'Medium', 80.00),
(10, 'Savings Starter', 'มีเงินเก็บในบัญชีคงเหลือครบ 5,000 บาท', 'Medium', 100.00),
(11, 'Full Stack Master', 'อัปเกรดทักษะ (Skill) ครบทุกด้านจนเลเวลเต็ม', 'Hard', 500.00),
(12, 'Deadline Fighter', 'ส่งงานและรับเงินใน 5 วินาทีสุดท้ายก่อน Deadline', 'Hard', 300.00),
(13, 'Crisis Manager', 'จ่ายค่าใช้จ่ายงวดใหญ่โดยเหลือเงินติดตัวน้อยกว่า 10 บาท', 'Hard', 500.00),
(14, 'Senior Developer', 'ทำงานรับจ้างสำเร็จครบ 50 งาน', 'Hard', 1000.00),
(15, 'No StackOverflow', 'ทำงานระดับยาก (Hard Task) สำเร็จโดยไม่ใช้ตัวช่วย', 'Hard', 800.00),
(16, 'High Roller', 'มีเงินเก็บสะสมครบ 100,000 บาท', 'Hard', 2000.00),
(17, 'Arena Champion', 'ชนะการแข่งขันในโหมดออนไลน์ 5 ครั้งติดต่อกัน', 'Hard', 1500.00),
(18, 'Month Survivor', 'เอาชีวิตรอดผ่านเดือนแรก (30 วัน) ได้สำเร็จ', 'Hard', 1000.00),
(19, 'Python God', 'จบเกมด้วยเงินคงเหลือมากกว่า 10,000,000 บาท', 'Very Hard', 10000.00),
(20, 'Immortal Coder', 'เล่นจนจบเกมโดยไม่เคยส่งงานพลาด (Fail) เลยแม้แต่ครั้งเดียว', 'Very Hard', 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `advanced_validation`
--

CREATE TABLE `advanced_validation` (
  `id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `correct_answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advanced_validation`
--

INSERT INTO `advanced_validation` (`id`, `question_text`, `correct_answer`) VALUES
(1, 'ผลลัพธ์ของ len([1, 2, 3]) คืออะไร?', '3'),
(2, 'คำสั่งใดใช้สร้าง Dictionary ว่าง?', '{}'),
(3, 'ผลลัพธ์ของ \"Hello\"[1] คืออะไร?', 'e'),
(4, 'คำสั่ง for i in range(3) จะวนลูปกี่รอบ?', '3'),
(5, 'ผลลัพธ์ของ type(3.14) คืออะไร?', 'float'),
(6, 'try-except ใช้ทำอะไร?', 'จัดการ Error'),
(7, 'ฟังก์ชัน def greet(): return \"Hi\" เรียกใช้อย่างไร?', 'greet()'),
(8, 'list.append(x) ทำอะไร?', 'เพิ่ม x ต่อท้าย list'),
(9, 'ผลลัพธ์ของ 10 // 3 คืออะไร?', '3'),
(10, 'คำสั่ง import ใช้ทำอะไร?', 'นำเข้าโมดูล');

-- --------------------------------------------------------

--
-- Table structure for table `advanced_validation_choices`
--

CREATE TABLE `advanced_validation_choices` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advanced_validation_choices`
--

INSERT INTO `advanced_validation_choices` (`id`, `question_id`, `choice_text`) VALUES
(1, 1, '3'),
(2, 1, '2'),
(3, 1, '4'),
(4, 1, 'Error'),
(5, 2, '{}'),
(6, 2, '[]'),
(7, 2, '()'),
(8, 2, 'dict[]'),
(9, 3, 'e'),
(10, 3, 'H'),
(11, 3, 'l'),
(12, 3, 'Error'),
(13, 4, '3'),
(14, 4, '2'),
(15, 4, '4'),
(16, 4, '1'),
(17, 5, 'float'),
(18, 5, 'int'),
(19, 5, 'str'),
(20, 5, 'double'),
(21, 6, 'จัดการ Error'),
(22, 6, 'วนลูป'),
(23, 6, 'สร้างตัวแปร'),
(24, 6, 'นำเข้าไฟล์'),
(25, 7, 'greet()'),
(26, 7, 'call greet'),
(27, 7, 'run greet'),
(28, 7, 'def greet'),
(29, 8, 'เพิ่ม x ต่อท้าย list'),
(30, 8, 'ลบ x ออกจาก list'),
(31, 8, 'แทนที่ค่าใน list'),
(32, 8, 'สร้าง list ใหม่'),
(33, 9, '3'),
(34, 9, '3.33'),
(35, 9, '1'),
(36, 9, '10'),
(37, 10, 'นำเข้าโมดูล'),
(38, 10, 'สร้างฟังก์ชัน'),
(39, 10, 'ลบไฟล์'),
(40, 10, 'แสดงผล');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('HARDWARE','SOFTWARE') NOT NULL,
  `battery_capacity_minutes` int(11) DEFAULT 180,
  `power_consumption_rate` decimal(5,2) DEFAULT 1.00,
  `condition_percent` int(11) DEFAULT 100,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `contract_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `difficulty` enum('Easy','Medium','Hard') NOT NULL,
  `reward` decimal(10,2) NOT NULL,
  `penalty` decimal(10,2) DEFAULT 0.00,
  `ai_requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ai_requirements`)),
  `status` enum('OFFERED','ACTIVE','COMPLETED','FAILED') DEFAULT 'OFFERED',
  `deadline_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`contract_id`, `user_id`, `title`, `difficulty`, `reward`, `penalty`, `ai_requirements`, `status`, `deadline_at`, `created_at`) VALUES
(7, NULL, 'Digital Pet Feeder', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Sir Barksalot III\",\"clientRole\":\"Professional Couch Potato\",\"story\":\"My human keeps forgetting to feed me at 6pm sharp. I\'m a very important Beagle with a strict napping schedule, and hunger interrupts my beauty sleep. Build me an automated reminder system before I have to resort to dramatic sighing and guilt-tripping eyes.\",\"desc\":\"Write a Python script that asks for the current time, calculates how many minutes until 6:00 PM, and prints a countdown message. If it\'s already past 6pm, print \'FEED ME NOW\' in all caps exactly 10 times using a loop.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-28 04:08:09'),
(8, NULL, 'Sarcasm Detector for Parents', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Karen from Accounting (no relation)\",\"clientRole\":\"Mom of Three Eye-Rolling Teenagers\",\"story\":\"I told my kids to clean their room three hours ago and they said \'Yeah, sure, totally doing that right now.\' I need software to tell me if I\'m being mocked. My wine collection depends on accurate threat assessment.\",\"desc\":\"Create a Python function that takes a string input and returns True if the string contains obvious sarcasm indicators: words in ALL CAPS, more than 3 exclamation marks, or the phrases \'yeah sure\', \'totally\', or \'obviously\'. Test with at least 3 example sentences.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-28 04:08:09'),
(9, NULL, 'Dungeon Snack Calculator', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Gorp the Intimidating\",\"clientRole\":\"Part-Time Dragon, Full-Time Hangry\",\"story\":\"I keep eating adventurers WHO DON\'T BRING ENOUGH SNACKS. Last week I got heartburn from a paladin with no rations. I need to know exactly how many sandwiches equal one human in nutritional value. It\'s for health reasons. I\'m watching my figure.\",\"desc\":\"Build a Python script that converts adventurer types to sandwich equivalents: Warriors = 4 sandwiches, Mages = 2 sandwiches (squishy), Rogues = 3 sandwiches. Ask the user how many of each class they\'re eating, then print the total sandwich count and a \'satisfaction rating\' (Satisfied if total >= 10, Still Hungry otherwise).\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-28 04:08:09'),
(10, NULL, 'Fix a broken print script', 'Easy', 500.00, 100.00, '{\"clientName\":\"Nina Noodle\",\"clientRole\":\"Cafe Owner\",\"story\":\"The receipt printer script keeps crashing when the cashier opens the shop.\",\"desc\":\"1. Write a Python script that prints a welcome message and the total price.\\n2. Ask the user for item name and price.\\n3. Display the result clearly with print().\",\"source\":\"fallback\"}', 'COMPLETED', NULL, '2026-03-28 04:08:29'),
(11, NULL, 'Temperature warning tool', 'Easy', 850.00, 150.00, '{\"clientName\":\"Sunny Sky\",\"clientRole\":\"Weather Blogger\",\"story\":\"I want a tiny script that warns me when the temperature is too hot.\",\"desc\":\"1. Read temperature from input().\\n2. If temperature is above 35, print Hot Warning.\\n3. Otherwise print Normal Weather.\",\"source\":\"fallback\"}', 'OFFERED', NULL, '2026-03-28 08:06:06'),
(12, NULL, 'Lemonade Stand Calculator', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Timmy \\\"The Squeeze\\\" Thompson\",\"clientRole\":\"Neighborhood Beverage Mogul\",\"story\":\"Timmy\'s empire is crumbling! He\'s been selling lemonade for weeks but keeps running out of cups or having too many lemons rot. His mom said he needs to \\\"do the math\\\" before the farmers market this Saturday or she\'s cutting off his sugar supply.\",\"desc\":\"Write a Python script that calculates how many cups Timmy can fill given lemons, sugar, and water supplies. Each cup needs: 1 lemon, 2 tablespoons sugar, 8oz water. Input three integers (lemons, sugar_tbsp, water_oz). Output: maximum cups possible and which ingredient limits production.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-28 08:06:23'),
(13, NULL, 'Dungeon Dice Roller', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Gary Gygax\'s Ghost\",\"clientRole\":\"Ethereal Game Master\",\"story\":\"Gary\'s getting tired of haunting dice at game stores—turns out ethereal fingers can\'t roll physical dice, and players keep cheating when he manifests to watch. He needs a digital solution before his Thursday night campaign descends into chaos.\",\"desc\":\"Create a Python dice roller that accepts input like \'3d6+2\' or \'2d10\'. Parse the string to extract: number of dice, sides per die, optional modifier. Output: each individual roll result and the final total. Handle invalid input gracefully with an error message.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-28 08:06:23'),
(14, NULL, 'Pet Rock Emotional Support', 'Easy', 1000.00, 120.00, '{\"clientName\":\"Dwayne \\\"The Boulder\\\" Johnson\",\"clientRole\":\"Certified Pet Rock Therapist\",\"story\":\"Dwayne\'s practice is booming—turns out millennials really latch onto throwable companionship. But manually typing \'You are valid, rock friend\' 47 times daily is giving him carpal tunnel. He needs automation before his next group session.\",\"desc\":\"Write a Python script that generates randomized affirmations for pet rocks. Create five lists: adjectives, nouns, verbs, feelings, closing statements. Randomly select one item from each list to build sentences like \\\"You are a [adjective] [noun] who can [verb] with [feeling]. [closing]\\\". Generate and print 3 unique affirmations per run.\",\"source\":\"nvidia-ai\"}', 'COMPLETED', NULL, '2026-03-28 08:06:23'),
(15, NULL, 'Tip Splitter Supreme', 'Easy', 850.00, 102.00, '{\"clientName\":\"Derek \\\"Double-Dip\\\" Donahue\",\"clientRole\":\"Disgraced Party Host\",\"story\":\"Threw a pizza party for 47 friends, forgot to collect money upfront, and now nobody will admit how many slices they ate. Needs a script to shame-calculate who owes what.\",\"desc\":\"• Take total bill and number of people as input.\\n• Calculate tip percentages (15%, 18%, 20%) for user selection.\\n• Output amount per person including chosen tip.\\n• Handle edge case: alert if someone tries to pay for 0 people.\",\"source\":\"nvidia-ai\"}', 'FAILED', NULL, '2026-03-29 21:09:12'),
(16, NULL, 'Pet Name Generator', 'Easy', 720.00, 86.00, '{\"clientName\":\"Marnie Whiskerfuzz\",\"clientRole\":\"Overwhelmed Animal Shelter Volunteer\",\"story\":\"Has named 400 kittens this year and accidentally called three different cats \\\"Mittens.\\\" Needs a random generator before she names the next one \\\"Chair.\\\"\",\"desc\":\"• Combine random adjectives and nouns from two lists.\\n• Allow user to generate multiple names in one run.\\n• Prevent duplicate outputs in the same session.\\n• Include at least one silly \\\"rare\\\" prefix that appears 10% of the time.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-29 21:09:12'),
(17, NULL, 'Laundromat Change Counter', 'Easy', 900.00, 108.00, '{\"clientName\":\"Gus \\\"The Sock\\\" Marzetti\",\"clientRole\":\"Suspiciously Successful Coin Collector\",\"story\":\"Owns six laundromats but still counts quarters by hand while muttering about \\\"the machines.\\\" Needs a script to validate his nightly cash-out counts.\",\"desc\":\"• Input: quantities of quarters, dimes, nickels, pennies.\\n• Output total dollar amount formatted to $X.XX.\\n• Flag if total exceeds $500 (triggers audit alert).\\n• Reject negative coin counts with an error message.\",\"source\":\"nvidia-ai\"}', 'OFFERED', NULL, '2026-03-29 21:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_verifications`
--

INSERT INTO `email_verifications` (`id`, `user_id`, `token`, `expires_at`, `verified_at`, `created_at`) VALUES
(4, 8, 'e1be77cdc6ebedaa58715387c372df06ccd0a1f9e10559c5ca950b6a1941d344', '2026-03-25 22:38:32', NULL, '2026-03-24 15:38:32'),
(5, 9, 'e49a9f3882394dee875759039ed542bc4ad5d3bed810e27b2453edd51eefce28', '2026-04-20 21:32:12', NULL, '2026-04-19 14:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `exercise_id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `starter_code` longtext DEFAULT NULL,
  `solution_code` longtext DEFAULT NULL,
  `test_cases` longtext DEFAULT NULL,
  `xp_reward` int(11) DEFAULT 10,
  `currency_reward` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exercise_id`, `lesson_id`, `title`, `description`, `starter_code`, `solution_code`, `test_cases`, `xp_reward`, `currency_reward`) VALUES
(1, 1, 'ทักทายด้วย Python', 'เขียนโปรแกรมแสดงข้อความ \"Hello, Python!\" ออกทางหน้าจอ 1 บรรทัด', 'print(\"Hello, Python!\")', 'print(\"Hello, Python!\")', '[{\"input\":\"\",\"expected\":\"Hello, Python!\"}]', 15, 5),
(2, 2, 'สร้างตัวแปรเก็บชื่อ', 'สร้างตัวแปรชื่อ name เก็บคำว่า \"PySim\" แล้วแสดงค่าตัวแปรออกทางหน้าจอ', 'name = \"PySim\"\nprint(name)', 'name = \"PySim\"\nprint(name)', '[{\"input\":\"\",\"expected\":\"PySim\"}]', 20, 6),
(3, 3, 'รับชื่อแล้วทักทาย', 'รับชื่อจากผู้ใช้ 1 ค่า แล้วแสดงข้อความในรูปแบบ \"สวัสดี <ชื่อ>\"', 'name = input()\nprint(\"สวัสดี\", name)', 'name = input()\nprint(\"สวัสดี\", name)', '[{\"input\":\"สมชาย\",\"expected\":\"สวัสดี สมชาย\"},{\"input\":\"Lumi\",\"expected\":\"สวัสดี Lumi\"}]', 25, 8),
(4, 4, 'ผ่านหรือไม่ผ่าน', 'รับคะแนน 1 ค่า ถ้าคะแนนตั้งแต่ 50 ขึ้นไปให้แสดง \"ผ่าน\" ถ้าน้อยกว่า 50 ให้แสดง \"ไม่ผ่าน\"', 'score = int(input())\nif score >= 50:\n    print(\"ผ่าน\")\nelse:\n    print(\"ไม่ผ่าน\")', 'score = int(input())\nif score >= 50:\n    print(\"ผ่าน\")\nelse:\n    print(\"ไม่ผ่าน\")', '[{\"input\":\"80\",\"expected\":\"ผ่าน\"},{\"input\":\"42\",\"expected\":\"ไม่ผ่าน\"}]', 30, 10),
(5, 5, 'นับเลข 1 ถึง n', 'รับจำนวนเต็ม n แล้วแสดงตัวเลขตั้งแต่ 1 ถึง n ทีละบรรทัด', 'n = int(input())\nfor i in range(1, n + 1):\n    print(i)', 'n = int(input())\nfor i in range(1, n + 1):\n    print(i)', '[{\"input\":\"3\",\"expected\":\"1\\n2\\n3\"},{\"input\":\"1\",\"expected\":\"1\"}]', 35, 12),
(6, 6, 'สร้างฟังก์ชันบวกเลข', 'เขียนฟังก์ชัน add(a, b) ที่คืนค่าผลบวกของตัวเลขสองจำนวน แล้วแสดงผลจากค่าที่รับเข้ามา', 'def add(a, b):\n    return a + b\n\na = int(input())\nb = int(input())\nprint(add(a, b))', 'def add(a, b):\n    return a + b\n\na = int(input())\nb = int(input())\nprint(add(a, b))', '[{\"input\":\"2\\n3\",\"expected\":\"5\"},{\"input\":\"10\\n7\",\"expected\":\"17\"}]', 40, 15);

-- --------------------------------------------------------

--
-- Table structure for table `exercise_submissions`
--

CREATE TABLE `exercise_submissions` (
  `submission_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exercise_id` int(11) DEFAULT NULL,
  `submitted_code` longtext NOT NULL,
  `is_passed` tinyint(1) NOT NULL DEFAULT 0,
  `score` int(11) DEFAULT 0,
  `execution_time_ms` int(11) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_submissions`
--

INSERT INTO `exercise_submissions` (`submission_id`, `user_id`, `exercise_id`, `submitted_code`, `is_passed`, `score`, `execution_time_ms`, `error_message`, `submitted_at`) VALUES
(1, 9, 1, 'print(\"Hello, Python!\")', 1, 100, NULL, NULL, '2026-06-15 19:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `financial_ledger`
--

CREATE TABLE `financial_ledger` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('INCOME','EXPENSE') NOT NULL,
  `category` varchar(50) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_ledger`
--

INSERT INTO `financial_ledger` (`transaction_id`, `user_id`, `type`, `category`, `amount`, `description`, `created_at`) VALUES
(1, 8, 'EXPENSE', 'RANDOM_EVENT', 203.00, 'ELECTRICITY_BILL penalty', '2026-03-27 15:23:50'),
(2, 8, 'EXPENSE', 'RANDOM_EVENT', 207.00, 'ELECTRICITY_BILL penalty', '2026-03-27 15:40:57'),
(3, 8, 'EXPENSE', 'RANDOM_EVENT', 178.00, 'ELECTRICITY_BILL penalty', '2026-03-27 21:08:33'),
(4, 8, 'EXPENSE', 'RANDOM_EVENT', 213.00, 'ELECTRICITY_BILL penalty', '2026-03-27 22:26:45'),
(5, 8, 'EXPENSE', 'RANDOM_EVENT', 164.00, 'ELECTRICITY_BILL penalty', '2026-03-27 22:36:57'),
(6, 8, 'EXPENSE', 'RANDOM_EVENT', 130.00, 'ELECTRICITY_BILL penalty', '2026-03-28 04:20:13'),
(7, 1, 'INCOME', 'JOB_REWARD', 500.00, 'Reward from contract #10 (test.py)', '2026-03-28 08:09:39'),
(8, 1, 'INCOME', 'JOB_REWARD', 1000.00, 'Reward from contract #14 (test.py)', '2026-03-28 09:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `game_rooms`
--

CREATE TABLE `game_rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `host_user_id` int(11) NOT NULL,
  `room_password` varchar(50) DEFAULT NULL,
  `status` enum('WAITING','PLAYING','FINISHED') DEFAULT 'WAITING',
  `max_players` int(11) DEFAULT 2,
  `current_players` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_sessions`
--

CREATE TABLE `game_sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mode` varchar(20) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ended_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_ai_tasks`
--

CREATE TABLE `learning_ai_tasks` (
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `section_label` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `accent` varchar(20) DEFAULT NULL,
  `instructions_json` longtext NOT NULL,
  `example_input` text DEFAULT NULL,
  `example_output` text DEFAULT NULL,
  `starter_code` longtext NOT NULL,
  `test_cases_json` longtext NOT NULL,
  `reward_xp` int(11) NOT NULL DEFAULT 100,
  `reward_coins` int(11) NOT NULL DEFAULT 20,
  `rerolls_used` int(11) NOT NULL DEFAULT 0,
  `max_rerolls` int(11) NOT NULL DEFAULT 3,
  `status` enum('ACTIVE','COMPLETED','ARCHIVED') NOT NULL DEFAULT 'ACTIVE',
  `ai_payload` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_ai_tasks`
--

INSERT INTO `learning_ai_tasks` (`task_id`, `user_id`, `mode`, `title`, `section_label`, `subtitle`, `accent`, `instructions_json`, `example_input`, `example_output`, `starter_code`, `test_cases_json`, `reward_xp`, `reward_coins`, `rerolls_used`, `max_rerolls`, `status`, `ai_payload`, `created_at`, `updated_at`, `completed_at`) VALUES
(1, 1, 'challenge', 'FizzBuzz Counter', 'Hard Challenge', 'Challenge', 'rose', '[\"Write a function called fizzbuzz that takes a number n and returns a list of strings from 1 to n.\",\"For multiples of 3, use \'Fizz\' instead of the number.\",\"For multiples of 5, use \'Buzz\' instead of the number.\",\"For multiples of both 3 and 5, use \'FizzBuzz\'.\"]', '5', '[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\']', '# Write your fizzbuzz function below\n\ndef fizzbuzz(n):\n    # Your code here\n    pass\n', '[{\"input\":\"3\",\"expected\":\"[\'1\', \'2\', \'Fizz\']\"},{\"input\":\"5\",\"expected\":\"[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\']\"},{\"input\":\"15\",\"expected\":\"[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\', \'Fizz\', \'7\', \'8\', \'Fizz\', \'Buzz\', \'11\', \'Fizz\', \'13\', \'14\', \'FizzBuzz\']\"},{\"input\":\"1\",\"expected\":\"[\'1\']\"}]', 250, 70, 2, 3, 'COMPLETED', '{\"title\":\"FizzBuzz Counter\",\"sectionLabel\":\"Hard Challenge\",\"subtitle\":\"Challenge\",\"accent\":\"rose\",\"instructions\":[\"Write a function called fizzbuzz that takes a number n and returns a list of strings from 1 to n.\",\"For multiples of 3, use \'Fizz\' instead of the number.\",\"For multiples of 5, use \'Buzz\' instead of the number.\",\"For multiples of both 3 and 5, use \'FizzBuzz\'.\"],\"example\":{\"input\":\"5\",\"output\":\"[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\']\"},\"starterCode\":\"# Write your fizzbuzz function below\\n\\ndef fizzbuzz(n):\\n    # Your code here\\n    pass\\n\",\"testCases\":[{\"input\":\"3\",\"expected\":\"[\'1\', \'2\', \'Fizz\']\"},{\"input\":\"5\",\"expected\":\"[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\']\"},{\"input\":\"15\",\"expected\":\"[\'1\', \'2\', \'Fizz\', \'4\', \'Buzz\', \'Fizz\', \'7\', \'8\', \'Fizz\', \'Buzz\', \'11\', \'Fizz\', \'13\', \'14\', \'FizzBuzz\']\"},{\"input\":\"1\",\"expected\":\"[\'1\']\"}],\"rewardXp\":250,\"rewardCoins\":70}', '2026-03-29 09:52:43', '2026-03-29 10:40:04', '2026-03-29 10:40:04'),
(2, 1, 'exercise', 'Fix the Greeting Bot', 'Exercise', 'Debug Lab', 'blue', '[\"This code should greet a user by name and tell them how many letters are in their name.\",\"Find and fix the bugs so it works correctly. There are 2-3 mistakes to find.\"]', 'Alice', 'Hello, Alice! Your name has 5 letters.', 'def greet_user(name):\n    message = \"Hello, \" + name + \"! Your name has \" + len(name) + \" letters.\"\n    return Message\n\n# Get input\nuser_name = input()\nprint(greet_user(user_name))', '[{\"input\":\"Alice\",\"expected\":\"Hello, Alice! Your name has 5 letters.\"},{\"input\":\"Bob\",\"expected\":\"Hello, Bob! Your name has 3 letters.\"},{\"input\":\"Python\",\"expected\":\"Hello, Python! Your name has 6 letters.\"},{\"input\":\"A\",\"expected\":\"Hello, A! Your name has 1 letters.\"}]', 120, 30, 2, 3, 'ACTIVE', '{\"title\":\"Fix the Greeting Bot\",\"sectionLabel\":\"Exercise\",\"subtitle\":\"Debug Lab\",\"accent\":\"blue\",\"instructions\":[\"This code should greet a user by name and tell them how many letters are in their name.\",\"Find and fix the bugs so it works correctly. There are 2-3 mistakes to find.\"],\"example\":{\"input\":\"Alice\",\"output\":\"Hello, Alice! Your name has 5 letters.\"},\"starterCode\":\"def greet_user(name):\\n    message = \\\"Hello, \\\" + name + \\\"! Your name has \\\" + len(name) + \\\" letters.\\\"\\n    return Message\\n\\n# Get input\\nuser_name = input()\\nprint(greet_user(user_name))\",\"testCases\":[{\"input\":\"Alice\",\"expected\":\"Hello, Alice! Your name has 5 letters.\"},{\"input\":\"Bob\",\"expected\":\"Hello, Bob! Your name has 3 letters.\"},{\"input\":\"Python\",\"expected\":\"Hello, Python! Your name has 6 letters.\"},{\"input\":\"A\",\"expected\":\"Hello, A! Your name has 1 letters.\"}],\"rewardXp\":120,\"rewardCoins\":30}', '2026-03-29 09:52:44', '2026-03-29 20:55:06', NULL),
(3, 1, 'challenge', 'Temperature Converter', 'Hard Challenge', 'Challenge', 'rose', '[\"Create a function called celsius_to_fahrenheit that takes one parameter: celsius (a float or int)\",\"The formula to convert Celsius to Fahrenheit is: F = (C × 9/5) + 32\",\"Return the result rounded to 2 decimal places as a float\",\"If the input is below absolute zero (-273.15°C), return the string \'Invalid\'\"]', '25', '77.0', '# Define your function here\ndef celsius_to_fahrenheit(celsius):\n    # Your code here\n    pass', '[{\"input\":\"0\",\"expected\":\"32.0\"},{\"input\":\"100\",\"expected\":\"212.0\"},{\"input\":\"-300\",\"expected\":\"Invalid\"},{\"input\":\"37.5\",\"expected\":\"99.5\"}]', 250, 70, 1, 3, 'ACTIVE', '{\"title\":\"Temperature Converter\",\"sectionLabel\":\"Hard Challenge\",\"subtitle\":\"Challenge\",\"accent\":\"rose\",\"instructions\":[\"Create a function called celsius_to_fahrenheit that takes one parameter: celsius (a float or int)\",\"The formula to convert Celsius to Fahrenheit is: F = (C × 9/5) + 32\",\"Return the result rounded to 2 decimal places as a float\",\"If the input is below absolute zero (-273.15°C), return the string \'Invalid\'\"],\"example\":{\"input\":\"25\",\"output\":\"77.0\"},\"starterCode\":\"# Define your function here\\ndef celsius_to_fahrenheit(celsius):\\n    # Your code here\\n    pass\",\"testCases\":[{\"input\":\"0\",\"expected\":\"32.0\"},{\"input\":\"100\",\"expected\":\"212.0\"},{\"input\":\"-300\",\"expected\":\"Invalid\"},{\"input\":\"37.5\",\"expected\":\"99.5\"}],\"rewardXp\":250,\"rewardCoins\":70}', '2026-03-29 10:40:13', '2026-03-29 20:40:41', NULL),
(4, 9, 'challenge', 'Greeting Generator', 'Hard Challenge', 'Challenge', 'rose', '[\"Create a function named greet that takes a name as a parameter\",\"Return a greeting string in the format: \'Hello, [name]!\'\"]', 'Alice', 'Hello, Alice!', '# Define your greet function below\n# Remember to use the name parameter in your return statement\n\ndef greet(name):\n    # Your code here\n    pass', '[{\"input\":\"Alice\",\"expected\":\"Hello, Alice!\"},{\"input\":\"Bob\",\"expected\":\"Hello, Bob!\"},{\"input\":\"\",\"expected\":\"Hello, !\"},{\"input\":\"Python Learner\",\"expected\":\"Hello, Python Learner!\"}]', 250, 70, 0, 3, 'ACTIVE', '{\"title\":\"Greeting Generator\",\"sectionLabel\":\"Hard Challenge\",\"subtitle\":\"Challenge\",\"accent\":\"rose\",\"instructions\":[\"Create a function named greet that takes a name as a parameter\",\"Return a greeting string in the format: \'Hello, [name]!\'\"],\"example\":{\"input\":\"Alice\",\"output\":\"Hello, Alice!\"},\"starterCode\":\"# Define your greet function below\\n# Remember to use the name parameter in your return statement\\n\\ndef greet(name):\\n    # Your code here\\n    pass\",\"testCases\":[{\"input\":\"Alice\",\"expected\":\"Hello, Alice!\"},{\"input\":\"Bob\",\"expected\":\"Hello, Bob!\"},{\"input\":\"\",\"expected\":\"Hello, !\"},{\"input\":\"Python Learner\",\"expected\":\"Hello, Python Learner!\"}],\"rewardXp\":250,\"rewardCoins\":70}', '2026-04-19 14:46:09', '2026-04-19 14:46:09', NULL),
(5, 9, 'exercise', 'Fix the Grade Calculator', 'Exercise', 'Debug Lab', 'blue', '[\"This function should take a score (0-100) and return a letter grade: A (90+), B (80-89), C (70-79), D (60-69), F (below 60)\",\"Find and fix the bugs in the starter code so it works correctly for all scores\"]', '85', 'B', 'def get_grade(score):\n    if score >= 90\n        return \"A\"\n    elif score >= 80\n        return \"B\"\n    elif score >= 70:\n        return \"C\"\n    elif score >= 60\n        return \"D\"\n    else:\n        return \"F\"', '[{\"input\":\"95\",\"expected\":\"A\"},{\"input\":\"85\",\"expected\":\"B\"},{\"input\":\"75\",\"expected\":\"C\"},{\"input\":\"55\",\"expected\":\"F\"}]', 120, 30, 0, 3, 'ACTIVE', '{\"title\":\"Fix the Grade Calculator\",\"sectionLabel\":\"Exercise\",\"subtitle\":\"Debug Lab\",\"accent\":\"blue\",\"instructions\":[\"This function should take a score (0-100) and return a letter grade: A (90+), B (80-89), C (70-79), D (60-69), F (below 60)\",\"Find and fix the bugs in the starter code so it works correctly for all scores\"],\"example\":{\"input\":\"85\",\"output\":\"B\"},\"starterCode\":\"def get_grade(score):\\n    if score >= 90\\n        return \\\"A\\\"\\n    elif score >= 80\\n        return \\\"B\\\"\\n    elif score >= 70:\\n        return \\\"C\\\"\\n    elif score >= 60\\n        return \\\"D\\\"\\n    else:\\n        return \\\"F\\\"\",\"testCases\":[{\"input\":\"95\",\"expected\":\"A\"},{\"input\":\"85\",\"expected\":\"B\"},{\"input\":\"75\",\"expected\":\"C\"},{\"input\":\"55\",\"expected\":\"F\"}],\"rewardXp\":120,\"rewardCoins\":30}', '2026-04-19 14:48:02', '2026-04-19 14:48:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lesson_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `required_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `module_id`, `title`, `order_index`, `required_level`) VALUES
(1, 1, 'Hello World & print()', 1, 0),
(2, 1, 'Comments และการเขียนโค้ด', 2, 0),
(3, 1, 'Input จากผู้ใช้', 3, 0),
(4, 2, 'ตัวแปร (Variables)', 1, 0),
(5, 2, 'ชนิดข้อมูล (Data Types)', 2, 0),
(6, 2, 'Type Conversion', 3, 0),
(7, 3, 'If-Else', 1, 2),
(8, 3, 'For Loop', 2, 2),
(9, 3, 'While Loop', 3, 3),
(10, 4, 'การสร้างฟังก์ชัน', 1, 4),
(11, 4, 'Parameters & Return', 2, 5),
(12, 5, 'List', 1, 6),
(13, 5, 'Dictionary', 2, 7),
(14, 6, 'อ่าน/เขียนไฟล์', 1, 8),
(15, 6, 'Try-Except', 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_quizzes`
--

CREATE TABLE `lesson_quizzes` (
  `quiz_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `quiz_type` varchar(10) NOT NULL DEFAULT 'pre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_quizzes`
--

INSERT INTO `lesson_quizzes` (`quiz_id`, `lesson_id`, `quiz_type`) VALUES
(1, 1, 'pre'),
(2, 1, 'post'),
(3, 2, 'pre'),
(4, 2, 'post'),
(5, 3, 'pre'),
(6, 3, 'post');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_quiz_attempts`
--

CREATE TABLE `lesson_quiz_attempts` (
  `attempt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `quiz_type` varchar(10) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `total_questions` int(11) NOT NULL DEFAULT 0,
  `answers_json` longtext DEFAULT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_quiz_attempts`
--

INSERT INTO `lesson_quiz_attempts` (`attempt_id`, `user_id`, `lesson_id`, `quiz_type`, `score`, `total_questions`, `answers_json`, `completed_at`, `updated_at`) VALUES
(1, 9, 1, 'pre', 2, 2, '{\"0\":\"print()\",\"1\":\"Hello\"}', '2026-04-23 06:34:22', '2026-04-23 06:34:22'),
(2, 9, 1, 'post', 3, 3, '{\"0\":\"Python\",\"1\":\"print(\\\"สวัสดี\\\")\",\"2\":\"Interpreted\"}', '2026-04-23 06:34:35', '2026-04-23 06:34:35'),
(3, 9, 2, 'pre', 0, 2, '{\"0\":\"//\",\"1\":\"ทำให้เกิด Error\"}', '2026-04-23 06:34:56', '2026-04-23 06:34:56'),
(4, 9, 2, 'post', 2, 2, '{\"0\":\"Comment\",\"1\":\"# This is a comment\"}', '2026-05-06 04:35:45', '2026-05-06 04:35:45'),
(5, 9, 3, 'pre', 0, 2, '{\"0\":\"scanf()\",\"1\":\"int\"}', '2026-04-23 06:53:46', '2026-04-23 06:53:46'),
(6, 9, 3, 'post', 0, 2, '{\"0\":\"float\",\"1\":\"ไม่ต้องทำอะไร\"}', '2026-04-23 06:53:59', '2026-04-23 06:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_slides`
--

CREATE TABLE `lesson_slides` (
  `slide_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `slide_order` int(11) NOT NULL DEFAULT 0,
  `slide_title` varchar(200) DEFAULT NULL,
  `slide_content` text DEFAULT NULL,
  `slide_src` varchar(500) DEFAULT NULL,
  `slide_type` varchar(20) DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_slides`
--

INSERT INTO `lesson_slides` (`slide_id`, `lesson_id`, `slide_order`, `slide_title`, `slide_content`, `slide_src`, `slide_type`) VALUES
(1, 1, 1, 'Python คืออะไร?', 'Python เป็นภาษาโปรแกรมที่ใช้งานง่าย เหมาะสำหรับผู้เริ่มต้น\nสร้างโดย Guido van Rossum ในปี 1991', '/gif/first_print.gif', 'text'),
(2, 1, 2, 'คำสั่ง print()', 'ใช้คำสั่ง print() เพื่อแสดงผลลัพธ์\nตัวอย่าง: print(\"Hello World!\")', NULL, 'text'),
(3, 1, 3, 'ลองเขียนโค้ด', 'print(\"Hello World!\")\nprint(\"สวัสดีชาว Python!\")', NULL, 'code'),
(4, 2, 1, 'Comments คืออะไร?', 'Comments คือข้อความอธิบายโค้ดที่ Python จะข้ามไม่ประมวลผล\nใช้เครื่องหมาย # นำหน้า', '/gif/comments.gif', 'text'),
(5, 2, 2, 'ตัวอย่าง Comment', '# นี่คือ Comment\nprint(\"Hello\") # Comment ท้ายบรรทัด\n\n# หลายบรรทัด\n# ใช้ # หลายตัว', NULL, 'code'),
(6, 3, 1, 'รับข้อมูลจากผู้ใช้', 'ใช้คำสั่ง input() เพื่อรับข้อมูลจาก keyboard\nข้อมูลที่ได้จะเป็น string เสมอ', '/gif/input.gif', 'text'),
(7, 3, 2, 'ลองเขียน Input', 'name = input(\"ชื่ออะไร: \")\nprint(\"สวัสดี\", name)', NULL, 'code'),
(8, 4, 1, 'ตัวแปรคืออะไร?', 'ตัวแปร (Variable) คือ \"กล่อง\" เก็บข้อมูล\nใน Python ไม่ต้องประกาศชนิดล่วงหน้า', '/gif/python4.gif', 'text'),
(9, 4, 2, 'การตั้งชื่อตัวแปร', 'x = 10\nname = \"John\"\nmy_list = [1, 2, 3]\n\n# กฎการตั้งชื่อ:\n# - เริ่มด้วยตัวอักษรหรือ _\n# - ห้ามเริ่มด้วยตัวเลข\n# - case-sensitive', NULL, 'code'),
(10, 6, 1, 'Type Conversion', 'การแปลงชนิดข้อมูล เช่น str เป็น int\nใช้ int(), float(), str()', '/gif/typeconversion.gif', 'text'),
(11, 6, 2, 'ตัวอย่าง Type Conversion', 'x = \"100\"\ny = int(x)  # แปลง str เป็น int\nprint(y + 50)  # ผลลัพธ์ 150\n\nz = float(\"3.14\")\nprint(z)  # 3.14', NULL, 'code');

-- --------------------------------------------------------

--
-- Table structure for table `level_config`
--

CREATE TABLE `level_config` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `option_description` varchar(500) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level_config`
--

INSERT INTO `level_config` (`id`, `question_id`, `title`, `option_description`, `order`, `level`) VALUES
(1, 3, 'Beginner', 'ไม่เคยเขียนโปรแกรมมาก่อนเลย', 1, 1),
(2, 3, 'Advanced', 'เคยเขียน Python หรือภาษาอื่นมาบ้าง ต้องการข้ามบทพื้นฐาน', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `entry_fee` decimal(10,2) DEFAULT 0.00,
  `power_reliability` int(11) DEFAULT 100,
  `internet_speed` decimal(3,2) DEFAULT 1.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `name`, `entry_fee`, `power_reliability`, `internet_speed`) VALUES
(1, 'Home (My Room)', 0.00, 70, 1.00),
(2, 'Starbugs Cafe', 150.00, 95, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_current_conversations`
--

CREATE TABLE `mini_game_current_conversations` (
  `user_id` int(11) NOT NULL,
  `exercise_id` int(11) DEFAULT NULL,
  `dialogue_id` int(11) NOT NULL,
  `current_npc_id` int(11) DEFAULT NULL,
  `current_location_id` int(11) DEFAULT NULL,
  `branch_key` varchar(80) NOT NULL DEFAULT 'default',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_dialogues`
--

CREATE TABLE `mini_game_dialogues` (
  `dialogue_id` int(11) NOT NULL,
  `exercise_id` int(11) DEFAULT NULL,
  `dialogue_order` int(11) NOT NULL DEFAULT 0,
  `exercise_order` varchar(20) DEFAULT NULL,
  `dialogue_text` text NOT NULL,
  `npc_id` int(11) DEFAULT NULL,
  `npc_emotion` varchar(50) NOT NULL DEFAULT 'neutral',
  `location_id` int(11) DEFAULT NULL,
  `dialogue_phase` enum('pre_submit','post_submit') NOT NULL DEFAULT 'pre_submit',
  `branch_key` varchar(80) NOT NULL DEFAULT 'default',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_dialogues`
--

INSERT INTO `mini_game_dialogues` (`dialogue_id`, `exercise_id`, `dialogue_order`, `exercise_order`, `dialogue_text`, `npc_id`, `npc_emotion`, `location_id`, `dialogue_phase`, `branch_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'START', 'สวัสดีค่ะ ยินดีต้อนรับสู่ระบบเลือกเส้นทางพัฒนาโปรแกรม!', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(2, 1, 1, 'START', 'ในด่านนี้ คุณต้องเลือกทางเดินชีวิตแล้วล่ะค่ะ', 1, 'neutral', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(3, 1, 2, 'START', 'ลองพิมพ์ print(\"1A\") หรือ print(\"2A\") เพื่อเลือกด่านถัดไปดูนะคะ', 1, 'curious', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(4, 1, 0, 'START', 'ยอดเยี่ยมมาก! คุณเลือกเดินมาทางสาย 1A สินะคะ', 1, 'smile', 1, 'post_submit', '1A', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(5, 1, 1, 'START', 'ระบบกำลังบันทึก branch_key = 1A และกำลังพาคุณย้ายไปด่าน 1A ค่ะ', 2, 'neutral', 1, 'post_submit', '1A', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(6, 1, 0, 'START', 'โอ้! คุณเลือกเดินมาทางสาย 2A ตื่นเต้นจังเลยค่ะ', 1, 'smile', 1, 'post_submit', '2A', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(7, 1, 1, 'START', 'ระบบกำลังบันทึก branch_key = 2A และกำลังพาคุณย้ายไปด่าน 2A ค่ะ', 2, 'neutral', 1, 'post_submit', '2A', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(8, 2, 0, '1A', 'ตอนนี้คุณเข้ามาอยู่ด่าน 1A เรียบร้อยแล้วค่ะ', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(9, 2, 1, '1A', 'ด่านนี้คุณจะต้องเลือกแตกแขนงย่อยอีกครั้ง ระหว่าง 1A_1B หรือ 1A_2B ค่ะ', 1, 'curious', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(10, 3, 0, '2A', 'ยินดีต้อนรับสู่ห้องแล็บลับฝั่ง 2A ครับผม', 2, 'neutral', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(11, 3, 1, '2A', 'ที่นี่คุณต้องพิมพ์ส่งคำตอบ 2A_1B หรือ 2A_2B เพื่อเลือกชะตาชีวิตขั้นต่อไป', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(12, 2, 0, '1A', 'ยอดเยี่ยมมากค่ะ! โค้ด print(\"1A_1B\") ของคุณพาเรามาสู่ห้องวิจัยระดับสูง', 1, 'smile', 1, 'post_submit', '1A_1B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(13, 2, 1, '1A', 'ระบบกำลังบันทึก branch_key = 1A_1B และนำคุณเข้าสู่เนื้อเรื่องถัดไป...', 2, 'neutral', 1, 'post_submit', '1A_1B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(14, 2, 0, '1A', 'ว้าว! เลือกสายพัฒนาซอฟต์แวร์ประยุกต์ 1A_2B สินะคะ เป็นทางเลือกที่ท้าทายมากค่ะ', 1, 'smile', 1, 'post_submit', '1A_2B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(15, 2, 1, '1A', 'ระบบกำลังบันทึก branch_key = 1A_2B เพื่อเปิดประตูบานถัดไป...', 2, 'neutral', 1, 'post_submit', '1A_2B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(16, 3, 0, '2A', 'การตัดสินใจเด็ดขาดมาก! มุ่งหน้าสู่สายจอมเวทสายควบคุม 2A_1B', 1, 'smile', 1, 'post_submit', '2A_1B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(17, 3, 1, '2A', 'ระบบตรวจพบคำตอบ 2A_1B กำลังเปิดใช้งานโครงข่ายเวทมนตร์ขั้นสูง...', 2, 'neutral', 1, 'post_submit', '2A_1B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(18, 3, 0, '2A', 'คุณเลือกสายนักประดิษฐ์ไอเทมเวทมนตร์ 2A_2B งั้นเหรอ? น่าสนใจสุด ๆ ไปเลยค่ะ!', 1, 'curious', 1, 'post_submit', '2A_2B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(19, 3, 1, '2A', 'ระบบตรวจพบคำตอบ 2A_2B ยืนยันการบันทึกข้อมูลและเตรียมย้ายตำแหน่ง...', 2, 'neutral', 1, 'post_submit', '2A_2B', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(20, 4, 0, '1A_1B', 'ยินดีต้อนรับสู่ด่านสรุป 1A_1B ค่ะ คุณได้กลายเป็นผู้เชี่ยวชาญ Data Science แล้ว!', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(21, 4, 1, '1A_1B', 'ภารกิจสุดท้าย พิมพ์ print(\"success\") เพื่อทดสอบระบบส่งท้ายและรับรางวัลใหญ่กันเลยค่ะ!', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(22, 5, 0, '1A_2B', 'ยินดีต้อนรับสู่ด่านสรุป 1A_2B ครับ ตอนนี้คุณคือ Full-Stack Developer ตัวจริงแล้ว', 2, 'neutral', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(23, 5, 1, '1A_2B', 'มาร่วมปิดโปรเจกต์นี้ด้วยการพิมพ์ print(\"success\") เพื่อรับเหรียญรางวัลกันเถอะค่ะ', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(24, 6, 0, '2A_1B', 'ในที่สุดคุณก็ฝ่าฟันมาถึงหอคอยเวทมนตร์สาย 2A_1B ได้สำเร็จ เก่งมากเลยค่ะ!', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(25, 6, 1, '2A_1B', 'รวบรวมมานาครั้งสุดท้ายแล้วร่ายคาถา print(\"success\") เพื่อปลดล็อครางวัลกันค่ะ', 1, 'curious', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(26, 7, 0, '2A_2B', 'ยินดีต้อนรับสู่โรงงานผลิตอาวุธเวทมนตร์ 2A_2B ครับ! อุปกรณ์ของคุณพร้อมใช้งานแล้ว', 2, 'neutral', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(27, 7, 1, '2A_2B', 'มาเปิดสวิตช์เดินเครื่องจักรด้วยคำสั่ง print(\"success\") เป็นคำสั่งสุดท้ายกันเลย!', 1, 'smile', 1, 'pre_submit', 'default', '2026-06-20 22:00:56', '2026-06-20 22:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_dialogue_choices`
--

CREATE TABLE `mini_game_dialogue_choices` (
  `choice_id` int(11) NOT NULL,
  `dialogue_id` int(11) NOT NULL,
  `choice_order` int(11) NOT NULL DEFAULT 0,
  `choice_text` varchar(255) NOT NULL,
  `next_branch_key` varchar(80) NOT NULL DEFAULT 'default',
  `next_dialogue_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_exercises`
--

CREATE TABLE `mini_game_exercises` (
  `exercise_id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `exercise_order` varchar(20) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `starter_code` longtext DEFAULT NULL,
  `solution_code` longtext DEFAULT NULL,
  `test_cases_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`test_cases_json`)),
  `xp_reward` int(11) NOT NULL DEFAULT 10,
  `currency_reward` int(11) NOT NULL DEFAULT 5,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_exercises`
--

INSERT INTO `mini_game_exercises` (`exercise_id`, `lesson_id`, `exercise_order`, `title`, `description`, `starter_code`, `solution_code`, `test_cases_json`, `xp_reward`, `currency_reward`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'START', 'จุดเริ่มต้นของทางแยก', 'เขียนคำสั่ง คำนวณภาษีมูลค่าเพิ่ม 7% (VAT 7%) และตรวจสอบเงื่อนไขรายได้\r\nตัวอย่างผลลัพธ์:\r\nราคารวมทั้งหมดคือ: 1070.0\r\n(หากรายได้มากกว่า 500 จะไปทางเลือก 1A, ถ้าน้อยกว่าหรือเท่ากับ 500 จะไปทางเลือก 1B)', 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', '{\"expected_format\": \"ราคารวมทั้งหมดคือ: {total}\",\"rules\": [{ \"condition\": \"float > 500\", \"branch_key\": \"1A\" },{ \"condition\": \"float <= 500\", \"branch_key\": \"1B\" }],\"correctness\": [{ \"input\": \"100\", \"expected\": \"ราคารวมทั้งหมดคือ: 107.0\" },{ \"input\": \"250\", \"expected\": \"ราคารวมทั้งหมดคือ: 267.5\" },{ \"input\": \"500\", \"expected\": \"ราคารวมทั้งหมดคือ: 535.0\" },{ \"input\": \"700\", \"expected\": \"ราคารวมทั้งหมดคือ: 749.0\" },{ \"input\": \"1000\", \"expected\": \"ราคารวมทั้งหมดคือ: 1070.0\" }]}', 15, 5, 1, '2026-06-20 22:00:56', '2026-06-20 22:05:27'),
(2, 1, '1A', 'เส้นทางวิทยาศาสตร์ 1A', 'ยินดีต้อนรับสู่เส้นทาง 1A พิมพ์ 1A_1B หรือ 1A_2B เพื่อไปต่อ', 'print(\"\")', 'print(\"1A_1B\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'1A_1B\'\", \"branch_key\": \"1A_1B\"}, {\"condition\": \"value == \'1A_2B\'\", \"branch_key\": \"1A_2B\"}]}', 20, 10, 1, '2026-06-20 22:00:56', '2026-06-22 06:26:21'),
(3, 1, '2A', 'เส้นทางเวทมนตร์ 2A', 'ยินดีต้อนรับสู่เส้นทาง 2A พิมพ์ 2A_1B หรือ 2A_2B เพื่อไปต่อ', 'print(\"\")', 'print(\"2A_1B\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'2A_1B\'\", \"branch_key\": \"2A_1B\"}, {\"condition\": \"value == \'2A_2B\'\", \"branch_key\": \"2A_2B\"}]}', 20, 10, 1, '2026-06-20 22:00:56', '2026-06-22 06:27:38'),
(4, 1, '1A_1B', 'บทสรุปสายวิชาการ 1A_1B', 'ยินดีด้วยคุณมาถึงจุดสิ้นสุดของสาย 1A_1B แล้ว พิมพ์ print(\"success\") เพื่อจบด่าน', 'print(\"\")', 'print(\"success\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'success\'\", \"branch_key\": \"end\"}]}', 30, 15, 1, '2026-06-20 22:00:56', '2026-06-22 06:28:25'),
(5, 1, '1A_2B', 'บทสรุปสายวิชาการ 1A_2B', 'ยินดีด้วยคุณมาถึงจุดสิ้นสุดของสาย 1A_2B แล้ว พิมพ์ print(\"success\") เพื่อจบด่าน', 'print(\"\")', 'print(\"success\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'success\'\", \"branch_key\": \"end\"}]}', 30, 15, 1, '2026-06-20 22:00:56', '2026-06-22 06:28:42'),
(6, 1, '2A_1B', 'บทสรุปสายเวทมนตร์ 2A_1B', 'ยินดีด้วยคุณมาถึงจุดสิ้นสุดของสาย 2A_1B แล้ว พิมพ์ print(\"success\") เพื่อจบด่าน', 'print(\"\")', 'print(\"success\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'success\'\", \"branch_key\": \"end\"}]}', 30, 15, 1, '2026-06-20 22:00:56', '2026-06-22 06:28:54'),
(7, 1, '2A_2B', 'บทสรุปสายเวทมนตร์ 2A_2B', 'ยินดีด้วยคุณมาถึงจุดสิ้นสุดของสาย 2A_2B แล้ว พิมพ์ print(\"success\") เพื่อจบด่าน', 'print(\"\")', 'print(\"success\")', '{\"expected_format\": \"{value}\", \"rules\": [{\"condition\": \"value == \'success\'\", \"branch_key\": \"end\"}]}', 30, 15, 1, '2026-06-20 22:00:56', '2026-06-22 06:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_exercise_submissions`
--

CREATE TABLE `mini_game_exercise_submissions` (
  `submission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `submitted_code` longtext NOT NULL,
  `is_passed` tinyint(1) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `passed_test_count` int(11) NOT NULL DEFAULT 0,
  `total_test_count` int(11) NOT NULL DEFAULT 0,
  `selected_branch_key` varchar(80) DEFAULT NULL,
  `reward_granted` tinyint(1) NOT NULL DEFAULT 0,
  `execution_time_ms` int(11) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_exercise_submissions`
--

INSERT INTO `mini_game_exercise_submissions` (`submission_id`, `user_id`, `exercise_id`, `submitted_code`, `is_passed`, `score`, `passed_test_count`, `total_test_count`, `selected_branch_key`, `reward_granted`, `execution_time_ms`, `error_message`, `submitted_at`) VALUES
(64, 9, 1, '', 1, 100, 1, 1, '1A', 1, NULL, NULL, '2026-06-17 15:28:17'),
(65, 9, 2, '', 1, 100, 1, 1, '1A_1B', 1, NULL, NULL, '2026-06-17 15:28:44'),
(66, 9, 1, '', 1, 100, 1, 1, '1A', 0, NULL, NULL, '2026-06-17 15:29:26'),
(67, 9, 2, '', 1, 100, 1, 1, '1A_2B', 0, NULL, NULL, '2026-06-17 15:29:42'),
(68, 9, 4, '', 1, 100, 1, 1, 'end', 1, NULL, NULL, '2026-06-17 15:30:24'),
(69, 9, 5, '', 1, 100, 1, 1, 'end', 1, NULL, NULL, '2026-06-20 22:08:16'),
(70, 9, 3, '', 1, 100, 1, 1, 'default', 1, NULL, NULL, '2026-06-20 22:08:33'),
(71, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1B', 0, NULL, NULL, '2026-06-20 22:32:38'),
(72, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1B', 0, NULL, NULL, '2026-06-21 17:33:14'),
(73, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1A', 0, NULL, NULL, '2026-06-21 17:37:29'),
(74, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1B', 0, NULL, NULL, '2026-06-21 17:37:55'),
(75, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1A', 0, NULL, NULL, '2026-06-21 17:38:22'),
(76, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, '1A', 0, NULL, NULL, '2026-06-21 17:39:11'),
(77, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:06:55'),
(78, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:07:36'),
(79, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:07:54'),
(80, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:08:22'),
(81, 9, 2, 'print(\"1A_2B \")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:10:11'),
(82, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:10:41'),
(83, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:27:01'),
(84, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:27:16'),
(85, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:27:47'),
(86, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:31:18'),
(87, 9, 2, 'print(\"1A_2B\")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:31:32'),
(88, 9, 4, 'print(\"success\")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:31:48'),
(89, 9, 5, 'print(\"success\")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:32:03'),
(90, 9, 3, 'print(\"2A_1B \")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:32:55'),
(91, 9, 6, 'print(\"success\")', 1, 100, 1, 1, 'default', 1, NULL, NULL, '2026-06-22 10:33:06'),
(92, 9, 7, 'print(\"success\")', 1, 100, 1, 1, 'default', 1, NULL, NULL, '2026-06-22 10:33:16'),
(93, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:39:34'),
(94, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:53:30'),
(95, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 10:54:05'),
(96, 9, 1, 'price = float(input(\"คุณมีรายได้: \"))\r\n\r\n# คำนวณราคารวมภาษี\r\nvat_total = price * 1.07\r\n\r\n# TODO: แสดงผลราคารวมทั้งหมดให้ถูกต้องตามรูปแบบ\r\nprint(\"ราคารวมทั้งหมดคือ:\", vat_total)', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 11:06:07'),
(97, 9, 2, 'print(\"1A_1B \")', 1, 100, 1, 1, 'default', 0, NULL, NULL, '2026-06-22 11:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_lessons`
--

CREATE TABLE `mini_game_lessons` (
  `lesson_id` int(11) NOT NULL,
  `lesson_key` varchar(80) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_lessons`
--

INSERT INTO `mini_game_lessons` (`lesson_id`, `lesson_key`, `title`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'lesson_1_print', 'Lesson 1: print()', 'เริ่มต้น Python ด้วยคำสั่ง print() และเลือกเส้นทางเนื้อเรื่อง', 1, 1, '2026-06-20 22:00:56', '2026-06-20 22:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_locations`
--

CREATE TABLE `mini_game_locations` (
  `location_id` int(11) NOT NULL,
  `location_key` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `bg_image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_locations`
--

INSERT INTO `mini_game_locations` (`location_id`, `location_key`, `name`, `description`, `bg_image_url`, `created_at`, `updated_at`) VALUES
(1, 'python_lab', 'ห้องเรียน', 'ห้องเรียนเขียนโปรแกรม', '/data_MiNiGame/scene_school.jpg', '2026-06-20 22:00:56', '2026-06-22 11:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_modules`
--

CREATE TABLE `mini_game_modules` (
  `mini_game_module_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `reward_xp` int(11) NOT NULL DEFAULT 30,
  `reward_coins` int(11) NOT NULL DEFAULT 10,
  `hint` text DEFAULT NULL,
  `starter_code` longtext DEFAULT NULL,
  `validation_mode` varchar(20) NOT NULL DEFAULT 'syntax',
  `required_syntax_json` longtext DEFAULT NULL,
  `required_vars_json` longtext DEFAULT NULL,
  `test_cases_json` longtext DEFAULT NULL,
  `success_message` text DEFAULT NULL,
  `submit_unlock_step` int(11) NOT NULL DEFAULT 0,
  `scene_background_image` varchar(255) DEFAULT 'scene_school.jpg',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_npcs`
--

CREATE TABLE `mini_game_npcs` (
  `npc_id` int(11) NOT NULL,
  `npc_key` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar_asset_url` varchar(255) DEFAULT NULL,
  `default_emotion` varchar(50) NOT NULL DEFAULT 'neutral',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_npcs`
--

INSERT INTO `mini_game_npcs` (`npc_id`, `npc_key`, `name`, `avatar_asset_url`, `default_emotion`, `description`, `created_at`, `updated_at`) VALUES
(1, 'lumi', 'Lumi', 'assets/images/npc/lumi_main.png', 'smile', 'AI ผู้ช่วยสอน Python', '2026-06-20 22:00:56', '2026-06-20 22:00:56'),
(2, 'system', 'System', NULL, 'neutral', 'ระบบจัดการสถานการณ์ของเกม', '2026-06-20 22:00:56', '2026-06-20 22:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `mini_game_user_exercise_progress`
--

CREATE TABLE `mini_game_user_exercise_progress` (
  `progress_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `reward_claimed` tinyint(1) NOT NULL DEFAULT 0,
  `best_score` int(11) NOT NULL DEFAULT 0,
  `selected_branch_key` varchar(80) NOT NULL DEFAULT 'default',
  `last_submission_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_game_user_exercise_progress`
--

INSERT INTO `mini_game_user_exercise_progress` (`progress_id`, `user_id`, `exercise_id`, `is_completed`, `completed_at`, `reward_claimed`, `best_score`, `selected_branch_key`, `last_submission_id`, `created_at`, `updated_at`) VALUES
(64, 9, 1, 1, '2026-06-17 15:28:17', 1, 100, 'default', 96, '2026-06-17 15:28:17', '2026-06-22 11:06:07'),
(65, 9, 2, 1, '2026-06-17 15:28:44', 1, 100, 'default', 97, '2026-06-17 15:28:44', '2026-06-22 11:06:46'),
(68, 9, 4, 1, '2026-06-17 15:30:24', 1, 100, 'default', 88, '2026-06-17 15:30:24', '2026-06-22 10:31:48'),
(69, 9, 5, 1, '2026-06-20 22:08:16', 1, 100, 'default', 89, '2026-06-20 22:08:16', '2026-06-22 10:32:03'),
(70, 9, 3, 1, '2026-06-20 22:08:33', 1, 100, 'default', 90, '2026-06-20 22:08:33', '2026-06-22 10:32:55'),
(91, 9, 6, 1, '2026-06-22 10:33:06', 1, 100, 'default', 91, '2026-06-22 10:33:06', '2026-06-22 10:33:06'),
(92, 9, 7, 1, '2026-06-22 10:33:16', 1, 100, 'default', 92, '2026-06-22 10:33:16', '2026-06-22 10:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `required_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `title`, `order_index`, `required_level`) VALUES
(1, 'พื้นฐาน Python', 1, 0),
(2, 'ตัวแปรและชนิดข้อมูล', 2, 0),
(3, 'เงื่อนไขและลูป', 3, 2),
(4, 'ฟังก์ชัน', 4, 4),
(5, 'โครงสร้างข้อมูล', 5, 6),
(6, 'ไฟล์และ Exception', 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `music_tracks`
--

CREATE TABLE `music_tracks` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_choices`
--

CREATE TABLE `question_choices` (
  `choice_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_choices`
--

INSERT INTO `question_choices` (`choice_id`, `question_id`, `choice_text`) VALUES
(1, 1, 'print()'),
(2, 1, 'echo()'),
(3, 1, 'write()'),
(4, 1, 'console.log()'),
(5, 4, 'print(\"สวัสดี\")'),
(6, 4, 'echo(\"สวัสดี\")'),
(7, 4, 'say \"สวัสดี\"'),
(8, 4, 'output(\"สวัสดี\")'),
(9, 5, 'Compiled'),
(10, 5, 'Interpreted'),
(11, 5, 'Assembly'),
(12, 5, 'Machine Language'),
(13, 6, '#'),
(14, 6, '//'),
(15, 6, '/*'),
(16, 6, '--'),
(17, 7, 'ไม่มีผล'),
(18, 7, 'ทำให้โปรแกรมเร็วขึ้น'),
(19, 7, 'ทำให้เกิด Error'),
(20, 7, 'แสดงผลบนหน้าจอ'),
(21, 8, 'Comment'),
(22, 8, 'ตัวแปร'),
(23, 8, 'ฟังก์ชัน'),
(24, 8, 'Operator'),
(25, 9, '# This is a comment'),
(26, 9, '// This is a comment'),
(27, 9, '/* This is a comment */'),
(28, 9, '-- This is a comment'),
(29, 10, 'input()'),
(30, 10, 'read()'),
(31, 10, 'scanf()'),
(32, 10, 'get()'),
(33, 11, 'str'),
(34, 11, 'int'),
(35, 11, 'float'),
(36, 11, 'bool'),
(37, 12, 'str'),
(38, 12, 'int'),
(39, 12, 'float'),
(40, 12, 'list'),
(41, 13, 'ใช้ int(input())'),
(42, 13, 'ใช้ input(int)'),
(43, 13, 'ใช้ number(input())'),
(44, 13, 'ไม่ต้องทำอะไร');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` varchar(20) NOT NULL DEFAULT 'choice',
  `correct_answer` text NOT NULL,
  `question_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`question_id`, `quiz_id`, `question_text`, `question_type`, `correct_answer`, `question_order`) VALUES
(1, 1, 'คำสั่งใดใช้แสดงผลข้อความใน Python?', 'choice', 'print()', 1),
(2, 1, 'ผลลัพธ์ของ print(\"Hello\") คืออะไร?', 'fill', 'Hello', 2),
(3, 2, 'print(\"Python\") จะแสดงผลอะไร?', 'fill', 'Python', 1),
(4, 2, 'คำสั่งใดถูกต้อง?', 'choice', 'print(\"สวัสดี\")', 2),
(5, 2, 'Python เป็นภาษาแบบใด?', 'choice', 'Interpreted', 3),
(6, 3, 'Comment ใน Python ใช้เครื่องหมายอะไร?', 'choice', '#', 1),
(7, 3, 'Comment มีผลต่อการทำงานของโปรแกรมหรือไม่?', 'choice', 'ไม่มีผล', 2),
(8, 4, 'เครื่องหมาย # ใน Python มีความหมายว่าอะไร?', 'choice', 'Comment', 1),
(9, 4, 'บรรทัดใดเป็น Comment ที่ถูกต้อง?', 'choice', '# This is a comment', 2),
(10, 5, 'คำสั่งใดใช้รับข้อมูลจากผู้ใช้?', 'choice', 'input()', 1),
(11, 5, 'ผลลัพธ์ของ input() มีชนิดข้อมูลเป็นอะไร?', 'choice', 'str', 2),
(12, 6, 'name = input(\"ชื่อ: \") ค่าของ name เป็นชนิดใด?', 'choice', 'str', 1),
(13, 6, 'ถ้าต้องการรับตัวเลขจาก input ต้องทำอย่างไร?', 'choice', 'ใช้ int(input())', 2);

-- --------------------------------------------------------

--
-- Table structure for table `random_events`
--

CREATE TABLE `random_events` (
  `event_id` int(11) NOT NULL,
  `event_key` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `effect_type` enum('POWER_CUT','INTERNET_CUT','BATTERY_DRAIN','SPEED_BOOST','MONEY_LOSS') NOT NULL,
  `severity` enum('LOW','MEDIUM','HIGH','CRITICAL') NOT NULL DEFAULT 'LOW',
  `base_chance_percent` int(11) NOT NULL DEFAULT 5,
  `duration_minutes` int(11) DEFAULT NULL COMMENT 'NULL = ถาวรจนจบวัน',
  `force_skip_day` tinyint(1) NOT NULL DEFAULT 0,
  `auto_resolve` tinyint(1) NOT NULL DEFAULT 0,
  `affected_systems` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`affected_systems`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `random_events`
--

INSERT INTO `random_events` (`event_id`, `event_key`, `name`, `description`, `effect_type`, `severity`, `base_chance_percent`, `duration_minutes`, `force_skip_day`, `auto_resolve`, `affected_systems`) VALUES
(1, 'BLACKOUT', '⚡ ไฟฟ้าดับ', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', 'POWER_CUT', 'CRITICAL', 0, NULL, 1, 0, '[\"charging\",\"save_warning\"]'),
(2, 'INTERNET_DOWN', '🌐 อินเทอร์เน็ตขัดข้อง', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', 'INTERNET_CUT', 'MEDIUM', 8, 30, 0, 1, '[\"job_browse\",\"job_submit\",\"job_accept\"]'),
(3, 'HEAVY_RAIN', '🌧️ ฝนตกหนัก', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', 'INTERNET_CUT', 'LOW', 15, 15, 0, 1, '[\"job_browse\",\"job_submit\"]'),
(4, 'LAPTOP_OVERHEAT', '🔥 โน๊ตบุ๊คร้อนจัด', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', 'BATTERY_DRAIN', 'MEDIUM', 5, 20, 0, 1, '[\"battery_drain_rate\"]'),
(5, 'ELECTRICITY_BILL', '💸 ค่าไฟเพิ่มขึ้น', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', 'MONEY_LOSS', 'LOW', 3, 0, 0, 1, '[\"money\"]'),
(6, 'CAFE_DISCOUNT', '☕ โปรโมชั่นร้านกาแฟ', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', 'SPEED_BOOST', 'LOW', 10, 30, 0, 1, '[\"work_speed\"]');

-- --------------------------------------------------------

--
-- Table structure for table `room_participants`
--

CREATE TABLE `room_participants` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `score` int(11) DEFAULT 0,
  `is_ready` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_items`
--

CREATE TABLE `shop_items` (
  `item_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('THEME','MOUSE_EFFECT','PROFILE_FRAME') NOT NULL,
  `rarity` enum('COMMON','RARE','EPIC','LEGENDARY') NOT NULL DEFAULT 'COMMON',
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `preview_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`preview_data`)),
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `item_type` varchar(50) DEFAULT NULL,
  `asset_url` text DEFAULT NULL,
  `preview_image` text DEFAULT NULL,
  `effects` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_items`
--

INSERT INTO `shop_items` (`item_id`, `name`, `description`, `type`, `rarity`, `price`, `preview_data`, `is_available`, `created_at`, `item_type`, `asset_url`, `preview_image`, `effects`, `is_active`) VALUES
(1, 'Default Theme', 'ธีมเริ่มต้นของเกม', 'THEME', 'COMMON', 0.00, '{\"css_class\": \"theme-default\"}', 1, '2026-03-04 18:47:52', 'THEME', NULL, NULL, '{\"css_class\": \"theme-default\"}', 1),
(2, 'Neon Cyberpunk', 'ธีมสีนีออนสไตล์ Cyberpunk', 'THEME', 'RARE', 500.00, '{\"css_class\": \"theme-neon-cyberpunk\"}', 1, '2026-03-04 18:47:52', 'THEME', NULL, NULL, '{\"css_class\": \"theme-neon-cyberpunk\"}', 1),
(3, 'Hacker Terminal', 'ธีมสไตล์ Terminal สีเขียว', 'THEME', 'EPIC', 1500.00, '{\"css_class\": \"theme-hacker\"}', 1, '2026-03-04 18:47:52', 'THEME', NULL, NULL, '{\"css_class\": \"theme-hacker\"}', 1),
(4, 'Default Cursor', 'เคอร์เซอร์เมาส์ปกติ', 'MOUSE_EFFECT', 'COMMON', 0.00, '{\"effect\": \"none\"}', 1, '2026-03-04 18:47:52', 'MOUSE_EFFECT', NULL, NULL, '{\"effect\": \"none\"}', 1),
(5, 'Sparkle Trail', 'เมาส์มีประกายแวววาว', 'MOUSE_EFFECT', 'RARE', 300.00, '{\"effect\": \"sparkle\", \"color\": \"#FFD700\"}', 1, '2026-03-04 18:47:52', 'MOUSE_EFFECT', NULL, NULL, '{\"effect\": \"sparkle\", \"color\": \"#FFD700\"}', 1),
(6, 'Fire Trail', 'เมาส์มีเปลวไฟตามหลัง', 'MOUSE_EFFECT', 'EPIC', 800.00, '{\"effect\": \"fire\", \"color\": \"#FF4500\"}', 1, '2026-03-04 18:47:52', 'MOUSE_EFFECT', NULL, NULL, '{\"effect\": \"fire\", \"color\": \"#FF4500\"}', 1),
(7, 'Matrix Rain', 'ตัวอักษรตกลงมาตามเมาส์', 'MOUSE_EFFECT', 'LEGENDARY', 2500.00, '{\"effect\": \"matrix\", \"color\": \"#00FF00\"}', 1, '2026-03-04 18:47:52', 'MOUSE_EFFECT', NULL, NULL, '{\"effect\": \"matrix\", \"color\": \"#00FF00\"}', 1),
(8, 'Basic Frame', 'กรอบโปรไฟล์พื้นฐาน', 'PROFILE_FRAME', 'COMMON', 0.00, '{\"border\": \"2px solid #888\"}', 1, '2026-03-04 18:47:52', 'PROFILE_FRAME', NULL, NULL, '{\"border\": \"2px solid #888\"}', 1),
(9, 'Gold Frame', 'กรอบโปรไฟล์สีทอง', 'PROFILE_FRAME', 'RARE', 400.00, '{\"border\": \"3px solid #FFD700\", \"glow\": true}', 1, '2026-03-04 18:47:52', 'PROFILE_FRAME', NULL, NULL, '{\"border\": \"3px solid #FFD700\", \"glow\": true}', 1),
(10, 'Diamond Frame', 'กรอบโปรไฟล์เพชร', 'PROFILE_FRAME', 'EPIC', 1200.00, '{\"border\": \"3px solid #00BFFF\", \"glow\": true, \"animation\": \"shimmer\"}', 1, '2026-03-04 18:47:52', 'PROFILE_FRAME', NULL, NULL, '{\"border\": \"3px solid #00BFFF\", \"glow\": true, \"animation\": \"shimmer\"}', 1),
(11, 'Legendary Frame', 'กรอบโปรไฟล์ตำนาน — เปลี่ยนสีอัตโนมัติ', 'PROFILE_FRAME', 'LEGENDARY', 3000.00, '{\"border\": \"4px solid\", \"glow\": true, \"animation\": \"rainbow-cycle\"}', 1, '2026-03-04 18:47:52', 'PROFILE_FRAME', NULL, NULL, '{\"border\": \"4px solid\", \"glow\": true, \"animation\": \"rainbow-cycle\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `simulation_active_events`
--

CREATE TABLE `simulation_active_events` (
  `id` int(11) NOT NULL,
  `save_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `simulation_active_events`
--

INSERT INTO `simulation_active_events` (`id`, `save_id`, `event_id`, `started_at`, `expires_at`, `is_resolved`) VALUES
(1, 1, 4, '2026-03-04 18:47:54', '2026-03-04 12:07:54', 1),
(2, 1, 1, '2026-03-04 18:47:57', NULL, 1),
(3, 1, 3, '2026-03-04 18:50:09', '2026-03-04 12:05:09', 1),
(4, 1, 1, '2026-03-04 18:50:10', NULL, 1),
(5, 1, 5, '2026-03-04 18:52:19', NULL, 1),
(6, 1, 1, '2026-03-04 18:52:19', NULL, 1),
(7, 1, 3, '2026-03-04 18:54:25', '2026-03-04 12:09:25', 1),
(8, 1, 1, '2026-03-04 18:54:30', NULL, 1),
(9, 1, 3, '2026-03-04 18:56:45', '2026-03-04 12:11:45', 1),
(10, 1, 1, '2026-03-04 18:56:45', NULL, 1),
(11, 1, 3, '2026-03-04 18:58:55', '2026-03-04 12:13:55', 1),
(12, 1, 1, '2026-03-04 18:58:56', NULL, 1),
(13, 1, 1, '2026-03-04 19:01:05', NULL, 1),
(14, 1, 1, '2026-03-04 19:03:11', NULL, 1),
(15, 1, 6, '2026-03-04 19:05:25', '2026-03-04 12:35:25', 1),
(16, 1, 1, '2026-03-04 19:05:25', NULL, 1),
(17, 1, 1, '2026-03-04 19:07:31', NULL, 1),
(18, 1, 2, '2026-03-04 19:09:41', '2026-03-04 12:39:41', 1),
(19, 1, 1, '2026-03-04 19:09:42', NULL, 1),
(20, 1, 1, '2026-03-04 19:11:52', NULL, 1),
(21, 1, 4, '2026-03-04 19:14:01', '2026-03-04 12:34:01', 1),
(22, 1, 1, '2026-03-04 19:14:02', NULL, 1),
(23, 1, 6, '2026-03-04 19:16:32', '2026-03-04 12:46:32', 1),
(24, 1, 1, '2026-03-04 19:16:37', NULL, 1),
(25, 1, 1, '2026-03-04 19:18:47', NULL, 1),
(26, 1, 2, '2026-03-04 20:03:36', '2026-03-04 13:33:36', 1),
(27, 1, 1, '2026-03-04 20:03:41', NULL, 1),
(28, 1, 1, '2026-03-05 17:39:04', NULL, 1),
(29, 1, 1, '2026-03-05 17:41:39', NULL, 1),
(30, 1, 6, '2026-03-05 17:43:50', '2026-03-05 11:13:50', 1),
(31, 1, 1, '2026-03-05 17:43:59', NULL, 1),
(32, 1, 1, '2026-03-05 17:46:14', NULL, 1),
(33, 1, 3, '2026-03-05 17:48:20', '2026-03-05 11:03:20', 1),
(34, 1, 1, '2026-03-05 17:48:30', NULL, 1),
(35, 1, 3, '2026-03-05 17:50:40', '2026-03-05 11:05:40', 1),
(36, 1, 1, '2026-03-05 17:50:41', NULL, 1),
(37, 1, 3, '2026-03-05 17:52:51', '2026-03-05 11:07:51', 1),
(38, 1, 1, '2026-03-05 17:52:55', NULL, 1),
(39, 1, 3, '2026-03-05 17:55:01', '2026-03-05 11:10:01', 1),
(40, 1, 1, '2026-03-05 17:55:01', NULL, 1),
(41, 1, 1, '2026-03-05 17:57:11', NULL, 1),
(42, 1, 3, '2026-03-05 17:59:21', '2026-03-05 11:14:21', 1),
(43, 1, 1, '2026-03-05 17:59:26', NULL, 1),
(44, 1, 1, '2026-03-05 18:01:32', NULL, 1),
(45, 1, 5, '2026-03-05 18:03:41', NULL, 1),
(46, 1, 1, '2026-03-05 18:03:42', NULL, 1),
(47, 1, 1, '2026-03-05 18:05:52', NULL, 1),
(48, 1, 1, '2026-03-05 18:08:06', NULL, 1),
(49, 1, 1, '2026-03-05 18:10:17', NULL, 1),
(50, 1, 1, '2026-03-05 18:12:23', NULL, 1),
(51, 1, 1, '2026-03-05 18:14:32', NULL, 1),
(52, 1, 4, '2026-03-05 18:16:38', '2026-03-05 11:36:38', 1),
(53, 1, 1, '2026-03-05 18:16:38', NULL, 1),
(54, 1, 1, '2026-03-05 18:18:43', NULL, 1),
(55, 1, 6, '2026-03-05 18:20:52', '2026-03-05 11:50:52', 1),
(56, 1, 1, '2026-03-05 18:20:52', NULL, 1),
(57, 1, 3, '2026-03-05 18:23:03', '2026-03-05 11:38:03', 1),
(58, 1, 1, '2026-03-05 18:23:13', NULL, 1),
(59, 1, 5, '2026-03-05 18:25:19', NULL, 1),
(60, 1, 1, '2026-03-05 18:25:19', NULL, 1),
(61, 1, 3, '2026-03-05 18:27:29', '2026-03-05 11:42:29', 1),
(62, 1, 1, '2026-03-05 18:27:34', NULL, 1),
(63, 1, 1, '2026-03-05 18:29:48', NULL, 1),
(64, 1, 3, '2026-03-05 18:31:55', '2026-03-05 11:46:55', 1),
(65, 1, 1, '2026-03-05 18:31:55', NULL, 1),
(66, 1, 6, '2026-03-05 18:34:19', '2026-03-05 12:04:19', 1),
(67, 1, 1, '2026-03-05 18:34:20', NULL, 1),
(68, 1, 4, '2026-03-05 18:36:29', '2026-03-05 11:56:29', 1),
(69, 1, 1, '2026-03-05 18:36:50', NULL, 1),
(70, 1, 3, '2026-03-05 18:39:00', '2026-03-05 11:54:00', 1),
(71, 1, 1, '2026-03-05 18:39:30', NULL, 1),
(72, 1, 1, '2026-03-07 06:37:35', NULL, 1),
(73, 1, 6, '2026-03-07 06:41:50', '2026-03-07 00:11:50', 1),
(74, 1, 1, '2026-03-07 06:42:40', NULL, 1),
(75, 1, 3, '2026-03-07 06:46:56', '2026-03-07 00:01:56', 1),
(76, 1, 1, '2026-03-07 06:47:11', NULL, 1),
(77, 1, 1, '2026-03-07 06:51:31', NULL, 1),
(78, 1, 4, '2026-03-07 06:55:46', '2026-03-07 00:15:46', 1),
(79, 1, 1, '2026-03-07 06:55:51', NULL, 1),
(80, 1, 5, '2026-03-07 07:00:07', NULL, 1),
(81, 1, 1, '2026-03-07 07:00:22', NULL, 1),
(82, 1, 1, '2026-03-07 07:04:42', NULL, 1),
(83, 1, 2, '2026-03-07 07:09:03', '2026-03-07 00:39:03', 1),
(84, 1, 1, '2026-03-07 07:09:08', NULL, 1),
(85, 1, 4, '2026-03-11 08:01:21', '2026-03-11 01:21:21', 1),
(86, 1, 1, '2026-03-11 08:01:51', NULL, 1),
(87, 1, 2, '2026-03-11 08:06:11', '2026-03-11 01:36:11', 1),
(88, 1, 1, '2026-03-11 08:06:11', NULL, 1),
(89, 1, 5, '2026-03-11 08:10:32', NULL, 1),
(90, 1, 1, '2026-03-11 08:10:32', NULL, 1),
(117, 4, 1, '2026-03-24 16:35:56', NULL, 1),
(118, 4, 6, '2026-03-24 16:40:12', '2026-03-24 10:10:12', 1),
(119, 4, 1, '2026-03-24 16:40:17', NULL, 1),
(120, 4, 6, '2026-03-24 16:44:32', '2026-03-24 10:14:32', 1),
(121, 4, 1, '2026-03-24 16:44:57', NULL, 1),
(122, 4, 1, '2026-03-24 16:49:33', NULL, 1),
(123, 4, 3, '2026-03-24 16:53:53', '2026-03-24 10:08:53', 1),
(124, 4, 1, '2026-03-24 16:53:58', NULL, 1),
(125, 5, 1, '2026-03-24 16:57:48', NULL, 1),
(126, 6, 3, '2026-03-24 16:58:04', '2026-03-24 10:13:04', 1),
(127, 6, 1, '2026-03-24 16:58:09', NULL, 1),
(128, 6, 1, '2026-03-24 17:02:29', NULL, 1),
(129, 7, 1, '2026-03-24 17:05:29', NULL, 1),
(130, 6, 3, '2026-03-24 17:06:44', '2026-03-24 10:21:44', 1),
(131, 6, 1, '2026-03-24 17:06:54', NULL, 1),
(132, 8, 2, '2026-03-24 17:08:29', '2026-03-24 10:38:29', 1),
(133, 8, 1, '2026-03-24 17:08:29', NULL, 1),
(134, 6, 1, '2026-03-24 17:11:15', NULL, 1),
(135, 8, 1, '2026-03-24 17:12:55', NULL, 1),
(136, 6, 1, '2026-03-24 17:15:35', NULL, 1),
(137, 8, 6, '2026-03-24 17:17:10', '2026-03-24 10:47:10', 1),
(138, 8, 1, '2026-03-24 17:17:10', NULL, 1),
(139, 6, 1, '2026-03-24 17:19:50', NULL, 1),
(140, 8, 1, '2026-03-24 17:21:41', NULL, 1),
(141, 6, 6, '2026-03-24 17:24:11', '2026-03-24 10:54:11', 1),
(142, 6, 1, '2026-03-24 17:24:11', NULL, 1),
(143, 8, 3, '2026-03-24 17:25:56', '2026-03-24 10:40:56', 1),
(144, 8, 1, '2026-03-24 17:26:01', NULL, 1),
(145, 6, 3, '2026-03-24 17:28:26', '2026-03-24 10:43:26', 1),
(146, 6, 1, '2026-03-24 17:28:41', NULL, 1),
(147, 8, 4, '2026-03-24 17:30:26', '2026-03-24 10:50:26', 1),
(148, 8, 1, '2026-03-24 17:30:26', NULL, 1),
(149, 6, 1, '2026-03-24 17:33:02', NULL, 1),
(150, 8, 3, '2026-03-24 17:35:07', '2026-03-24 10:50:07', 1),
(151, 8, 1, '2026-03-24 17:35:07', NULL, 1),
(152, 6, 6, '2026-03-24 17:37:22', '2026-03-24 11:07:22', 1),
(153, 6, 1, '2026-03-24 17:37:47', NULL, 1),
(154, 8, 4, '2026-03-24 17:39:22', '2026-03-24 10:59:22', 1),
(155, 8, 1, '2026-03-24 17:39:42', NULL, 1),
(156, 6, 3, '2026-03-24 17:42:03', '2026-03-24 10:57:03', 1),
(157, 6, 1, '2026-03-24 17:42:13', NULL, 1),
(158, 8, 1, '2026-03-24 17:43:58', NULL, 1),
(159, 6, 3, '2026-03-24 17:46:28', '2026-03-24 11:01:28', 1),
(160, 6, 1, '2026-03-24 17:46:38', NULL, 1),
(161, 8, 2, '2026-03-24 17:48:13', '2026-03-24 11:18:13', 1),
(162, 8, 1, '2026-03-24 17:48:13', NULL, 1),
(163, 6, 1, '2026-03-24 17:50:53', NULL, 1),
(164, 8, 3, '2026-03-24 17:52:28', '2026-03-24 11:07:28', 1),
(165, 8, 1, '2026-03-24 17:52:33', NULL, 1),
(166, 6, 4, '2026-03-24 17:55:09', '2026-03-24 11:15:09', 1),
(167, 6, 1, '2026-03-24 17:55:09', NULL, 1),
(168, 8, 3, '2026-03-24 17:56:49', '2026-03-24 11:11:49', 1),
(169, 8, 1, '2026-03-24 17:57:29', NULL, 1),
(170, 6, 4, '2026-03-24 17:59:19', '2026-03-24 11:19:19', 1),
(171, 6, 1, '2026-03-24 17:59:24', NULL, 1),
(172, 8, 1, '2026-03-26 21:40:03', NULL, 1),
(173, 8, 3, '2026-03-26 21:44:19', '2026-03-26 14:59:19', 1),
(174, 8, 1, '2026-03-26 21:44:19', NULL, 1),
(175, 8, 3, '2026-03-26 21:48:39', '2026-03-26 15:03:39', 1),
(176, 8, 1, '2026-03-26 21:49:09', NULL, 1),
(177, 8, 1, '2026-03-26 21:53:25', NULL, 1),
(178, 8, 6, '2026-03-26 21:57:40', '2026-03-26 15:27:40', 1),
(179, 8, 1, '2026-03-26 21:58:15', NULL, 1),
(180, 8, 1, '2026-03-26 22:02:40', NULL, 1),
(181, 8, 2, '2026-03-27 15:02:58', '2026-03-27 08:32:58', 1),
(182, 8, 1, '2026-03-27 15:02:58', NULL, 1),
(183, 8, 6, '2026-03-27 15:04:53', '2026-03-27 08:34:53', 1),
(184, 8, 1, '2026-03-27 15:04:58', NULL, 1),
(185, 8, 6, '2026-03-27 15:06:18', '2026-03-27 08:36:18', 1),
(186, 8, 1, '2026-03-27 15:06:23', NULL, 1),
(187, 8, 1, '2026-03-27 15:07:44', NULL, 1),
(188, 8, 4, '2026-03-27 15:09:14', '2026-03-27 08:29:14', 1),
(189, 8, 1, '2026-03-27 15:09:14', NULL, 1),
(190, 8, 1, '2026-03-27 15:10:39', NULL, 1),
(191, 8, 1, '2026-03-27 15:11:59', NULL, 1),
(192, 8, 1, '2026-03-27 15:13:24', NULL, 1),
(193, 8, 3, '2026-03-27 15:14:49', '2026-03-27 08:29:49', 1),
(194, 8, 1, '2026-03-27 15:14:54', NULL, 1),
(195, 8, 3, '2026-03-27 15:16:20', '2026-03-27 08:31:20', 1),
(196, 8, 1, '2026-03-27 15:16:30', NULL, 1),
(197, 8, 1, '2026-03-27 15:17:55', NULL, 1),
(198, 8, 4, '2026-03-27 15:19:20', '2026-03-27 08:39:20', 1),
(199, 8, 1, '2026-03-27 15:19:25', NULL, 1),
(200, 8, 6, '2026-03-27 15:20:50', '2026-03-27 08:50:50', 1),
(201, 8, 1, '2026-03-27 15:20:55', NULL, 1),
(202, 8, 3, '2026-03-27 15:22:20', '2026-03-27 08:37:20', 1),
(203, 8, 1, '2026-03-27 15:22:25', NULL, 1),
(204, 8, 5, '2026-03-27 15:23:50', NULL, 1),
(205, 8, 1, '2026-03-27 15:24:05', NULL, 1),
(206, 8, 3, '2026-03-27 15:25:35', '2026-03-27 08:40:35', 1),
(207, 8, 1, '2026-03-27 15:25:35', NULL, 1),
(208, 8, 3, '2026-03-27 15:27:01', '2026-03-27 08:42:01', 1),
(209, 8, 1, '2026-03-27 15:27:06', NULL, 1),
(210, 8, 3, '2026-03-27 15:28:22', '2026-03-27 08:43:22', 1),
(211, 8, 1, '2026-03-27 15:28:36', NULL, 1),
(212, 8, 1, '2026-03-27 15:29:41', NULL, 1),
(213, 8, 2, '2026-03-27 15:30:46', '2026-03-27 09:00:46', 1),
(214, 8, 1, '2026-03-27 15:30:46', NULL, 1),
(215, 8, 3, '2026-03-27 15:31:51', '2026-03-27 08:46:51', 1),
(216, 8, 1, '2026-03-27 15:31:52', NULL, 1),
(217, 8, 2, '2026-03-27 15:32:56', '2026-03-27 09:02:56', 1),
(218, 8, 1, '2026-03-27 15:33:07', NULL, 1),
(219, 8, 1, '2026-03-27 15:34:16', NULL, 1),
(220, 8, 4, '2026-03-27 15:35:21', '2026-03-27 08:55:21', 1),
(221, 8, 1, '2026-03-27 15:35:21', NULL, 1),
(222, 8, 3, '2026-03-27 15:36:26', '2026-03-27 08:51:26', 1),
(223, 8, 1, '2026-03-27 15:36:27', NULL, 1),
(224, 8, 1, '2026-03-27 15:37:36', NULL, 1),
(225, 8, 2, '2026-03-27 15:38:37', '2026-03-27 09:08:37', 1),
(226, 8, 1, '2026-03-27 15:38:47', NULL, 1),
(227, 8, 1, '2026-03-27 15:39:51', NULL, 1),
(228, 8, 5, '2026-03-27 15:40:57', NULL, 1),
(229, 8, 1, '2026-03-27 15:41:02', NULL, 1),
(230, 8, 2, '2026-03-27 15:42:07', '2026-03-27 09:12:07', 1),
(231, 8, 1, '2026-03-27 15:42:07', NULL, 1),
(232, 8, 4, '2026-03-27 15:43:09', '2026-03-27 09:03:09', 1),
(233, 8, 1, '2026-03-27 15:43:12', NULL, 1),
(234, 8, 1, '2026-03-27 15:44:17', NULL, 1),
(235, 8, 2, '2026-03-27 15:45:22', '2026-03-27 09:15:22', 1),
(236, 8, 1, '2026-03-27 15:45:22', NULL, 1),
(237, 8, 6, '2026-03-27 15:46:28', '2026-03-27 09:16:28', 1),
(238, 8, 1, '2026-03-27 15:46:28', NULL, 1),
(239, 8, 2, '2026-03-27 15:47:34', '2026-03-27 09:17:34', 1),
(240, 8, 1, '2026-03-27 15:47:37', NULL, 1),
(241, 8, 1, '2026-03-27 15:48:42', NULL, 1),
(242, 8, 2, '2026-03-27 15:49:48', '2026-03-27 09:19:48', 1),
(243, 8, 1, '2026-03-27 15:49:48', NULL, 1),
(244, 8, 1, '2026-03-27 15:50:53', NULL, 1),
(245, 8, 3, '2026-03-27 15:51:58', '2026-03-27 09:06:58', 1),
(246, 8, 1, '2026-03-27 15:52:00', NULL, 1),
(247, 8, 6, '2026-03-27 15:53:03', '2026-03-27 09:23:03', 1),
(248, 8, 1, '2026-03-27 15:53:05', NULL, 1),
(249, 8, 3, '2026-03-27 15:54:08', '2026-03-27 09:09:08', 1),
(250, 8, 1, '2026-03-27 15:54:13', NULL, 1),
(251, 8, 3, '2026-03-27 15:55:18', '2026-03-27 09:10:18', 1),
(252, 8, 1, '2026-03-27 15:55:23', NULL, 1),
(253, 8, 4, '2026-03-27 15:56:28', '2026-03-27 09:16:28', 1),
(254, 8, 1, '2026-03-27 15:56:30', NULL, 1),
(255, 8, 6, '2026-03-27 15:57:39', '2026-03-27 09:27:39', 1),
(256, 8, 1, '2026-03-27 15:57:50', NULL, 1),
(257, 8, 3, '2026-03-27 15:58:58', '2026-03-27 09:13:58', 1),
(258, 8, 1, '2026-03-27 15:59:00', NULL, 1),
(259, 8, 1, '2026-03-27 16:00:09', NULL, 1),
(260, 8, 3, '2026-03-27 16:01:14', '2026-03-27 09:16:14', 1),
(261, 8, 1, '2026-03-27 16:01:14', NULL, 1),
(262, 8, 3, '2026-03-27 16:02:19', '2026-03-27 09:17:19', 1),
(263, 8, 1, '2026-03-27 16:02:19', NULL, 1),
(264, 8, 3, '2026-03-27 16:03:24', '2026-03-27 09:18:24', 1),
(265, 8, 1, '2026-03-27 16:03:29', NULL, 1),
(266, 8, 2, '2026-03-27 16:04:39', '2026-03-27 09:34:39', 1),
(267, 8, 1, '2026-03-27 16:04:39', NULL, 1),
(268, 8, 4, '2026-03-27 16:05:59', '2026-03-27 09:25:59', 1),
(269, 8, 1, '2026-03-27 16:05:59', NULL, 1),
(270, 8, 2, '2026-03-27 16:07:09', '2026-03-27 09:37:09', 1),
(271, 8, 1, '2026-03-27 16:07:09', NULL, 1),
(272, 8, 1, '2026-03-27 16:08:29', NULL, 1),
(273, 8, 6, '2026-03-27 16:09:54', '2026-03-27 09:39:54', 1),
(274, 8, 1, '2026-03-27 16:09:54', NULL, 1),
(275, 8, 3, '2026-03-27 16:11:14', '2026-03-27 09:26:14', 1),
(276, 8, 1, '2026-03-27 16:11:15', NULL, 1),
(277, 8, 4, '2026-03-27 16:12:40', '2026-03-27 09:32:40', 1),
(278, 8, 1, '2026-03-27 16:12:45', NULL, 1),
(279, 8, 4, '2026-03-27 16:14:10', '2026-03-27 09:34:10', 1),
(280, 8, 1, '2026-03-27 16:14:10', NULL, 1),
(281, 8, 6, '2026-03-27 16:15:35', '2026-03-27 09:45:35', 1),
(282, 8, 1, '2026-03-27 16:15:40', NULL, 1),
(283, 8, 6, '2026-03-27 16:17:05', '2026-03-27 09:47:05', 1),
(284, 8, 1, '2026-03-27 16:17:15', NULL, 1),
(285, 8, 3, '2026-03-27 16:18:25', '2026-03-27 09:33:25', 1),
(286, 8, 1, '2026-03-27 16:18:25', NULL, 1),
(287, 8, 1, '2026-03-27 16:19:30', NULL, 1),
(288, 8, 1, '2026-03-27 16:20:41', NULL, 1),
(289, 8, 2, '2026-03-27 16:21:51', '2026-03-27 09:51:51', 1),
(290, 8, 1, '2026-03-27 16:21:51', NULL, 1),
(291, 8, 3, '2026-03-27 16:23:11', '2026-03-27 09:38:11', 1),
(292, 8, 1, '2026-03-27 16:23:11', NULL, 1),
(293, 8, 6, '2026-03-27 16:24:16', '2026-03-27 09:54:16', 1),
(294, 8, 1, '2026-03-27 16:24:16', NULL, 1),
(295, 8, 2, '2026-03-27 16:25:31', '2026-03-27 09:55:31', 1),
(296, 8, 1, '2026-03-27 16:25:31', NULL, 1),
(297, 8, 3, '2026-03-27 16:26:35', '2026-03-27 09:41:35', 1),
(298, 8, 1, '2026-03-27 16:26:35', NULL, 1),
(299, 8, 1, '2026-03-27 16:27:41', NULL, 1),
(300, 8, 3, '2026-03-27 16:27:41', '2026-03-27 09:42:41', 1),
(301, 8, 6, '2026-03-27 16:28:41', '2026-03-27 09:58:41', 1),
(302, 8, 1, '2026-03-27 16:28:50', NULL, 1),
(303, 8, 1, '2026-03-27 16:30:07', NULL, 1),
(304, 8, 1, '2026-03-27 16:31:27', NULL, 1),
(305, 8, 2, '2026-03-27 16:32:32', '2026-03-27 10:02:32', 1),
(306, 8, 1, '2026-03-27 16:32:41', NULL, 1),
(307, 8, 2, '2026-03-27 16:33:46', '2026-03-27 10:03:46', 1),
(308, 8, 1, '2026-03-27 16:33:47', NULL, 1),
(309, 8, 6, '2026-03-27 16:35:12', '2026-03-27 10:05:12', 1),
(310, 8, 1, '2026-03-27 16:35:12', NULL, 1),
(311, 8, 2, '2026-03-27 16:36:37', '2026-03-27 10:06:37', 1),
(312, 8, 1, '2026-03-27 16:36:41', NULL, 1),
(313, 8, 3, '2026-03-27 16:38:06', '2026-03-27 09:53:06', 1),
(314, 8, 1, '2026-03-27 16:38:06', NULL, 1),
(315, 8, 1, '2026-03-27 16:39:32', NULL, 1),
(316, 8, 2, '2026-03-27 16:39:32', '2026-03-27 10:09:32', 1),
(317, 8, 2, '2026-03-27 16:40:33', '2026-03-27 10:10:33', 1),
(318, 8, 1, '2026-03-27 16:40:48', NULL, 1),
(319, 8, 2, '2026-03-27 16:41:53', '2026-03-27 10:11:53', 1),
(320, 8, 1, '2026-03-27 16:41:53', NULL, 1),
(321, 8, 1, '2026-03-27 16:43:02', NULL, 1),
(322, 8, 3, '2026-03-27 16:44:03', '2026-03-27 09:59:03', 1),
(323, 8, 1, '2026-03-27 16:44:08', NULL, 1),
(324, 8, 1, '2026-03-27 16:45:12', NULL, 1),
(325, 8, 1, '2026-03-27 16:46:18', NULL, 1),
(326, 8, 4, '2026-03-27 16:47:23', '2026-03-27 10:07:23', 1),
(327, 8, 1, '2026-03-27 16:47:23', NULL, 1),
(328, 8, 1, '2026-03-27 16:48:27', NULL, 1),
(329, 8, 1, '2026-03-27 16:49:33', NULL, 1),
(330, 8, 1, '2026-03-27 20:45:40', NULL, 1),
(331, 8, 2, '2026-03-27 20:47:05', '2026-03-27 14:17:05', 1),
(332, 8, 1, '2026-03-27 20:47:06', NULL, 1),
(333, 8, 2, '2026-03-27 20:48:26', '2026-03-27 14:18:26', 1),
(334, 8, 1, '2026-03-27 20:48:31', NULL, 1),
(335, 8, 4, '2026-03-27 20:49:37', '2026-03-27 14:09:37', 1),
(336, 8, 1, '2026-03-27 20:49:41', NULL, 1),
(337, 8, 6, '2026-03-27 20:50:46', '2026-03-27 14:20:46', 1),
(338, 8, 1, '2026-03-27 20:50:46', NULL, 1),
(339, 8, 1, '2026-03-27 20:51:47', NULL, 1),
(340, 8, 3, '2026-03-27 20:52:52', '2026-03-27 14:07:52', 1),
(341, 8, 1, '2026-03-27 20:52:52', NULL, 1),
(342, 8, 1, '2026-03-27 20:53:57', NULL, 1),
(343, 8, 3, '2026-03-27 20:55:02', '2026-03-27 14:10:02', 1),
(344, 8, 1, '2026-03-27 20:55:07', NULL, 1),
(345, 8, 3, '2026-03-27 20:56:17', '2026-03-27 14:11:17', 1),
(346, 8, 1, '2026-03-27 20:56:26', NULL, 1),
(347, 8, 6, '2026-03-27 20:57:30', '2026-03-27 14:27:30', 1),
(348, 8, 1, '2026-03-27 20:57:30', NULL, 1),
(349, 8, 4, '2026-03-27 20:58:36', '2026-03-27 14:18:36', 1),
(350, 8, 1, '2026-03-27 20:58:36', NULL, 1),
(351, 8, 4, '2026-03-27 20:59:37', '2026-03-27 14:19:37', 1),
(352, 8, 1, '2026-03-27 20:59:37', NULL, 1),
(353, 8, 1, '2026-03-27 21:00:42', NULL, 1),
(354, 8, 6, '2026-03-27 21:01:47', '2026-03-27 14:31:47', 1),
(355, 8, 1, '2026-03-27 21:01:47', NULL, 1),
(356, 8, 1, '2026-03-27 21:02:58', NULL, 1),
(357, 8, 4, '2026-03-27 21:04:03', '2026-03-27 14:24:03', 1),
(358, 8, 1, '2026-03-27 21:04:08', NULL, 1),
(359, 8, 1, '2026-03-27 21:05:13', NULL, 1),
(360, 8, 3, '2026-03-27 21:06:22', '2026-03-27 14:21:22', 1),
(361, 8, 1, '2026-03-27 21:06:22', NULL, 1),
(362, 8, 1, '2026-03-27 21:07:27', NULL, 1),
(363, 8, 5, '2026-03-27 21:08:33', NULL, 1),
(364, 8, 1, '2026-03-27 21:08:33', NULL, 1),
(365, 8, 1, '2026-03-27 21:09:38', NULL, 1),
(366, 8, 6, '2026-03-27 21:10:41', '2026-03-27 14:40:41', 1),
(367, 8, 1, '2026-03-27 21:10:53', NULL, 1),
(368, 8, 3, '2026-03-27 21:11:58', '2026-03-27 14:26:58', 1),
(369, 8, 1, '2026-03-27 21:11:59', NULL, 1),
(370, 8, 1, '2026-03-27 21:13:04', NULL, 1),
(371, 8, 3, '2026-03-27 21:14:08', '2026-03-27 14:29:08', 1),
(372, 8, 1, '2026-03-27 21:14:16', NULL, 1),
(373, 8, 1, '2026-03-27 21:15:23', NULL, 1),
(374, 8, 1, '2026-03-27 21:16:26', NULL, 1),
(375, 8, 3, '2026-03-27 21:17:29', '2026-03-27 14:32:29', 1),
(376, 8, 1, '2026-03-27 21:17:31', NULL, 1),
(377, 8, 2, '2026-03-27 21:18:39', '2026-03-27 14:48:39', 1),
(378, 8, 1, '2026-03-27 21:18:40', NULL, 1),
(379, 8, 6, '2026-03-27 21:19:49', '2026-03-27 14:49:49', 1),
(380, 8, 1, '2026-03-27 21:19:49', NULL, 1),
(381, 8, 6, '2026-03-27 21:20:54', '2026-03-27 14:50:54', 1),
(382, 8, 1, '2026-03-27 21:20:59', NULL, 1),
(383, 8, 3, '2026-03-27 21:22:04', '2026-03-27 14:37:04', 1),
(384, 8, 1, '2026-03-27 21:22:04', NULL, 1),
(385, 8, 2, '2026-03-27 21:23:09', '2026-03-27 14:53:09', 1),
(386, 8, 1, '2026-03-27 21:23:10', NULL, 1),
(387, 8, 4, '2026-03-27 21:24:15', '2026-03-27 14:44:15', 1),
(388, 8, 1, '2026-03-27 21:24:19', NULL, 1),
(389, 8, 1, '2026-03-27 21:25:25', NULL, 1),
(390, 8, 1, '2026-03-27 21:26:29', NULL, 1),
(391, 8, 3, '2026-03-27 21:27:34', '2026-03-27 14:42:34', 1),
(392, 8, 1, '2026-03-27 21:27:35', NULL, 1),
(393, 8, 1, '2026-03-27 21:28:40', NULL, 1),
(394, 8, 3, '2026-03-27 21:29:45', '2026-03-27 14:44:45', 1),
(395, 8, 1, '2026-03-27 21:29:45', NULL, 1),
(396, 8, 1, '2026-03-27 21:30:49', NULL, 1),
(397, 8, 1, '2026-03-27 21:31:54', NULL, 1),
(398, 8, 1, '2026-03-27 21:32:56', NULL, 1),
(399, 8, 1, '2026-03-27 21:34:01', NULL, 1),
(400, 8, 1, '2026-03-27 21:35:09', NULL, 1),
(401, 8, 4, '2026-03-27 21:36:16', '2026-03-27 14:56:16', 1),
(402, 8, 1, '2026-03-27 21:36:21', NULL, 1),
(403, 8, 1, '2026-03-27 21:37:26', NULL, 1),
(404, 8, 6, '2026-03-27 21:38:30', '2026-03-27 15:08:30', 1),
(405, 8, 1, '2026-03-27 21:38:31', NULL, 1),
(406, 8, 3, '2026-03-27 21:39:36', '2026-03-27 14:54:36', 1),
(407, 8, 1, '2026-03-27 21:39:42', NULL, 1),
(408, 8, 1, '2026-03-27 21:40:51', NULL, 1),
(409, 8, 1, '2026-03-27 21:41:56', NULL, 1),
(410, 8, 6, '2026-03-27 21:43:04', '2026-03-27 15:13:04', 1),
(411, 8, 1, '2026-03-27 21:43:04', NULL, 1),
(412, 8, 3, '2026-03-27 21:44:12', '2026-03-27 14:59:12', 1),
(413, 8, 1, '2026-03-27 21:44:13', NULL, 1),
(414, 8, 6, '2026-03-27 21:45:23', '2026-03-27 15:15:23', 1),
(415, 8, 1, '2026-03-27 21:45:27', NULL, 1),
(416, 8, 3, '2026-03-27 21:46:33', '2026-03-27 15:01:33', 1),
(417, 8, 1, '2026-03-27 21:46:33', NULL, 1),
(418, 8, 6, '2026-03-27 21:47:42', '2026-03-27 15:17:42', 1),
(419, 8, 1, '2026-03-27 21:47:47', NULL, 1),
(420, 8, 6, '2026-03-27 21:48:52', '2026-03-27 15:18:52', 1),
(421, 8, 1, '2026-03-27 21:48:52', NULL, 1),
(422, 8, 1, '2026-03-27 21:50:02', NULL, 1),
(423, 8, 3, '2026-03-27 21:51:08', '2026-03-27 15:06:08', 1),
(424, 8, 1, '2026-03-27 21:51:12', NULL, 1),
(425, 8, 3, '2026-03-27 21:52:17', '2026-03-27 15:07:17', 1),
(426, 8, 1, '2026-03-27 21:52:18', NULL, 1),
(427, 8, 1, '2026-03-27 21:53:23', NULL, 1),
(428, 8, 1, '2026-03-27 21:54:31', NULL, 1),
(429, 8, 3, '2026-03-27 21:55:37', '2026-03-27 15:10:37', 1),
(430, 8, 1, '2026-03-27 21:55:37', NULL, 1),
(431, 8, 4, '2026-03-27 21:56:57', '2026-03-27 15:16:57', 1),
(432, 8, 1, '2026-03-27 21:56:57', NULL, 1),
(433, 8, 3, '2026-03-27 21:58:23', '2026-03-27 15:13:23', 1),
(434, 8, 1, '2026-03-27 21:58:23', NULL, 1),
(435, 8, 4, '2026-03-27 21:59:48', '2026-03-27 15:19:48', 1),
(436, 8, 1, '2026-03-27 21:59:52', NULL, 1),
(437, 8, 1, '2026-03-27 22:01:18', NULL, 1),
(438, 8, 3, '2026-03-27 22:02:43', '2026-03-27 15:17:43', 1),
(439, 8, 1, '2026-03-27 22:02:43', NULL, 1),
(440, 8, 1, '2026-03-27 22:04:08', NULL, 1),
(441, 8, 1, '2026-03-27 22:05:33', NULL, 1),
(442, 8, 6, '2026-03-27 22:06:59', '2026-03-27 15:36:59', 1),
(443, 8, 1, '2026-03-27 22:07:08', NULL, 1),
(444, 8, 6, '2026-03-27 22:08:34', '2026-03-27 15:38:34', 1),
(445, 8, 1, '2026-03-27 22:08:34', NULL, 1),
(446, 8, 3, '2026-03-27 22:09:59', '2026-03-27 15:24:59', 1),
(447, 8, 1, '2026-03-27 22:09:59', NULL, 1),
(448, 8, 3, '2026-03-27 22:11:29', '2026-03-27 15:26:29', 1),
(449, 8, 1, '2026-03-27 22:11:30', NULL, 1),
(450, 8, 3, '2026-03-27 22:12:59', '2026-03-27 15:27:59', 1),
(451, 8, 1, '2026-03-27 22:13:09', NULL, 1),
(452, 8, 1, '2026-03-27 22:14:34', NULL, 1),
(453, 8, 2, '2026-03-27 22:15:59', '2026-03-27 15:45:59', 1),
(454, 8, 1, '2026-03-27 22:16:14', NULL, 1),
(455, 8, 1, '2026-03-27 22:17:40', NULL, 1),
(456, 8, 3, '2026-03-27 22:19:05', '2026-03-27 15:34:05', 1),
(457, 8, 1, '2026-03-27 22:19:20', NULL, 1),
(458, 8, 3, '2026-03-27 22:20:45', '2026-03-27 15:35:45', 1),
(459, 8, 1, '2026-03-27 22:20:55', NULL, 1),
(460, 8, 1, '2026-03-27 22:22:21', NULL, 1),
(461, 8, 3, '2026-03-27 22:23:50', '2026-03-27 15:38:50', 1),
(462, 8, 1, '2026-03-27 22:23:55', NULL, 1),
(463, 8, 1, '2026-03-27 22:25:20', NULL, 1),
(464, 8, 5, '2026-03-27 22:26:45', NULL, 1),
(465, 8, 1, '2026-03-27 22:26:45', NULL, 1),
(466, 8, 1, '2026-03-27 22:28:11', NULL, 1),
(467, 8, 1, '2026-03-27 22:29:41', NULL, 1),
(468, 8, 1, '2026-03-27 22:31:06', NULL, 1),
(469, 8, 1, '2026-03-27 22:32:31', NULL, 1),
(470, 8, 3, '2026-03-27 22:33:56', '2026-03-27 15:48:56', 1),
(471, 8, 1, '2026-03-27 22:33:57', NULL, 1),
(472, 8, 3, '2026-03-27 22:35:31', '2026-03-27 15:50:31', 1),
(473, 8, 1, '2026-03-27 22:35:31', NULL, 1),
(474, 8, 5, '2026-03-27 22:36:57', NULL, 1),
(475, 8, 1, '2026-03-27 22:37:06', NULL, 1),
(476, 8, 1, '2026-03-27 22:38:32', NULL, 1),
(477, 8, 2, '2026-03-27 22:39:57', '2026-03-27 16:09:57', 1),
(478, 8, 1, '2026-03-27 22:39:57', NULL, 1),
(479, 8, 3, '2026-03-27 22:41:22', '2026-03-27 15:56:22', 1),
(480, 8, 1, '2026-03-27 22:41:22', NULL, 1),
(481, 8, 1, '2026-03-27 22:42:47', NULL, 1),
(482, 8, 1, '2026-03-27 22:44:17', NULL, 1),
(483, 8, 3, '2026-03-27 22:45:42', '2026-03-27 16:00:42', 1),
(484, 8, 1, '2026-03-27 22:45:43', NULL, 1),
(485, 8, 3, '2026-03-27 22:47:08', '2026-03-27 16:02:08', 1),
(486, 8, 1, '2026-03-27 22:47:12', NULL, 1),
(487, 8, 2, '2026-03-27 22:48:37', '2026-03-27 16:18:37', 1),
(488, 8, 1, '2026-03-27 22:48:38', NULL, 1),
(489, 8, 2, '2026-03-27 22:50:03', '2026-03-27 16:20:03', 1),
(490, 8, 1, '2026-03-27 22:50:08', NULL, 1),
(491, 8, 1, '2026-03-27 22:51:33', NULL, 1),
(492, 8, 1, '2026-03-27 22:52:58', NULL, 1),
(493, 8, 2, '2026-03-27 22:54:27', '2026-03-27 16:24:27', 1),
(494, 8, 1, '2026-03-27 22:54:28', NULL, 1),
(495, 8, 1, '2026-03-27 22:55:53', NULL, 1),
(496, 8, 6, '2026-03-27 22:57:18', '2026-03-27 16:27:18', 1),
(497, 8, 1, '2026-03-27 22:57:18', NULL, 1),
(498, 8, 1, '2026-03-27 22:58:43', NULL, 1),
(499, 8, 3, '2026-03-27 23:00:09', '2026-03-27 16:15:09', 1),
(500, 8, 1, '2026-03-27 23:00:14', NULL, 1),
(501, 8, 1, '2026-03-28 03:44:55', NULL, 1),
(502, 8, 1, '2026-03-28 03:46:25', NULL, 1),
(503, 8, 6, '2026-03-28 03:47:50', '2026-03-27 21:17:50', 1),
(504, 8, 1, '2026-03-28 03:47:51', NULL, 1),
(505, 8, 1, '2026-03-28 03:49:16', NULL, 1),
(506, 8, 1, '2026-03-28 03:50:41', NULL, 1),
(507, 8, 1, '2026-03-28 03:52:11', NULL, 1),
(508, 8, 1, '2026-03-28 03:53:36', NULL, 1),
(509, 8, 2, '2026-03-28 03:55:06', '2026-03-27 21:25:06', 1),
(510, 8, 1, '2026-03-28 03:55:21', NULL, 1),
(511, 8, 4, '2026-03-28 03:56:46', '2026-03-27 21:16:46', 1),
(512, 8, 1, '2026-03-28 03:56:46', NULL, 1),
(513, 8, 1, '2026-03-28 03:58:11', NULL, 1),
(514, 8, 3, '2026-03-28 03:59:36', '2026-03-27 21:14:36', 1),
(515, 8, 1, '2026-03-28 03:59:42', NULL, 1),
(516, 8, 1, '2026-03-28 04:01:07', NULL, 1),
(517, 8, 1, '2026-03-28 04:02:32', NULL, 1),
(518, 8, 6, '2026-03-28 04:03:52', '2026-03-27 21:33:52', 1),
(519, 8, 1, '2026-03-28 04:03:52', NULL, 1),
(520, 8, 3, '2026-03-28 04:04:57', '2026-03-27 21:19:57', 1),
(521, 8, 1, '2026-03-28 04:04:57', NULL, 1),
(522, 8, 4, '2026-03-28 04:06:02', '2026-03-27 21:26:02', 1),
(523, 8, 1, '2026-03-28 04:06:07', NULL, 1),
(524, 8, 1, '2026-03-28 04:07:10', NULL, 1),
(525, 8, 1, '2026-03-28 04:08:15', NULL, 1),
(526, 8, 1, '2026-03-28 04:09:37', NULL, 1),
(527, 8, 1, '2026-03-28 04:11:02', NULL, 1),
(528, 8, 1, '2026-03-28 04:12:33', NULL, 1),
(529, 8, 2, '2026-03-28 04:14:03', '2026-03-27 21:44:03', 1),
(530, 8, 1, '2026-03-28 04:14:03', NULL, 1),
(531, 8, 3, '2026-03-28 04:15:28', '2026-03-27 21:30:28', 1),
(532, 8, 1, '2026-03-28 04:15:37', NULL, 1),
(533, 8, 2, '2026-03-28 04:17:02', '2026-03-27 21:47:02', 1),
(534, 8, 1, '2026-03-28 04:17:08', NULL, 1),
(535, 8, 2, '2026-03-28 04:18:37', '2026-03-27 21:48:37', 1),
(536, 8, 1, '2026-03-28 04:18:43', NULL, 1),
(537, 8, 5, '2026-03-28 04:20:13', NULL, 1),
(538, 8, 1, '2026-03-28 04:20:28', NULL, 1),
(539, 8, 3, '2026-03-28 04:21:54', '2026-03-27 21:36:54', 1),
(540, 8, 1, '2026-03-28 04:22:04', NULL, 1),
(541, 8, 1, '2026-03-28 04:23:33', NULL, 1),
(542, 8, 1, '2026-03-28 04:24:59', NULL, 1),
(543, 8, 3, '2026-03-28 04:26:24', '2026-03-27 21:41:24', 1),
(544, 8, 1, '2026-03-28 04:26:29', NULL, 1),
(545, 8, 1, '2026-03-28 04:27:54', NULL, 1),
(546, 8, 3, '2026-03-28 04:29:23', '2026-03-27 21:44:23', 1),
(547, 8, 1, '2026-03-28 04:29:24', NULL, 1),
(548, 8, 1, '2026-03-28 04:30:49', NULL, 1),
(549, 8, 6, '2026-03-28 04:32:14', '2026-03-27 22:02:14', 1),
(550, 8, 1, '2026-03-28 04:32:15', NULL, 1),
(551, 8, 1, '2026-03-28 04:33:40', NULL, 1),
(552, 8, 1, '2026-03-28 04:35:05', NULL, 1),
(553, 8, 4, '2026-03-28 04:36:30', '2026-03-27 21:56:30', 1),
(554, 8, 1, '2026-03-28 04:36:30', NULL, 1),
(555, 8, 1, '2026-03-28 04:37:55', NULL, 1),
(556, 8, 1, '2026-03-28 04:39:20', NULL, 1),
(557, 8, 6, '2026-03-28 04:40:49', '2026-03-27 22:10:49', 1),
(558, 8, 1, '2026-03-28 04:41:00', NULL, 1),
(559, 8, 3, '2026-03-28 04:42:26', '2026-03-27 21:57:26', 1),
(560, 8, 1, '2026-03-28 04:42:40', NULL, 1),
(561, 8, 1, '2026-03-28 04:44:06', NULL, 1),
(562, 8, 1, '2026-03-28 04:45:31', NULL, 1),
(563, 8, 1, '2026-03-28 04:46:56', NULL, 1),
(564, 8, 3, '2026-03-28 08:04:41', '2026-03-28 01:19:41', 1),
(565, 8, 1, '2026-03-28 08:04:41', NULL, 1),
(566, 8, 1, '2026-03-28 08:08:56', NULL, 1),
(567, 9, 1, '2026-03-28 08:10:11', NULL, 1),
(568, 8, 2, '2026-03-28 08:13:11', '2026-03-28 01:43:11', 1),
(569, 8, 1, '2026-03-28 08:13:21', NULL, 1),
(570, 9, 3, '2026-03-28 08:14:26', '2026-03-28 01:29:26', 1),
(571, 9, 1, '2026-03-28 08:14:37', NULL, 1),
(572, 8, 6, '2026-03-28 08:17:37', '2026-03-28 01:47:37', 1),
(573, 8, 1, '2026-03-28 08:17:42', NULL, 0),
(574, 9, 1, '2026-03-28 08:18:52', NULL, 1),
(575, 10, 1, '2026-03-29 21:59:59', NULL, 1),
(576, 11, 1, '2026-03-29 22:00:29', NULL, 1),
(577, 12, 6, '2026-04-23 06:21:45', '2026-04-22 23:51:45', 1),
(578, 13, 1, '2026-04-23 06:21:45', NULL, 0),
(579, 12, 1, '2026-04-23 06:21:55', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `simulation_logs`
--

CREATE TABLE `simulation_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `save_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `event_type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `simulation_logs`
--

INSERT INTO `simulation_logs` (`log_id`, `user_id`, `save_id`, `event_id`, `event_type`, `message`, `created_at`) VALUES
(1, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:07'),
(2, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:17'),
(3, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:21'),
(4, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:27'),
(5, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:32'),
(6, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:35'),
(7, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:42'),
(8, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:44'),
(9, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:48'),
(10, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:51'),
(11, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:55:53'),
(12, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:04'),
(13, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:07'),
(14, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:09'),
(15, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:18'),
(16, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:21'),
(17, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:26'),
(18, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:30'),
(19, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:35'),
(20, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:38'),
(21, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:41'),
(22, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:46'),
(23, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:54'),
(24, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:56:59'),
(25, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:10'),
(26, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:14'),
(27, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:17'),
(28, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:27'),
(29, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:30'),
(30, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:34'),
(31, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:46'),
(32, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:49'),
(33, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:57:55'),
(34, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:00'),
(35, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:05'),
(36, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:10'),
(37, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:17'),
(38, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:20'),
(39, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:23'),
(40, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:31'),
(41, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:33'),
(42, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:38'),
(43, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:43'),
(44, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:46'),
(45, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:58:53'),
(46, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:01'),
(47, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:11'),
(48, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:14'),
(49, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:21'),
(50, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:23'),
(51, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:27'),
(52, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:38'),
(53, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:47'),
(54, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:56'),
(55, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 08:59:59'),
(56, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:06'),
(57, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:10'),
(58, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:14'),
(59, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:20'),
(60, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:31'),
(61, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:34'),
(62, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:37'),
(63, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:41'),
(64, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:46'),
(65, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:00:58'),
(66, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:03'),
(67, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:06'),
(68, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:08'),
(69, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:13'),
(70, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:18'),
(71, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:24'),
(72, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:26'),
(73, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:28'),
(74, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:32'),
(75, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:36'),
(76, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:39'),
(77, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:42'),
(78, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:52'),
(79, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:01:57'),
(80, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:01'),
(81, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:15'),
(82, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:18'),
(83, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:24'),
(84, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:29'),
(85, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:32'),
(86, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:38'),
(87, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:48'),
(88, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:02:57'),
(89, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:02'),
(90, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:06'),
(91, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:11'),
(92, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:18'),
(93, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:21'),
(94, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:25'),
(95, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:33'),
(96, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:49'),
(97, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:51'),
(98, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:03:58'),
(99, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:01'),
(100, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:12'),
(101, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:17'),
(102, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:19'),
(103, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:25'),
(104, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:27'),
(105, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:29'),
(106, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:32'),
(107, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:37'),
(108, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:42'),
(109, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:46'),
(110, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:48'),
(111, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:50'),
(112, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:55'),
(113, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:04:58'),
(114, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:09'),
(115, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:14'),
(116, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:19'),
(117, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:26'),
(118, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:30'),
(119, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:33'),
(120, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:39'),
(121, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:43'),
(122, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:48'),
(123, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:54'),
(124, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:05:59'),
(125, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:02'),
(126, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:08'),
(127, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:10'),
(128, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:18'),
(129, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:22'),
(130, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:26'),
(131, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:32'),
(132, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:40'),
(133, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:45'),
(134, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:50'),
(135, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:55'),
(136, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:06:59'),
(137, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:03'),
(138, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:07'),
(139, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:12'),
(140, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:22'),
(141, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:32'),
(142, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:37'),
(143, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:43'),
(144, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:07:52'),
(145, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:02'),
(146, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:05'),
(147, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:07'),
(148, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:13'),
(149, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:20'),
(150, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:22'),
(151, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:27'),
(152, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:37'),
(153, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:42'),
(154, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:44'),
(155, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:46'),
(156, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:51'),
(157, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:08:54'),
(158, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:05'),
(159, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:14'),
(160, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:23'),
(161, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:28'),
(162, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:31'),
(163, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:35'),
(164, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:39'),
(165, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:43'),
(166, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:49'),
(167, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:09:59'),
(168, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:03'),
(169, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:09'),
(170, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:13'),
(171, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:17'),
(172, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:21'),
(173, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:24'),
(174, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:27'),
(175, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:31'),
(176, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:34'),
(177, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:38'),
(178, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:44'),
(179, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:49'),
(180, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:52'),
(181, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:55'),
(182, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:10:58'),
(183, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:03'),
(184, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:07'),
(185, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:11'),
(186, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:14'),
(187, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:18'),
(188, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:21'),
(189, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:30'),
(190, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:33'),
(191, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:38'),
(192, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:43'),
(193, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:47'),
(194, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:49'),
(195, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:51'),
(196, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:11:56'),
(197, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:05'),
(198, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:13'),
(199, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:19'),
(200, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:23'),
(201, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:30'),
(202, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:35'),
(203, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:38'),
(204, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:42'),
(205, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:12:48'),
(206, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:04'),
(207, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:06'),
(208, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:13'),
(209, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:16'),
(210, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:20'),
(211, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:24'),
(212, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:33'),
(213, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:40'),
(214, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:42'),
(215, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:48'),
(216, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:13:54'),
(217, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:02'),
(218, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:08'),
(219, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:10'),
(220, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:15'),
(221, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:22'),
(222, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:25'),
(223, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:30'),
(224, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:34'),
(225, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:41'),
(226, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:43'),
(227, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:47'),
(228, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:51'),
(229, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:14:56'),
(230, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:04'),
(231, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:08'),
(232, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:11'),
(233, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:14'),
(234, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:18'),
(235, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:23'),
(236, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:35'),
(237, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:38'),
(238, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:44'),
(239, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:48'),
(240, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:51'),
(241, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:55'),
(242, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:15:59'),
(243, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:02'),
(244, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:06'),
(245, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:12'),
(246, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:14'),
(247, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:23'),
(248, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:25'),
(249, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:33'),
(250, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:35'),
(251, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:38'),
(252, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:40'),
(253, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:43'),
(254, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:50'),
(255, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:16:53'),
(256, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:00'),
(257, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:02'),
(258, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:06'),
(259, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:11'),
(260, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:13'),
(261, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:16'),
(262, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:35'),
(263, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:39'),
(264, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:45'),
(265, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:17:55'),
(266, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:20'),
(267, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:22'),
(268, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:24'),
(269, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:27'),
(270, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:30'),
(271, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:41'),
(272, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:44'),
(273, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:49'),
(274, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:51'),
(275, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:18:55'),
(276, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:04'),
(277, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:10'),
(278, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:14'),
(279, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:18'),
(280, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:20'),
(281, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:23'),
(282, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:25'),
(283, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:30'),
(284, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:37'),
(285, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:40'),
(286, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:47'),
(287, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:50'),
(288, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:54'),
(289, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:19:58'),
(290, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:00'),
(291, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:07'),
(292, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:14'),
(293, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:19'),
(294, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:23'),
(295, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:25'),
(296, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:29'),
(297, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:34'),
(298, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:38'),
(299, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:41'),
(300, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:51'),
(301, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:53'),
(302, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:20:57'),
(303, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:21:00'),
(304, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:21:10'),
(305, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:21:15'),
(306, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-18 09:21:17'),
(307, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:10:57'),
(308, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:05'),
(309, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:09'),
(310, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:11'),
(311, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:14'),
(312, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:19'),
(313, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:23'),
(314, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:28'),
(315, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:33'),
(316, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:39'),
(317, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:42'),
(318, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:50'),
(319, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:52'),
(320, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:54'),
(321, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:11:57'),
(322, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:01'),
(323, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:06'),
(324, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:09'),
(325, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:15'),
(326, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:17'),
(327, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:20'),
(328, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:26'),
(329, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:38'),
(330, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:12:52'),
(331, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:05'),
(332, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:21'),
(333, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:27'),
(334, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:38'),
(335, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:42'),
(336, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:49'),
(337, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:53'),
(338, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:13:55'),
(339, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:03'),
(340, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:08'),
(341, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:11'),
(342, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:13'),
(343, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:28'),
(344, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:36'),
(345, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:41'),
(346, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:45'),
(347, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:50'),
(348, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:54'),
(349, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:14:59'),
(350, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:03'),
(351, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:07'),
(352, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:13'),
(353, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:22'),
(354, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:24'),
(355, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:31'),
(356, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:38'),
(357, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:46'),
(358, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:48'),
(359, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:15:52'),
(360, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:01'),
(361, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:05'),
(362, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:11'),
(363, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:18'),
(364, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:20'),
(365, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:25'),
(366, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:30'),
(367, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:34'),
(368, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:41'),
(369, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:16:49'),
(370, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:09'),
(371, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:18'),
(372, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:24'),
(373, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:32'),
(374, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:36'),
(375, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:43'),
(376, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:46'),
(377, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:52'),
(378, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:17:57'),
(379, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:02'),
(380, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:06'),
(381, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:14'),
(382, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:20'),
(383, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:22'),
(384, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:26'),
(385, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:40'),
(386, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:43'),
(387, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:50'),
(388, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:18:57'),
(389, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:02'),
(390, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:07'),
(391, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:15'),
(392, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:19'),
(393, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:23'),
(394, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:26'),
(395, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:28'),
(396, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:33'),
(397, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:41'),
(398, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:44'),
(399, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:50'),
(400, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:19:56'),
(401, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:02'),
(402, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:10'),
(403, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:16'),
(404, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:20'),
(405, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:23'),
(406, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:33'),
(407, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:35'),
(408, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:40'),
(409, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:46'),
(410, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:52'),
(411, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:20:57'),
(412, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:08'),
(413, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:14'),
(414, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:20'),
(415, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:23'),
(416, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:26'),
(417, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:42'),
(418, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:45'),
(419, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:55'),
(420, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:21:58'),
(421, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:01'),
(422, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:07'),
(423, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:11'),
(424, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:17'),
(425, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:20'),
(426, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:50'),
(427, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:55'),
(428, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:22:59'),
(429, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:06'),
(430, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:09'),
(431, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:13'),
(432, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:23'),
(433, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:29'),
(434, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:36'),
(435, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:42'),
(436, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:23:51'),
(437, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:01'),
(438, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:05'),
(439, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:11'),
(440, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:13'),
(441, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:22'),
(442, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:24'),
(443, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:26'),
(444, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:32'),
(445, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:35'),
(446, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:38'),
(447, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:45'),
(448, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:48'),
(449, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:50'),
(450, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:53'),
(451, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:56'),
(452, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:24:58'),
(453, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:08'),
(454, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:11'),
(455, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:18'),
(456, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:22'),
(457, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:26'),
(458, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:32'),
(459, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:38'),
(460, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:43'),
(461, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:50'),
(462, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:25:59'),
(463, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:05'),
(464, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:10'),
(465, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:12'),
(466, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:15'),
(467, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:18'),
(468, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:24'),
(469, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:28'),
(470, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:36'),
(471, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:40'),
(472, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:44'),
(473, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:46'),
(474, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:54'),
(475, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:26:59'),
(476, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:03'),
(477, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:07'),
(478, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:14'),
(479, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:20'),
(480, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:22'),
(481, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:26'),
(482, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:28'),
(483, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:46'),
(484, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:27:58'),
(485, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:28:01');
INSERT INTO `simulation_logs` (`log_id`, `user_id`, `save_id`, `event_id`, `event_type`, `message`, `created_at`) VALUES
(486, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:28:04'),
(487, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-19 21:28:11'),
(488, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:09:11'),
(489, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:10:07'),
(490, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:11:12'),
(491, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:11:52'),
(492, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:12:12'),
(493, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:12:22'),
(494, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:12:32'),
(495, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:12:42'),
(496, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:12:52'),
(497, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:13:27'),
(498, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:14:12'),
(499, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:14:27'),
(500, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:15:12'),
(501, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:15:37'),
(502, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:16:07'),
(503, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-20 05:16:17'),
(504, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:55:43'),
(505, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:55:58'),
(506, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:56:13'),
(507, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:56:28'),
(508, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:57:13'),
(509, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:57:28'),
(510, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:57:48'),
(511, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:58:04'),
(512, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:58:19'),
(513, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:58:44'),
(514, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:59:14'),
(515, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 03:59:54'),
(516, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:00:14'),
(517, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:00:39'),
(518, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:01:24'),
(519, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:01:34'),
(520, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:01:49'),
(521, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:02:29'),
(522, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:03:36'),
(523, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:03:46'),
(524, 1, NULL, NULL, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! ระบบกำลังใช้แบตเตอรี่สำรอง', '2026-02-21 04:04:01'),
(525, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-04 18:47:54'),
(526, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-04 18:47:57'),
(527, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:47:57'),
(528, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 18:50:05'),
(529, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-04 18:50:09'),
(530, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-04 18:50:10'),
(531, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:50:10'),
(532, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 18:52:15'),
(533, 1, 1, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-04 18:52:19'),
(534, 1, 1, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 128 ฿', '2026-03-04 18:52:19'),
(535, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:52:19'),
(536, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 18:54:24'),
(537, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-04 18:54:25'),
(538, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-04 18:54:29'),
(539, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:54:30'),
(540, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 18:56:35'),
(541, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-04 18:56:45'),
(542, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:56:45'),
(543, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-04 18:56:50'),
(544, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 18:58:51'),
(545, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-04 18:58:55'),
(546, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-04 18:58:56'),
(547, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 18:58:56'),
(548, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:01:01'),
(549, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:01:05'),
(550, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:03:10'),
(551, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:03:11'),
(552, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:05:16'),
(553, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-04 19:05:25'),
(554, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:05:25'),
(555, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-04 19:05:26'),
(556, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:07:31'),
(557, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:07:31'),
(558, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:09:37'),
(559, 1, 1, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-04 19:09:41'),
(560, 1, 1, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-04 19:09:42'),
(561, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:09:42'),
(562, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:11:47'),
(563, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:11:52'),
(564, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:13:57'),
(565, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-04 19:14:01'),
(566, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-04 19:14:02'),
(567, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:14:02'),
(568, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:16:27'),
(569, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-04 19:16:32'),
(570, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-04 19:16:37'),
(571, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:16:37'),
(572, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 19:18:42'),
(573, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 19:18:47'),
(574, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-04 20:03:26'),
(575, 1, 1, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-04 20:03:36'),
(576, 1, 1, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-04 20:03:41'),
(577, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-04 20:03:41'),
(578, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:38:59'),
(579, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:39:04'),
(580, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:41:35'),
(581, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:41:39'),
(582, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:43:44'),
(583, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-05 17:43:50'),
(584, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-05 17:43:54'),
(585, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:43:59'),
(586, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:46:04'),
(587, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:46:14'),
(588, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:48:20'),
(589, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 17:48:20'),
(590, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 17:48:25'),
(591, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:48:30'),
(592, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:50:36'),
(593, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 17:50:40'),
(594, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 17:50:41'),
(595, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:50:41'),
(596, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:52:46'),
(597, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 17:52:51'),
(598, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 17:52:55'),
(599, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:52:55'),
(600, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:55:00'),
(601, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 17:55:01'),
(602, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:55:01'),
(603, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 17:55:05'),
(604, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:57:06'),
(605, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:57:11'),
(606, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 17:59:16'),
(607, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 17:59:21'),
(608, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 17:59:21'),
(609, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 17:59:26'),
(610, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:01:31'),
(611, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:01:32'),
(612, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:03:37'),
(613, 1, 1, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-05 18:03:41'),
(614, 1, 1, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 134 ฿', '2026-03-05 18:03:41'),
(615, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:03:42'),
(616, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:05:47'),
(617, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:05:52'),
(618, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:07:57'),
(619, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:08:06'),
(620, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:10:12'),
(621, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:10:17'),
(622, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:12:22'),
(623, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:12:23'),
(624, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:14:28'),
(625, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:14:32'),
(626, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:16:37'),
(627, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-05 18:16:38'),
(628, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:16:38'),
(629, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-05 18:16:42'),
(630, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:18:42'),
(631, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:18:43'),
(632, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:20:49'),
(633, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-05 18:20:52'),
(634, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:20:52'),
(635, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-05 18:20:54'),
(636, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:22:58'),
(637, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 18:23:03'),
(638, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 18:23:04'),
(639, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:23:13'),
(640, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:25:18'),
(641, 1, 1, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-05 18:25:19'),
(642, 1, 1, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 259 ฿', '2026-03-05 18:25:19'),
(643, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:25:19'),
(644, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:27:24'),
(645, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 18:27:29'),
(646, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 18:27:33'),
(647, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:27:34'),
(648, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:29:39'),
(649, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:29:48'),
(650, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:31:53'),
(651, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 18:31:55'),
(652, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:31:55'),
(653, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 18:31:59'),
(654, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:34:00'),
(655, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-05 18:34:19'),
(656, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-05 18:34:20'),
(657, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:34:20'),
(658, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:36:25'),
(659, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-05 18:36:29'),
(660, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-05 18:36:30'),
(661, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:36:50'),
(662, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-05 18:38:55'),
(663, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-05 18:39:00'),
(664, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-05 18:39:04'),
(665, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-05 18:39:30'),
(666, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 06:37:30'),
(667, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 06:37:35'),
(668, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 06:41:45'),
(669, 1, 1, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-07 06:41:50'),
(670, 1, 1, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-07 06:41:55'),
(671, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 06:42:40'),
(672, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 06:46:51'),
(673, 1, 1, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-07 06:46:56'),
(674, 1, 1, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-07 06:47:01'),
(675, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 06:47:11'),
(676, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 06:51:21'),
(677, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 06:51:31'),
(678, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 06:55:41'),
(679, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-07 06:55:46'),
(680, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-07 06:55:51'),
(681, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 06:55:51'),
(682, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 07:00:02'),
(683, 1, 1, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-07 07:00:07'),
(684, 1, 1, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 146 ฿', '2026-03-07 07:00:07'),
(685, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 07:00:22'),
(686, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 07:04:32'),
(687, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 07:04:42'),
(688, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-07 07:08:53'),
(689, 1, 1, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-07 07:09:03'),
(690, 1, 1, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-07 07:09:08'),
(691, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-07 07:09:08'),
(692, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-11 08:01:16'),
(693, 1, 1, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-11 08:01:21'),
(694, 1, 1, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-11 08:01:26'),
(695, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-11 08:01:51'),
(696, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-11 08:06:01'),
(697, 1, 1, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-11 08:06:11'),
(698, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-11 08:06:11'),
(699, 1, 1, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-11 08:06:16'),
(700, 1, 1, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-11 08:10:21'),
(701, 1, 1, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-11 08:10:32'),
(702, 1, 1, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 173 ฿', '2026-03-11 08:10:32'),
(703, 1, 1, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-11 08:10:32'),
(704, 1, 1, NULL, 'NEW_DAY', 'เริ่มวันที่ 56', '2026-03-11 08:49:17'),
(755, 1, 1, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 56 — Game Over', '2026-03-24 16:35:52'),
(756, 1, 4, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:35:56'),
(757, 1, 4, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 16:40:07'),
(758, 1, 4, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-24 16:40:12'),
(759, 1, 4, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-24 16:40:17'),
(760, 1, 4, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:40:17'),
(761, 1, 4, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 16:44:27'),
(762, 1, 4, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-24 16:44:32'),
(763, 1, 4, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-24 16:44:37'),
(764, 1, 4, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:44:57'),
(765, 1, 4, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 16:49:08'),
(766, 1, 4, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:49:33'),
(767, 1, 4, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 16:53:43'),
(768, 1, 4, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 16:53:53'),
(769, 1, 4, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 16:53:58'),
(770, 1, 4, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:53:58'),
(771, 1, 4, NULL, 'NEW_DAY', 'เริ่มวันที่ 6', '2026-03-24 16:57:34'),
(772, 1, 4, NULL, 'NEW_DAY', 'เริ่มวันที่ 7', '2026-03-24 16:57:43'),
(773, 1, 4, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 7 — Game Over', '2026-03-24 16:57:45'),
(774, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 2', '2026-03-24 16:57:48'),
(775, 1, 5, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:57:48'),
(776, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 3', '2026-03-24 16:57:50'),
(777, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 4', '2026-03-24 16:57:52'),
(778, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 5', '2026-03-24 16:57:53'),
(779, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 6', '2026-03-24 16:57:55'),
(780, 1, 5, NULL, 'NEW_DAY', 'เริ่มวันที่ 7', '2026-03-24 16:57:56'),
(781, 1, 5, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 7 — Game Over', '2026-03-24 16:57:59'),
(782, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 2', '2026-03-24 16:58:01'),
(783, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 3', '2026-03-24 16:58:03'),
(784, 1, 6, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 16:58:04'),
(785, 1, 6, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 16:58:09'),
(786, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 16:58:09'),
(787, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:02:19'),
(788, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:02:29'),
(789, 8, 7, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:05:29'),
(790, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 2', '2026-03-24 17:06:10'),
(791, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:06:39'),
(792, 1, 6, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:06:44'),
(793, 1, 6, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:06:49'),
(794, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:06:54'),
(795, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 3', '2026-03-24 17:07:23'),
(796, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 4', '2026-03-24 17:07:51'),
(797, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 5', '2026-03-24 17:07:53'),
(798, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 6', '2026-03-24 17:07:55'),
(799, 8, 7, NULL, 'NEW_DAY', 'เริ่มวันที่ 7', '2026-03-24 17:07:56'),
(800, 8, 7, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 7 — Game Over', '2026-03-24 17:07:59'),
(801, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-24 17:08:29'),
(802, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:08:29'),
(803, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-24 17:08:34'),
(804, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:11:05'),
(805, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:11:15'),
(806, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:12:40'),
(807, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:12:55'),
(808, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:15:25'),
(809, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:15:35'),
(810, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:17:05'),
(811, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-24 17:17:10'),
(812, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:17:10'),
(813, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-24 17:17:15'),
(814, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:19:45'),
(815, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:19:50'),
(816, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:21:21'),
(817, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:21:41'),
(818, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:24:01'),
(819, 1, 6, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-24 17:24:11'),
(820, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:24:11'),
(821, 1, 6, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-24 17:24:16'),
(822, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:25:51'),
(823, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:25:56'),
(824, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:26:01'),
(825, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:26:01'),
(826, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:28:21'),
(827, 1, 6, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:28:26'),
(828, 1, 6, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:28:31'),
(829, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:28:41'),
(830, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:30:11'),
(831, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-24 17:30:26'),
(832, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:30:26'),
(833, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-24 17:30:31'),
(834, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:32:52'),
(835, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:33:02'),
(836, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:34:32'),
(837, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:35:07'),
(838, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:35:07'),
(839, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:35:12'),
(840, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:37:12'),
(841, 1, 6, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-24 17:37:22'),
(842, 1, 6, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-24 17:37:27'),
(843, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:37:47'),
(844, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:39:17'),
(845, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-24 17:39:22'),
(846, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-24 17:39:27'),
(847, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:39:42'),
(848, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:41:58'),
(849, 1, 6, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:42:03'),
(850, 1, 6, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:42:08'),
(851, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:42:13'),
(852, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:43:53'),
(853, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:43:58'),
(854, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:46:23'),
(855, 1, 6, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:46:28'),
(856, 1, 6, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:46:33'),
(857, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:46:38'),
(858, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:48:08'),
(859, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-24 17:48:13'),
(860, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:48:13'),
(861, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-24 17:48:18'),
(862, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:50:48'),
(863, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:50:53'),
(864, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:52:23'),
(865, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:52:28'),
(866, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:52:33'),
(867, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:52:33'),
(868, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:55:04'),
(869, 1, 6, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-24 17:55:09'),
(870, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:55:09'),
(871, 1, 6, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-24 17:55:14'),
(872, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:56:44'),
(873, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-24 17:56:49'),
(874, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-24 17:56:54'),
(875, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:57:29'),
(876, 1, 6, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-24 17:59:14'),
(877, 1, 6, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-24 17:59:19'),
(878, 1, 6, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-24 17:59:24'),
(879, 1, 6, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-24 17:59:24'),
(880, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 18', '2026-03-26 21:39:47'),
(881, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 21:39:48'),
(882, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 21:40:03'),
(883, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 21:44:14'),
(884, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-26 21:44:19'),
(885, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 21:44:19'),
(886, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-26 21:44:24'),
(887, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 21:48:29'),
(888, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-26 21:48:39'),
(889, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-26 21:48:44'),
(890, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 21:49:09'),
(891, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 21:53:20'),
(892, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 21:53:25'),
(893, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 21:57:35'),
(894, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-26 21:57:40'),
(895, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-26 21:57:45'),
(896, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 21:58:15'),
(897, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-26 22:02:25'),
(898, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-26 22:02:40'),
(899, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:02:48'),
(900, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:02:58'),
(901, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:02:58'),
(902, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:03:03'),
(903, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:04:53'),
(904, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:04:53'),
(905, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:04:54'),
(906, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:04:58'),
(907, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:06:14'),
(908, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:06:18'),
(909, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:06:19'),
(910, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:06:23'),
(911, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:07:44'),
(912, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:07:44'),
(913, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:09:09'),
(914, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 15:09:14'),
(915, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:09:14'),
(916, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 15:09:14'),
(917, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:10:34'),
(918, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:10:39'),
(919, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:11:54'),
(920, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:11:59'),
(921, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:13:19'),
(922, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:13:24'),
(923, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:14:49'),
(924, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:14:49'),
(925, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:14:50'),
(926, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:14:54'),
(927, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:16:19'),
(928, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:16:20'),
(929, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:16:20'),
(930, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:16:30'),
(931, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:17:54'),
(932, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:17:55'),
(933, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:19:20'),
(934, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 15:19:20'),
(935, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 15:19:25'),
(936, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:19:25'),
(937, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:20:45'),
(938, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:20:50'),
(939, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:20:55'),
(940, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:20:55'),
(941, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:22:20'),
(942, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:22:20'),
(943, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:22:25'),
(944, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:22:25'),
(945, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:23:50'),
(946, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-27 15:23:50'),
(947, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 203 ฿', '2026-03-27 15:23:50'),
(948, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:24:05');
INSERT INTO `simulation_logs` (`log_id`, `user_id`, `save_id`, `event_id`, `event_type`, `message`, `created_at`) VALUES
(949, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:25:30'),
(950, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:25:35'),
(951, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:25:35'),
(952, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:25:36'),
(953, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:27:00'),
(954, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:27:01'),
(955, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:27:01'),
(956, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:27:06'),
(957, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:28:21'),
(958, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:28:22'),
(959, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:28:25'),
(960, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:28:36'),
(961, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:29:41'),
(962, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:29:41'),
(963, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:30:42'),
(964, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:30:46'),
(965, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:30:46'),
(966, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:30:46'),
(967, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:31:51'),
(968, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:31:51'),
(969, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:31:51'),
(970, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:31:52'),
(971, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:32:56'),
(972, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:32:56'),
(973, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:32:57'),
(974, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:33:07'),
(975, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:34:11'),
(976, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:34:16'),
(977, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:35:17'),
(978, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 15:35:21'),
(979, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 15:35:21'),
(980, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:35:21'),
(981, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:36:22'),
(982, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:36:26'),
(983, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:36:27'),
(984, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:36:27'),
(985, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:37:32'),
(986, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:37:36'),
(987, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:38:37'),
(988, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:38:37'),
(989, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:38:41'),
(990, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:38:47'),
(991, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:39:48'),
(992, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:39:51'),
(993, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:40:52'),
(994, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-27 15:40:57'),
(995, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 207 ฿', '2026-03-27 15:40:57'),
(996, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:41:02'),
(997, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:42:03'),
(998, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:42:07'),
(999, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:42:07'),
(1000, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:42:07'),
(1001, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:43:07'),
(1002, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 15:43:09'),
(1003, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 15:43:12'),
(1004, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:43:12'),
(1005, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:44:17'),
(1006, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:44:17'),
(1007, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:45:19'),
(1008, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:45:22'),
(1009, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:45:22'),
(1010, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:45:22'),
(1011, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:46:27'),
(1012, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:46:28'),
(1013, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:46:28'),
(1014, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:46:29'),
(1015, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:47:32'),
(1016, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:47:34'),
(1017, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:47:37'),
(1018, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:47:37'),
(1019, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:48:38'),
(1020, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:48:42'),
(1021, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:49:43'),
(1022, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 15:49:48'),
(1023, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:49:48'),
(1024, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 15:49:48'),
(1025, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:50:49'),
(1026, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:50:53'),
(1027, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:51:57'),
(1028, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:51:58'),
(1029, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:51:58'),
(1030, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:52:00'),
(1031, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:53:03'),
(1032, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:53:03'),
(1033, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:53:05'),
(1034, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:53:05'),
(1035, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:54:08'),
(1036, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:54:08'),
(1037, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:54:10'),
(1038, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:54:13'),
(1039, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:55:13'),
(1040, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:55:18'),
(1041, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:55:18'),
(1042, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:55:23'),
(1043, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:56:23'),
(1044, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 15:56:28'),
(1045, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 15:56:28'),
(1046, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:56:30'),
(1047, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:57:33'),
(1048, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 15:57:39'),
(1049, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 15:57:40'),
(1050, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:57:50'),
(1051, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 15:58:53'),
(1052, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 15:58:58'),
(1053, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 15:58:59'),
(1054, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 15:59:00'),
(1055, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:00:04'),
(1056, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:00:09'),
(1057, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:01:10'),
(1058, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:01:14'),
(1059, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:01:14'),
(1060, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:01:14'),
(1061, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:02:16'),
(1062, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:02:19'),
(1063, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:02:19'),
(1064, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:02:19'),
(1065, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:03:24'),
(1066, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:03:24'),
(1067, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:03:26'),
(1068, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:03:29'),
(1069, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:04:34'),
(1070, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:04:39'),
(1071, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:04:39'),
(1072, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:04:39'),
(1073, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:05:59'),
(1074, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 16:05:59'),
(1075, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 16:05:59'),
(1076, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:05:59'),
(1077, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:07:04'),
(1078, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:07:09'),
(1079, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:07:09'),
(1080, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:07:09'),
(1081, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:08:25'),
(1082, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:08:25'),
(1083, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:08:29'),
(1084, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:09:50'),
(1085, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:09:50'),
(1086, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:09:54'),
(1087, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:09:54'),
(1088, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:09:55'),
(1089, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:11:10'),
(1090, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:11:10'),
(1091, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:11:14'),
(1092, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:11:15'),
(1093, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:11:15'),
(1094, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:12:40'),
(1095, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 16:12:40'),
(1096, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 16:12:44'),
(1097, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:12:45'),
(1098, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:14:10'),
(1099, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 16:14:10'),
(1100, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:14:10'),
(1101, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 16:14:15'),
(1102, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:15:35'),
(1103, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:15:35'),
(1104, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:15:40'),
(1105, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:15:40'),
(1106, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:17:05'),
(1107, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:17:05'),
(1108, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:17:10'),
(1109, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:17:15'),
(1110, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:18:20'),
(1111, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:18:25'),
(1112, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:18:25'),
(1113, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:18:25'),
(1114, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:19:26'),
(1115, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:19:30'),
(1116, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:20:41'),
(1117, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:20:41'),
(1118, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:20:41'),
(1119, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:21:50'),
(1120, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:21:51'),
(1121, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:21:51'),
(1122, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:21:51'),
(1123, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:23:06'),
(1124, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:23:11'),
(1125, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:23:11'),
(1126, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:23:15'),
(1127, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:24:16'),
(1128, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:24:16'),
(1129, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:24:16'),
(1130, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:24:16'),
(1131, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:25:26'),
(1132, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:25:31'),
(1133, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:25:31'),
(1134, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:25:31'),
(1135, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:26:31'),
(1136, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:26:35'),
(1137, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:26:35'),
(1138, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:26:36'),
(1139, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:27:41'),
(1140, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:27:41'),
(1141, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:27:41'),
(1142, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:27:45'),
(1143, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:28:41'),
(1144, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:28:41'),
(1145, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:28:46'),
(1146, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:28:50'),
(1147, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:30:06'),
(1148, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:30:07'),
(1149, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:31:26'),
(1150, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:31:27'),
(1151, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:32:31'),
(1152, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:32:32'),
(1153, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:32:32'),
(1154, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:32:41'),
(1155, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:33:42'),
(1156, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:33:46'),
(1157, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:33:46'),
(1158, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:33:47'),
(1159, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:35:02'),
(1160, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:35:02'),
(1161, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 16:35:12'),
(1162, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:35:12'),
(1163, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 16:35:12'),
(1164, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:35:12'),
(1165, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:36:37'),
(1166, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:36:37'),
(1167, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:36:41'),
(1168, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:36:41'),
(1169, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:38:02'),
(1170, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:38:02'),
(1171, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:38:06'),
(1172, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:38:06'),
(1173, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:38:07'),
(1174, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:39:27'),
(1175, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:39:27'),
(1176, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:39:32'),
(1177, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:39:32'),
(1178, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:39:36'),
(1179, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:40:33'),
(1180, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:40:33'),
(1181, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:40:48'),
(1182, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:40:48'),
(1183, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:41:52'),
(1184, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 16:41:53'),
(1185, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:41:53'),
(1186, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 16:41:56'),
(1187, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:42:57'),
(1188, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:43:02'),
(1189, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:44:03'),
(1190, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 16:44:03'),
(1191, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 16:44:07'),
(1192, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:44:08'),
(1193, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:45:12'),
(1194, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:45:12'),
(1195, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:46:13'),
(1196, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:46:18'),
(1197, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:47:18'),
(1198, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 16:47:23'),
(1199, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:47:23'),
(1200, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 16:47:23'),
(1201, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:48:23'),
(1202, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:48:27'),
(1203, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 16:49:28'),
(1204, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 16:49:33'),
(1205, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:45:31'),
(1206, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:45:40'),
(1207, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:47:02'),
(1208, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 20:47:05'),
(1209, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 20:47:06'),
(1210, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:47:06'),
(1211, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:48:26'),
(1212, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 20:48:26'),
(1213, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 20:48:27'),
(1214, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:48:31'),
(1215, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:49:31'),
(1216, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 20:49:37'),
(1217, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 20:49:41'),
(1218, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:49:41'),
(1219, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:50:42'),
(1220, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 20:50:46'),
(1221, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:50:46'),
(1222, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 20:50:46'),
(1223, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:51:47'),
(1224, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:51:47'),
(1225, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:52:51'),
(1226, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 20:52:52'),
(1227, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 20:52:52'),
(1228, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:52:52'),
(1229, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:53:57'),
(1230, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:53:57'),
(1231, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:55:02'),
(1232, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 20:55:02'),
(1233, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 20:55:02'),
(1234, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:55:07'),
(1235, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:56:11'),
(1236, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 20:56:17'),
(1237, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 20:56:17'),
(1238, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:56:26'),
(1239, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:57:28'),
(1240, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 20:57:30'),
(1241, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:57:30'),
(1242, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 20:57:32'),
(1243, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:58:33'),
(1244, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 20:58:36'),
(1245, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:58:36'),
(1246, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 20:58:37'),
(1247, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 20:59:37'),
(1248, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 20:59:37'),
(1249, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 20:59:37'),
(1250, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 20:59:38'),
(1251, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:00:38'),
(1252, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:00:42'),
(1253, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:01:43'),
(1254, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:01:47'),
(1255, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:01:47'),
(1256, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:01:47'),
(1257, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:02:52'),
(1258, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:02:58'),
(1259, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:04:02'),
(1260, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 21:04:03'),
(1261, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 21:04:03'),
(1262, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:04:08'),
(1263, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:05:10'),
(1264, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:05:13'),
(1265, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:06:17'),
(1266, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:06:22'),
(1267, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:06:22'),
(1268, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:06:23'),
(1269, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:07:24'),
(1270, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:07:28'),
(1271, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:08:30'),
(1272, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-27 21:08:33'),
(1273, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 178 ฿', '2026-03-27 21:08:33'),
(1274, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:08:33'),
(1275, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:09:36'),
(1276, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:09:38'),
(1277, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:10:39'),
(1278, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:10:41'),
(1279, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:10:43'),
(1280, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:10:53'),
(1281, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:11:55'),
(1282, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:11:58'),
(1283, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:11:58'),
(1284, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:11:59'),
(1285, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:13:03'),
(1286, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:13:04'),
(1287, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:14:06'),
(1288, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:14:08'),
(1289, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:14:09'),
(1290, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:14:16'),
(1291, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:15:19'),
(1292, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:15:23'),
(1293, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:16:24'),
(1294, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:16:26'),
(1295, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:17:29'),
(1296, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:17:29'),
(1297, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:17:31'),
(1298, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:17:31'),
(1299, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:18:35'),
(1300, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 21:18:39'),
(1301, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 21:18:39'),
(1302, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:18:40'),
(1303, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:19:44'),
(1304, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:19:49'),
(1305, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:19:49'),
(1306, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:19:49'),
(1307, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:20:50'),
(1308, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:20:54'),
(1309, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:20:54'),
(1310, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:20:59'),
(1311, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:22:00'),
(1312, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:22:04'),
(1313, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:22:04'),
(1314, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:22:04'),
(1315, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:23:05'),
(1316, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 21:23:09'),
(1317, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 21:23:09'),
(1318, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:23:10'),
(1319, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:24:14'),
(1320, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 21:24:15'),
(1321, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 21:24:18'),
(1322, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:24:19'),
(1323, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:25:20'),
(1324, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:25:25'),
(1325, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:26:29'),
(1326, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:26:29'),
(1327, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:27:30'),
(1328, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:27:34'),
(1329, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:27:35'),
(1330, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:27:35'),
(1331, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:28:40'),
(1332, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:28:40'),
(1333, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:29:44'),
(1334, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:29:45'),
(1335, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:29:45'),
(1336, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:29:45'),
(1337, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:30:46'),
(1338, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:30:49'),
(1339, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:31:50'),
(1340, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:31:54'),
(1341, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:32:55');
INSERT INTO `simulation_logs` (`log_id`, `user_id`, `save_id`, `event_id`, `event_type`, `message`, `created_at`) VALUES
(1342, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:32:56'),
(1343, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:34:00'),
(1344, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:34:01'),
(1345, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:35:05'),
(1346, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:35:09'),
(1347, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:36:11'),
(1348, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 21:36:16'),
(1349, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 21:36:16'),
(1350, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:36:21'),
(1351, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:37:25'),
(1352, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:37:26'),
(1353, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:38:27'),
(1354, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:38:30'),
(1355, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:38:31'),
(1356, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:38:31'),
(1357, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:39:32'),
(1358, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:39:36'),
(1359, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:39:36'),
(1360, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:39:42'),
(1361, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:40:46'),
(1362, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:40:51'),
(1363, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:41:52'),
(1364, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:41:56'),
(1365, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:42:59'),
(1366, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:43:04'),
(1367, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:43:04'),
(1368, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:43:06'),
(1369, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:44:07'),
(1370, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:44:12'),
(1371, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:44:13'),
(1372, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:44:13'),
(1373, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:45:17'),
(1374, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:45:23'),
(1375, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:45:26'),
(1376, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:45:27'),
(1377, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:46:31'),
(1378, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:46:33'),
(1379, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:46:33'),
(1380, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:46:36'),
(1381, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:47:37'),
(1382, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:47:42'),
(1383, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:47:42'),
(1384, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:47:47'),
(1385, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:48:52'),
(1386, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 21:48:52'),
(1387, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:48:52'),
(1388, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 21:48:57'),
(1389, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:49:57'),
(1390, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:50:02'),
(1391, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:51:07'),
(1392, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:51:08'),
(1393, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:51:12'),
(1394, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:51:12'),
(1395, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:52:13'),
(1396, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:52:17'),
(1397, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:52:17'),
(1398, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:52:18'),
(1399, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:53:22'),
(1400, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:53:23'),
(1401, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:54:28'),
(1402, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:54:31'),
(1403, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:55:33'),
(1404, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:55:37'),
(1405, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:55:37'),
(1406, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:55:38'),
(1407, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:56:53'),
(1408, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 21:56:57'),
(1409, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:56:57'),
(1410, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 21:56:58'),
(1411, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:58:18'),
(1412, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 21:58:23'),
(1413, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:58:23'),
(1414, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 21:58:23'),
(1415, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 21:59:48'),
(1416, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-27 21:59:48'),
(1417, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-27 21:59:48'),
(1418, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 21:59:52'),
(1419, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:01:14'),
(1420, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:01:18'),
(1421, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:02:39'),
(1422, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:02:43'),
(1423, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:02:43'),
(1424, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:02:43'),
(1425, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:04:04'),
(1426, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:04:08'),
(1427, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:05:29'),
(1428, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:05:33'),
(1429, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:06:54'),
(1430, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 22:06:59'),
(1431, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 22:06:59'),
(1432, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:07:08'),
(1433, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:08:29'),
(1434, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 22:08:34'),
(1435, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:08:34'),
(1436, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 22:08:34'),
(1437, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:09:58'),
(1438, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:09:59'),
(1439, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:09:59'),
(1440, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:10:03'),
(1441, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:11:24'),
(1442, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:11:29'),
(1443, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:11:30'),
(1444, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:11:30'),
(1445, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:12:54'),
(1446, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:12:59'),
(1447, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:12:59'),
(1448, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:13:09'),
(1449, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:14:30'),
(1450, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:14:34'),
(1451, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:15:55'),
(1452, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 22:15:59'),
(1453, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 22:16:00'),
(1454, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:16:14'),
(1455, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:17:35'),
(1456, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:17:40'),
(1457, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:19:04'),
(1458, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:19:05'),
(1459, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:19:05'),
(1460, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:19:20'),
(1461, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:20:45'),
(1462, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:20:45'),
(1463, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:20:49'),
(1464, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:20:55'),
(1465, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:22:19'),
(1466, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:22:21'),
(1467, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:23:45'),
(1468, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:23:50'),
(1469, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:23:50'),
(1470, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:23:55'),
(1471, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:25:16'),
(1472, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:25:20'),
(1473, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:26:41'),
(1474, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-27 22:26:45'),
(1475, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 213 ฿', '2026-03-27 22:26:45'),
(1476, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:26:45'),
(1477, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:28:10'),
(1478, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:28:11'),
(1479, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:29:36'),
(1480, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:29:41'),
(1481, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:31:05'),
(1482, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:31:06'),
(1483, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:32:30'),
(1484, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:32:31'),
(1485, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:33:56'),
(1486, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:33:56'),
(1487, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:33:57'),
(1488, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:33:57'),
(1489, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:35:21'),
(1490, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:35:31'),
(1491, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:35:31'),
(1492, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:35:31'),
(1493, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:36:52'),
(1494, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-27 22:36:57'),
(1495, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 164 ฿', '2026-03-27 22:36:57'),
(1496, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:37:06'),
(1497, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:38:27'),
(1498, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:38:32'),
(1499, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:39:56'),
(1500, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 22:39:57'),
(1501, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:39:57'),
(1502, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 22:39:57'),
(1503, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:41:21'),
(1504, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:41:22'),
(1505, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:41:22'),
(1506, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:41:26'),
(1507, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:42:47'),
(1508, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:42:47'),
(1509, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:44:12'),
(1510, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:44:17'),
(1511, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:45:42'),
(1512, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:45:42'),
(1513, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:45:43'),
(1514, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:45:43'),
(1515, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:47:07'),
(1516, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 22:47:08'),
(1517, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 22:47:12'),
(1518, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:47:12'),
(1519, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:48:33'),
(1520, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 22:48:37'),
(1521, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 22:48:38'),
(1522, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:48:38'),
(1523, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:50:03'),
(1524, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 22:50:03'),
(1525, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 22:50:07'),
(1526, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:50:08'),
(1527, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:51:32'),
(1528, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:51:33'),
(1529, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:52:58'),
(1530, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:52:58'),
(1531, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:54:24'),
(1532, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-27 22:54:28'),
(1533, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-27 22:54:28'),
(1534, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:54:28'),
(1535, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:55:53'),
(1536, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:55:53'),
(1537, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:57:18'),
(1538, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-27 22:57:18'),
(1539, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:57:18'),
(1540, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-27 22:57:19'),
(1541, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 22:58:43'),
(1542, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 22:58:43'),
(1543, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-27 23:00:08'),
(1544, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-27 23:00:09'),
(1545, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-27 23:00:09'),
(1546, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-27 23:00:14'),
(1547, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:44:55'),
(1548, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:44:55'),
(1549, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:46:20'),
(1550, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:46:25'),
(1551, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:47:46'),
(1552, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-28 03:47:50'),
(1553, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-28 03:47:51'),
(1554, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:47:51'),
(1555, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:49:16'),
(1556, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:49:16'),
(1557, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:50:41'),
(1558, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:50:41'),
(1559, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:52:06'),
(1560, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:52:11'),
(1561, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:53:36'),
(1562, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:53:36'),
(1563, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:55:01'),
(1564, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-28 03:55:06'),
(1565, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-28 03:55:07'),
(1566, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:55:21'),
(1567, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:56:46'),
(1568, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-28 03:56:46'),
(1569, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:56:46'),
(1570, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-28 03:56:47'),
(1571, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:58:07'),
(1572, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:58:11'),
(1573, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 03:59:32'),
(1574, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 03:59:36'),
(1575, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 03:59:37'),
(1576, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 03:59:42'),
(1577, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:01:06'),
(1578, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:01:07'),
(1579, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:02:31'),
(1580, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:02:32'),
(1581, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:03:52'),
(1582, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-28 04:03:52'),
(1583, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:03:52'),
(1584, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-28 04:03:53'),
(1585, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:04:54'),
(1586, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:04:57'),
(1587, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:04:57'),
(1588, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:04:58'),
(1589, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:06:00'),
(1590, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-28 04:06:02'),
(1591, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-28 04:06:03'),
(1592, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:06:07'),
(1593, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:07:08'),
(1594, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:07:10'),
(1595, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:08:12'),
(1596, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:08:15'),
(1597, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:09:33'),
(1598, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:09:37'),
(1599, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:11:01'),
(1600, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:11:02'),
(1601, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:12:27'),
(1602, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:12:33'),
(1603, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:13:57'),
(1604, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-28 04:14:03'),
(1605, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:14:03'),
(1606, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-28 04:14:07'),
(1607, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:15:28'),
(1608, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:15:28'),
(1609, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:15:32'),
(1610, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:15:37'),
(1611, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:16:58'),
(1612, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-28 04:17:02'),
(1613, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-28 04:17:03'),
(1614, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:17:08'),
(1615, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:18:32'),
(1616, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-28 04:18:37'),
(1617, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-28 04:18:38'),
(1618, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:18:43'),
(1619, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:20:08'),
(1620, 8, 8, 5, 'ELECTRICITY_BILL', 'ได้รับแจ้งเตือน ค่าไฟฟ้าเดือนนี้สูงผิดปกติ! ถูกหักเงินเพิ่ม', '2026-03-28 04:20:13'),
(1621, 8, 8, NULL, 'MONEY_DEDUCTED', 'ถูกหักเงิน 130 ฿', '2026-03-28 04:20:13'),
(1622, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:20:28'),
(1623, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:21:53'),
(1624, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:21:54'),
(1625, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:21:58'),
(1626, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:22:04'),
(1627, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:23:29'),
(1628, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:23:33'),
(1629, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:24:54'),
(1630, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:24:59'),
(1631, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:26:24'),
(1632, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:26:24'),
(1633, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:26:28'),
(1634, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:26:29'),
(1635, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:27:54'),
(1636, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:27:54'),
(1637, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:29:19'),
(1638, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:29:23'),
(1639, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:29:24'),
(1640, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:29:24'),
(1641, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:30:48'),
(1642, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:30:49'),
(1643, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:32:14'),
(1644, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-28 04:32:14'),
(1645, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-28 04:32:15'),
(1646, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:32:15'),
(1647, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:33:39'),
(1648, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:33:40'),
(1649, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:35:05'),
(1650, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:35:05'),
(1651, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:36:30'),
(1652, 8, 8, 4, 'LAPTOP_OVERHEAT', 'โน๊ตบุ๊คร้อนมาก! แบตเตอรี่จะหมดเร็วขึ้น 2 เท่า', '2026-03-28 04:36:30'),
(1653, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:36:30'),
(1654, 8, 8, 4, 'LAPTOP_OVERHEAT_RESOLVED', 'เหตุการณ์ LAPTOP_OVERHEAT สิ้นสุดลงแล้ว', '2026-03-28 04:36:34'),
(1655, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:37:54'),
(1656, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:37:55'),
(1657, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:39:20'),
(1658, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:39:20'),
(1659, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:40:45'),
(1660, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-28 04:40:49'),
(1661, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-28 04:40:50'),
(1662, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:41:00'),
(1663, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:42:25'),
(1664, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 04:42:26'),
(1665, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 04:42:30'),
(1666, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:42:40'),
(1667, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:44:01'),
(1668, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:44:06'),
(1669, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:45:30'),
(1670, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:45:31'),
(1671, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 04:46:55'),
(1672, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 04:46:56'),
(1673, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:04:36'),
(1674, 8, 8, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 08:04:41'),
(1675, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:04:41'),
(1676, 8, 8, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 08:04:46'),
(1677, 1, 6, NULL, 'JOB_ACCEPTED', 'Accepted contract #10 on day 18', '2026-03-28 08:05:56'),
(1678, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:08:51'),
(1679, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:08:56'),
(1680, 1, 6, NULL, 'JOB_COMPLETED', 'Completed contract #10 on day 18', '2026-03-28 08:09:39'),
(1681, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 19', '2026-03-28 08:09:49'),
(1682, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 20', '2026-03-28 08:09:58'),
(1683, 1, 6, NULL, 'NEW_DAY', 'เริ่มวันที่ 21', '2026-03-28 08:10:00'),
(1684, 1, 6, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 21 — Game Over', '2026-03-28 08:10:06'),
(1685, 1, 9, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:10:11'),
(1686, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:13:06'),
(1687, 8, 8, 2, 'INTERNET_DOWN', 'อินเทอร์เน็ตเกิดปัญหา! ไม่สามารถเข้าหน้าเว็บงานได้ ส่งงานหรือรับงานไม่ได้ชั่วคราว', '2026-03-28 08:13:11'),
(1688, 8, 8, 2, 'INTERNET_DOWN_RESOLVED', 'เหตุการณ์ INTERNET_DOWN สิ้นสุดลงแล้ว', '2026-03-28 08:13:16'),
(1689, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:13:21'),
(1690, 1, 9, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:14:22'),
(1691, 1, 9, 3, 'HEAVY_RAIN', 'ฝนตกหนัก! สัญญาณอินเทอร์เน็ตไม่เสถียร อาจใช้งานเว็บได้ช้าลง', '2026-03-28 08:14:26'),
(1692, 1, 9, 3, 'HEAVY_RAIN_RESOLVED', 'เหตุการณ์ HEAVY_RAIN สิ้นสุดลงแล้ว', '2026-03-28 08:14:32'),
(1693, 1, 9, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:14:37'),
(1694, 8, 8, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:17:32'),
(1695, 8, 8, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-03-28 08:17:37'),
(1696, 8, 8, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-03-28 08:17:42'),
(1697, 8, 8, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:17:42'),
(1698, 1, 9, NULL, 'FORCE_SKIP_DAY', 'แบตเตอรี่หมด! ข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save หายไปแล้ว', '2026-03-28 08:18:47'),
(1699, 1, 9, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-28 08:18:52'),
(1700, 1, 9, NULL, 'JOB_ACCEPTED', 'Accepted contract #14 on day 3', '2026-03-28 09:19:52'),
(1701, 1, 9, NULL, 'JOB_COMPLETED', 'Completed contract #14 on day 3', '2026-03-28 09:21:07'),
(1702, 1, 9, NULL, 'NEW_DAY', 'เริ่มวันที่ 4', '2026-03-28 09:22:01'),
(1703, 1, 9, NULL, 'JOB_ACCEPTED', 'Accepted contract #15 on day 4', '2026-03-29 21:09:33'),
(1704, 1, 9, NULL, 'JOB_REJECTED', 'REJECTED contract #15 on day 4 (score 0)', '2026-03-29 21:09:52'),
(1705, 1, 9, NULL, 'JOB_CARRY_OVER', 'Carried contract #15 (Tip Splitter Supreme) into next day (1)', '2026-03-29 21:59:30'),
(1706, 1, 9, NULL, 'NEW_DAY', 'เริ่มวันที่ 5', '2026-03-29 21:59:30'),
(1707, 1, 9, NULL, 'JOB_CARRY_OVER', 'Carried contract #15 (Tip Splitter Supreme) into next day (2)', '2026-03-29 21:59:34'),
(1708, 1, 9, NULL, 'NEW_DAY', 'เริ่มวันที่ 6', '2026-03-29 21:59:34'),
(1709, 1, 9, NULL, 'JOB_STOLEN', 'Bot stole contract #15 (Tip Splitter Supreme) after 3 day(s)', '2026-03-29 21:59:38'),
(1710, 1, 9, NULL, 'NEW_DAY', 'เริ่มวันที่ 7', '2026-03-29 21:59:38'),
(1711, 1, 9, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 7 — Game Over', '2026-03-29 21:59:41'),
(1712, 1, 10, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-29 21:59:59'),
(1713, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 2', '2026-03-29 22:00:06'),
(1714, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 3', '2026-03-29 22:00:08'),
(1715, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 4', '2026-03-29 22:00:09'),
(1716, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 5', '2026-03-29 22:00:13'),
(1717, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 6', '2026-03-29 22:00:15'),
(1718, 1, 10, NULL, 'NEW_DAY', 'เริ่มวันที่ 7', '2026-03-29 22:00:18'),
(1719, 1, 10, NULL, 'GAME_OVER', 'ไม่มีเงินจ่ายค่าเช่าวันที่ 7 — Game Over', '2026-03-29 22:00:20'),
(1720, 1, 11, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-03-29 22:00:29'),
(1721, 1, 11, NULL, 'NEW_DAY', 'เริ่มวันที่ 2', '2026-03-29 22:00:37'),
(1722, 9, 12, 6, 'CAFE_DISCOUNT', 'ร้าน Starbugs Cafe มีโปรลดราคา! ทำงานได้เร็วขึ้น 20%', '2026-04-23 06:21:45'),
(1723, 9, 13, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-04-23 06:21:45'),
(1724, 9, 12, 6, 'CAFE_DISCOUNT_RESOLVED', 'เหตุการณ์ CAFE_DISCOUNT สิ้นสุดลงแล้ว', '2026-04-23 06:21:50'),
(1725, 9, 12, 1, 'BLACKOUT', 'ไฟฟ้าดับกะทันหัน! โน๊ตบุ๊คจะไม่ถูกชาร์จ หากแบตหมดจะบังคับข้ามไปวันถัดไป ข้อมูลที่ไม่ได้ save จะหายไป', '2026-04-23 06:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `simulation_saves`
--

CREATE TABLE `simulation_saves` (
  `save_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `save_name` varchar(50) NOT NULL DEFAULT 'Save 1',
  `sim_money` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sim_reputation` int(11) NOT NULL DEFAULT 10,
  `battery_percent` int(11) NOT NULL DEFAULT 100,
  `is_plugged_in` tinyint(1) NOT NULL DEFAULT 1,
  `current_location_id` int(11) DEFAULT 1,
  `current_day` int(11) NOT NULL DEFAULT 1,
  `current_hour` decimal(4,1) NOT NULL DEFAULT 8.0,
  `jobs_completed` int(11) NOT NULL DEFAULT 0,
  `jobs_failed` int(11) NOT NULL DEFAULT 0,
  `total_earned` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_spent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `environment_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`environment_status`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `simulation_saves`
--

INSERT INTO `simulation_saves` (`save_id`, `user_id`, `save_name`, `sim_money`, `sim_reputation`, `battery_percent`, `is_plugged_in`, `current_location_id`, `current_day`, `current_hour`, `jobs_completed`, `jobs_failed`, `total_earned`, `total_spent`, `environment_status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Auto Save', 0.00, 10, 100, 1, 1, 56, 9.2, 0, 0, 0.00, 840.00, '{\"is_blackout\":false,\"events_today_count\":2,\"last_event_time\":\"2026-03-11T08:10:32.009Z\",\"critical_today\":true}', 0, '2026-03-04 18:47:52', '2026-03-24 16:35:52'),
(4, 1, 'Auto Save', 0.00, 10, 24, 1, 1, 7, 8.0, 0, 0, 0.00, 0.00, '{\"critical_today\":true,\"events_today_count\":2,\"last_event_time\":\"2026-03-24T16:53:58.657Z\",\"is_blackout\":false}', 0, '2026-03-24 16:35:56', '2026-03-24 16:57:45'),
(5, 1, 'Auto Save', 0.00, 10, 100, 1, 1, 7, 8.0, 0, 0, 0.00, 0.00, '{\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-03-24T16:57:48.977Z\",\"is_blackout\":false}', 0, '2026-03-24 16:57:47', '2026-03-24 16:57:59'),
(6, 1, 'Auto Save', 500.00, 15, 100, 1, 1, 21, 8.0, 1, 0, 500.00, 0.00, '{\"events_today_count\":2,\"last_event_time\":\"2026-03-24T17:59:24.537Z\",\"is_blackout\":false,\"critical_today\":true}', 0, '2026-03-24 16:58:00', '2026-03-28 08:10:06'),
(7, 8, 'Auto Save', 0.00, 10, 100, 1, 1, 7, 8.0, 0, 0, 0.00, 0.00, '{\"is_blackout\":false,\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-03-24T17:05:29.636Z\"}', 0, '2026-03-24 17:05:23', '2026-03-24 17:07:59'),
(8, 8, 'Auto Save', 0.00, 10, 100, 1, 1, 259, 8.0, 0, 0, 0.00, 1095.00, '{\"events_today_count\":2,\"last_event_time\":\"2026-03-28T08:17:42.297Z\",\"critical_today\":true,\"is_blackout\":true}', 1, '2026-03-24 17:08:25', '2026-03-28 08:18:59'),
(9, 1, 'Auto Save', 1000.00, 4, 100, 1, 1, 7, 8.0, 1, 1, 1000.00, 0.00, '{\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-03-28T08:18:52.422Z\",\"is_blackout\":false}', 0, '2026-03-28 08:10:08', '2026-03-29 21:59:41'),
(10, 1, 'Auto Save', 0.00, 10, 100, 1, 1, 7, 8.0, 0, 0, 0.00, 0.00, '{\"is_blackout\":false,\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-03-29T21:59:59.502Z\"}', 0, '2026-03-29 21:59:44', '2026-03-29 22:00:20'),
(11, 1, 'Auto Save', 0.00, 10, 100, 1, 1, 2, 8.0, 0, 0, 0.00, 0.00, '{\"is_blackout\":false,\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-03-29T22:00:29.545Z\"}', 1, '2026-03-29 22:00:23', '2026-03-29 22:00:39'),
(12, 9, 'Auto Save', 0.00, 10, 100, 1, 1, 1, 8.0, 0, 0, 0.00, 0.00, '{\"events_today_count\":2,\"last_event_time\":\"2026-04-23T06:21:55.310Z\",\"is_blackout\":true,\"critical_today\":true}', 1, '2026-04-23 06:21:42', '2026-04-23 06:22:00'),
(13, 9, 'Auto Save', 0.00, 10, 100, 1, 1, 1, 8.0, 0, 0, 0.00, 0.00, '{\"critical_today\":true,\"events_today_count\":1,\"last_event_time\":\"2026-04-23T06:21:45.309Z\",\"is_blackout\":true}', 1, '2026-04-23 06:21:42', '2026-04-23 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(200) NOT NULL,
  `option_description` varchar(500) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_options`
--

INSERT INTO `survey_options` (`id`, `question_id`, `option_text`, `option_description`, `order`) VALUES
(1, 1, 'ดูวิดีโอ', 'เรียนรู้ผ่านวิดีโอและตัวอย่าง', 1),
(2, 1, 'ลงมือทำ', 'เรียนรู้ผ่านการฝึกเขียนโค้ดจริง', 2),
(3, 1, 'อ่านบทความ', 'เรียนรู้ผ่านเนื้อหาและเอกสาร', 3),
(4, 2, 'พัฒนาเว็บไซต์', 'สร้างเว็บแอปพลิเคชัน', 1),
(5, 2, 'วิเคราะห์ข้อมูล', 'Data Science & Analytics', 2),
(6, 2, 'สร้างเกม', 'Game Development', 3),
(7, 2, 'ทั่วไป', 'เรียนรู้พื้นฐานเพื่อใช้งานทั่วไป', 4);

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `title`, `description`, `image`) VALUES
(1, 'คุณเรียนรู้ได้ดีที่สุดด้วยวิธีใด?', 'เราจะปรับเส้นทางการเรียนรู้ให้เหมาะกับคุณ', 'cat-coding.png'),
(2, 'คุณอยากเรียน Python ไปทำอะไร?', 'เป้าหมายจะช่วยให้เราแนะนำเนื้อหาที่เหมาะกับคุณ', 'cat-mascot.png'),
(3, 'ประสบการณ์ของคุณ', 'เลือกระดับที่ตรงกับคุณมากที่สุด', 'cat-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reputation` int(11) DEFAULT 10,
  `equipped_theme_id` int(11) DEFAULT NULL,
  `equipped_mouse_effect_id` int(11) DEFAULT NULL,
  `equipped_profile_frame_id` int(11) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `level` int(11) DEFAULT 1,
  `xp` int(11) DEFAULT 0,
  `virtual_currency` int(11) DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `ban_until` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `email`, `created_at`, `reputation`, `equipped_theme_id`, `equipped_mouse_effect_id`, `equipped_profile_frame_id`, `avatar_url`, `bio`, `role`, `level`, `xp`, `virtual_currency`, `is_deleted`, `is_banned`, `ban_until`, `deleted_at`) VALUES
(1, 'test', '$2b$10$.g6mWLu5/itUWztGvhusv.WsNSmJMVtge7eMCapzPUDulm0cHiqVW', NULL, '2026-02-18 08:55:06', 10, NULL, NULL, NULL, NULL, NULL, 'user', 2, 250, 70, 0, 0, NULL, NULL),
(8, '123', '$2b$10$ouVGRGz/415AVML0TBnm4elpb8skVyUrU4GZSW9zIFM.QnXcmeUSy', 'abc@mail.com', '2026-03-24 15:38:32', 10, NULL, NULL, NULL, NULL, NULL, 'user', 1, 0, 0, 0, 0, NULL, NULL),
(9, 'max', '$2b$10$TRgCkVKswG8YDrlapEpeGeEHS6qLijnnXzhfZWg0nIjzzQAd60RLC', 'maxmac13333@gmail.com', '2026-04-19 14:32:12', 10, NULL, NULL, NULL, NULL, NULL, 'user', 0, 715, 271, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_achievements`
--

CREATE TABLE `user_achievements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `unlocked_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_contracts`
--

CREATE TABLE `user_contracts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `status` enum('ACTIVE','COMPLETED','FAILED') DEFAULT 'ACTIVE',
  `status_reason` varchar(50) DEFAULT NULL,
  `accepted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepted_day` int(11) DEFAULT NULL,
  `carried_days` int(11) NOT NULL DEFAULT 0,
  `completed_day` int(11) DEFAULT NULL,
  `failed_day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_contracts`
--

INSERT INTO `user_contracts` (`id`, `user_id`, `contract_id`, `status`, `status_reason`, `accepted_at`, `accepted_day`, `carried_days`, `completed_day`, `failed_day`) VALUES
(1, 1, 10, 'COMPLETED', 'SUBMITTED', '2026-03-28 08:05:56', 18, 0, 18, NULL),
(2, 1, 14, 'COMPLETED', 'SUBMITTED', '2026-03-28 09:19:52', 3, 0, 3, NULL),
(3, 1, 15, 'FAILED', 'BOT_STEAL', '2026-03-29 21:09:33', 4, 3, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `purchased_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_showcase`
--

CREATE TABLE `user_profile_showcase` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Indexes for table `advanced_validation`
--
ALTER TABLE `advanced_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advanced_validation_choices`
--
ALTER TABLE `advanced_validation_choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_adv_choices_question` (`question_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`contract_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `exercise_submissions`
--
ALTER TABLE `exercise_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `financial_ledger`
--
ALTER TABLE `financial_ledger`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `game_rooms`
--
ALTER TABLE `game_rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `host_user_id` (`host_user_id`);

--
-- Indexes for table `game_sessions`
--
ALTER TABLE `game_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `learning_ai_tasks`
--
ALTER TABLE `learning_ai_tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `idx_learning_ai_tasks_user_mode_status` (`user_id`,`mode`,`status`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `idx_lessons_module` (`module_id`);

--
-- Indexes for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `idx_quizzes_lesson` (`lesson_id`);

--
-- Indexes for table `lesson_quiz_attempts`
--
ALTER TABLE `lesson_quiz_attempts`
  ADD PRIMARY KEY (`attempt_id`),
  ADD UNIQUE KEY `uk_lesson_quiz_attempt` (`user_id`,`lesson_id`,`quiz_type`),
  ADD KEY `idx_lesson_quiz_attempt_lesson` (`lesson_id`,`quiz_type`),
  ADD KEY `idx_lesson_quiz_attempt_user` (`user_id`);

--
-- Indexes for table `lesson_slides`
--
ALTER TABLE `lesson_slides`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `idx_slides_lesson` (`lesson_id`);

--
-- Indexes for table `level_config`
--
ALTER TABLE `level_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_level_config_question` (`question_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `mini_game_current_conversations`
--
ALTER TABLE `mini_game_current_conversations`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_mini_game_current_exercise` (`exercise_id`),
  ADD KEY `idx_mini_game_current_dialogue` (`dialogue_id`),
  ADD KEY `idx_mini_game_current_npc` (`current_npc_id`),
  ADD KEY `idx_mini_game_current_location` (`current_location_id`);

--
-- Indexes for table `mini_game_dialogues`
--
ALTER TABLE `mini_game_dialogues`
  ADD PRIMARY KEY (`dialogue_id`),
  ADD KEY `idx_mini_game_dialogues_exercise_phase_branch` (`exercise_id`,`dialogue_phase`,`branch_key`,`dialogue_order`),
  ADD KEY `idx_mini_game_dialogues_npc` (`npc_id`),
  ADD KEY `idx_mini_game_dialogues_location` (`location_id`);

--
-- Indexes for table `mini_game_dialogue_choices`
--
ALTER TABLE `mini_game_dialogue_choices`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `idx_mini_game_dialogue_choices_dialogue` (`dialogue_id`,`choice_order`);

--
-- Indexes for table `mini_game_exercises`
--
ALTER TABLE `mini_game_exercises`
  ADD PRIMARY KEY (`exercise_id`),
  ADD KEY `idx_mini_game_exercises_lesson` (`lesson_id`),
  ADD KEY `idx_mini_game_exercises_order` (`exercise_order`);

--
-- Indexes for table `mini_game_exercise_submissions`
--
ALTER TABLE `mini_game_exercise_submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `idx_mini_game_submissions_user_exercise` (`user_id`,`exercise_id`,`is_passed`),
  ADD KEY `idx_mini_game_submissions_exercise` (`exercise_id`);

--
-- Indexes for table `mini_game_lessons`
--
ALTER TABLE `mini_game_lessons`
  ADD PRIMARY KEY (`lesson_id`),
  ADD UNIQUE KEY `uq_mini_game_lessons_key` (`lesson_key`),
  ADD KEY `idx_mini_game_lessons_sort` (`sort_order`);

--
-- Indexes for table `mini_game_locations`
--
ALTER TABLE `mini_game_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `uq_mini_game_locations_key` (`location_key`);

--
-- Indexes for table `mini_game_modules`
--
ALTER TABLE `mini_game_modules`
  ADD PRIMARY KEY (`mini_game_module_id`),
  ADD KEY `idx_mini_game_modules_module_order` (`module_id`,`order_index`),
  ADD KEY `idx_mini_game_modules_order` (`order_index`);

--
-- Indexes for table `mini_game_npcs`
--
ALTER TABLE `mini_game_npcs`
  ADD PRIMARY KEY (`npc_id`),
  ADD UNIQUE KEY `uq_mini_game_npcs_key` (`npc_key`);

--
-- Indexes for table `mini_game_user_exercise_progress`
--
ALTER TABLE `mini_game_user_exercise_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD UNIQUE KEY `uq_mini_game_progress_user_exercise` (`user_id`,`exercise_id`),
  ADD KEY `idx_mini_game_progress_exercise` (`exercise_id`),
  ADD KEY `idx_mini_game_progress_submission` (`last_submission_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `music_tracks`
--
ALTER TABLE `music_tracks`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `idx_choices_question` (`question_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `idx_questions_quiz` (`quiz_id`);

--
-- Indexes for table `random_events`
--
ALTER TABLE `random_events`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `uk_event_key` (`event_key`);

--
-- Indexes for table `room_participants`
--
ALTER TABLE `room_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `simulation_active_events`
--
ALTER TABLE `simulation_active_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_active_events_save` (`save_id`,`is_resolved`),
  ADD KEY `fk_active_events_event` (`event_id`);

--
-- Indexes for table `simulation_logs`
--
ALTER TABLE `simulation_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_sim_logs_save` (`save_id`),
  ADD KEY `fk_sim_logs_event` (`event_id`);

--
-- Indexes for table `simulation_saves`
--
ALTER TABLE `simulation_saves`
  ADD PRIMARY KEY (`save_id`),
  ADD KEY `idx_sim_saves_user` (`user_id`),
  ADD KEY `idx_sim_saves_active` (`user_id`,`is_active`),
  ADD KEY `fk_sim_saves_location` (`current_location_id`);

--
-- Indexes for table `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_survey_opts_question` (`question_id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_theme` (`equipped_theme_id`),
  ADD KEY `fk_users_mouse_effect` (`equipped_mouse_effect_id`),
  ADD KEY `fk_users_profile_frame` (`equipped_profile_frame_id`);

--
-- Indexes for table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `achievement_id` (`achievement_id`);

--
-- Indexes for table `user_contracts`
--
ALTER TABLE `user_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_item` (`user_id`,`item_id`),
  ADD KEY `idx_inventory_user` (`user_id`),
  ADD KEY `fk_inventory_item` (`item_id`);

--
-- Indexes for table `user_profile_showcase`
--
ALTER TABLE `user_profile_showcase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_achievement_showcase` (`user_id`,`achievement_id`),
  ADD KEY `idx_showcase_user` (`user_id`),
  ADD KEY `fk_showcase_achievement` (`achievement_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `advanced_validation`
--
ALTER TABLE `advanced_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advanced_validation_choices`
--
ALTER TABLE `advanced_validation_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exercise_submissions`
--
ALTER TABLE `exercise_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `financial_ledger`
--
ALTER TABLE `financial_ledger`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `game_rooms`
--
ALTER TABLE `game_rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `game_sessions`
--
ALTER TABLE `game_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_ai_tasks`
--
ALTER TABLE `learning_ai_tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson_quiz_attempts`
--
ALTER TABLE `lesson_quiz_attempts`
  MODIFY `attempt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lesson_slides`
--
ALTER TABLE `lesson_slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `level_config`
--
ALTER TABLE `level_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mini_game_dialogues`
--
ALTER TABLE `mini_game_dialogues`
  MODIFY `dialogue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mini_game_dialogue_choices`
--
ALTER TABLE `mini_game_dialogue_choices`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mini_game_exercises`
--
ALTER TABLE `mini_game_exercises`
  MODIFY `exercise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mini_game_exercise_submissions`
--
ALTER TABLE `mini_game_exercise_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `mini_game_lessons`
--
ALTER TABLE `mini_game_lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mini_game_locations`
--
ALTER TABLE `mini_game_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mini_game_modules`
--
ALTER TABLE `mini_game_modules`
  MODIFY `mini_game_module_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mini_game_npcs`
--
ALTER TABLE `mini_game_npcs`
  MODIFY `npc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mini_game_user_exercise_progress`
--
ALTER TABLE `mini_game_user_exercise_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `music_tracks`
--
ALTER TABLE `music_tracks`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_choices`
--
ALTER TABLE `question_choices`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `random_events`
--
ALTER TABLE `random_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_participants`
--
ALTER TABLE `room_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `simulation_active_events`
--
ALTER TABLE `simulation_active_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `simulation_logs`
--
ALTER TABLE `simulation_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1726;

--
-- AUTO_INCREMENT for table `simulation_saves`
--
ALTER TABLE `simulation_saves`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_achievements`
--
ALTER TABLE `user_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_contracts`
--
ALTER TABLE `user_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_showcase`
--
ALTER TABLE `user_profile_showcase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advanced_validation_choices`
--
ALTER TABLE `advanced_validation_choices`
  ADD CONSTRAINT `fk_adv_choices_question` FOREIGN KEY (`question_id`) REFERENCES `advanced_validation` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD CONSTRAINT `email_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `financial_ledger`
--
ALTER TABLE `financial_ledger`
  ADD CONSTRAINT `financial_ledger_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `game_rooms`
--
ALTER TABLE `game_rooms`
  ADD CONSTRAINT `game_rooms_ibfk_1` FOREIGN KEY (`host_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `fk_lessons_module` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  ADD CONSTRAINT `fk_quizzes_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_slides`
--
ALTER TABLE `lesson_slides`
  ADD CONSTRAINT `fk_slides_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE;

--
-- Constraints for table `level_config`
--
ALTER TABLE `level_config`
  ADD CONSTRAINT `fk_level_config_question` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mini_game_current_conversations`
--
ALTER TABLE `mini_game_current_conversations`
  ADD CONSTRAINT `fk_mini_game_current_dialogue` FOREIGN KEY (`dialogue_id`) REFERENCES `mini_game_dialogues` (`dialogue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_current_exercise` FOREIGN KEY (`exercise_id`) REFERENCES `mini_game_exercises` (`exercise_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_current_location` FOREIGN KEY (`current_location_id`) REFERENCES `mini_game_locations` (`location_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_current_npc` FOREIGN KEY (`current_npc_id`) REFERENCES `mini_game_npcs` (`npc_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mini_game_dialogues`
--
ALTER TABLE `mini_game_dialogues`
  ADD CONSTRAINT `fk_mini_game_dialogues_exercise` FOREIGN KEY (`exercise_id`) REFERENCES `mini_game_exercises` (`exercise_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_dialogues_location` FOREIGN KEY (`location_id`) REFERENCES `mini_game_locations` (`location_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_dialogues_npc` FOREIGN KEY (`npc_id`) REFERENCES `mini_game_npcs` (`npc_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mini_game_dialogue_choices`
--
ALTER TABLE `mini_game_dialogue_choices`
  ADD CONSTRAINT `fk_mini_game_dialogue_choices_dialogue` FOREIGN KEY (`dialogue_id`) REFERENCES `mini_game_dialogues` (`dialogue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mini_game_exercises`
--
ALTER TABLE `mini_game_exercises`
  ADD CONSTRAINT `fk_mini_game_exercises_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `mini_game_lessons` (`lesson_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mini_game_exercise_submissions`
--
ALTER TABLE `mini_game_exercise_submissions`
  ADD CONSTRAINT `fk_mini_game_submissions_exercise` FOREIGN KEY (`exercise_id`) REFERENCES `mini_game_exercises` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mini_game_user_exercise_progress`
--
ALTER TABLE `mini_game_user_exercise_progress`
  ADD CONSTRAINT `fk_mini_game_progress_exercise` FOREIGN KEY (`exercise_id`) REFERENCES `mini_game_exercises` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mini_game_progress_submission` FOREIGN KEY (`last_submission_id`) REFERENCES `mini_game_exercise_submissions` (`submission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD CONSTRAINT `fk_choices_question` FOREIGN KEY (`question_id`) REFERENCES `quiz_questions` (`question_id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `fk_questions_quiz` FOREIGN KEY (`quiz_id`) REFERENCES `lesson_quizzes` (`quiz_id`) ON DELETE CASCADE;

--
-- Constraints for table `room_participants`
--
ALTER TABLE `room_participants`
  ADD CONSTRAINT `room_participants_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `game_rooms` (`room_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `room_participants_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `simulation_active_events`
--
ALTER TABLE `simulation_active_events`
  ADD CONSTRAINT `fk_active_events_event` FOREIGN KEY (`event_id`) REFERENCES `random_events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_active_events_save` FOREIGN KEY (`save_id`) REFERENCES `simulation_saves` (`save_id`) ON DELETE CASCADE;

--
-- Constraints for table `simulation_logs`
--
ALTER TABLE `simulation_logs`
  ADD CONSTRAINT `fk_sim_logs_event` FOREIGN KEY (`event_id`) REFERENCES `random_events` (`event_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_sim_logs_save` FOREIGN KEY (`save_id`) REFERENCES `simulation_saves` (`save_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `simulation_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `simulation_saves`
--
ALTER TABLE `simulation_saves`
  ADD CONSTRAINT `fk_sim_saves_location` FOREIGN KEY (`current_location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_sim_saves_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_options`
--
ALTER TABLE `survey_options`
  ADD CONSTRAINT `fk_survey_opts_question` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_mouse_effect` FOREIGN KEY (`equipped_mouse_effect_id`) REFERENCES `shop_items` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_profile_frame` FOREIGN KEY (`equipped_profile_frame_id`) REFERENCES `shop_items` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_theme` FOREIGN KEY (`equipped_theme_id`) REFERENCES `shop_items` (`item_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD CONSTRAINT `user_achievements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_achievements_ibfk_2` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD CONSTRAINT `fk_inventory_item` FOREIGN KEY (`item_id`) REFERENCES `shop_items` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_inventory_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_showcase`
--
ALTER TABLE `user_profile_showcase`
  ADD CONSTRAINT `fk_showcase_achievement` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_showcase_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
