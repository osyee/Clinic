-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05 يوليو 2024 الساعة 08:20
-- إصدار الخادم: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinicc`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admins`
--

INSERT INTO `admins` (`id`, `Name`, `Email`, `Password`) VALUES
(1, 'Bassel', 'Bassel9@gmail.com', 'fsda231'),
(2, 'Noura', 'Noura6@gmail.com', 'adwqasd'),
(3, 'Sajeda', 'Sajeda2@gmail.com', 'asdas');

-- --------------------------------------------------------

--
-- بنية الجدول `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `Date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Time` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `User_id` int NOT NULL,
  `Doctor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `appointments`
--

INSERT INTO `appointments` (`id`, `Date`, `Time`, `User_id`, `Doctor_id`) VALUES
(1, '18/10/2024', '17:00', 12, 6),
(2, '16/10/2024', '12:30', 7, 2),
(3, '21/10/2024', '14:15', 2, 5),
(4, '25/10/2024', '15:00', 16, 4),
(5, '18/10/2024', '13:00', 8, 8),
(6, '9/10/2024', '16:45', 5, 3),
(7, '22/10/2024', '17:20', 18, 1),
(8, '16/10/2024', '13:15', 14, 2),
(9, '22/10/2024', '16:00', 4, 5),
(10, '14/10/2024', '14:40', 17, 1),
(11, '15/10/2024', '15:00', 13, 7),
(12, '10/10/2024', '11:30', 9, 3),
(13, '17/10/2024', '18:15', 6, 8),
(14, '22/10/2024', '16:00', 10, 4),
(15, '19/10/2024', '14:25', 3, 1),
(16, '13/10/2024', '13:00', 1, 3),
(17, '18/10/2024', '15:45', 15, 2),
(18, '18/10/2024', '15:45', 11, 6);

-- --------------------------------------------------------

--
-- بنية الجدول `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Age` int NOT NULL,
  `Phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Specialization_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctors`
--

INSERT INTO `doctors` (`id`, `Name`, `Age`, `Phone`, `Specialization_id`) VALUES
(1, 'Rami Mourad ', 35, '0956654352', 2),
(2, 'Dani Akira', 27, '0999460177', 3),
(3, 'Younes Agha', 50, '0985492033', 1),
(4, 'Qasim Nabhan', 40, '0943761112', 5),
(5, 'Bassel Alfen', 32, '0953729016', 2),
(6, 'Khair Sebai', 47, '0920664175', 4),
(7, 'Jin Morgan', 65, '0952805930', 5),
(8, 'Omar Aldrobi', 38, '0998914722', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `medical_conditions`
--

CREATE TABLE `medical_conditions` (
  `id` int NOT NULL,
  `ConditionName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Test` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Drugs` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Appointment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `medical_conditions`
--

INSERT INTO `medical_conditions` (`id`, `ConditionName`, `Test`, `Drugs`, `Appointment_id`) VALUES
(1, 'داء الزلاقي', 'خزعة \r\nاختبار تحري عن أجسام مضادة للغلوتين', 'حمية عن الغلوتين\r\nفيتامينات ', 1),
(2, 'ارتفاع توتر الشرياني ', 'كوليسترول \r\nشحوم ثلاثية \r\nCBC', 'مدر للبول \r\nحاصرات أنجيوتنسين', 9),
(3, 'شقيقة', '', 'سوماتربيتان', 14),
(4, 'فرط نشاط درق', 'TSH\r\nT4', 'كاربيمازول', 8),
(5, 'الشريان التاجي', 'كوليسترول \r\nاختبار الجهد', 'اسبرين\r\nفيتامينات \r\nحاصرات بيتا', 15),
(6, 'فقر دم بعوز الحديد', 'خضاب \r\nCBC', 'حديد', 12),
(7, 'قرحة معدية', 'تنظير \r\nCBC', 'اموكسيسيلين \r\nأومبيرزوال\r\nكلاريثرومايسين ', 5),
(8, 'فتق نواة لبية (دسك)', 'فيتامين D\r\nسرعة التثفل\r\nCRP\r\n', 'مرخي عضلي \r\nNSAIDS\r\nمسكن', 4),
(9, 'ِشقيقة', '', 'سوماتربيتان', 11),
(10, 'سكري', 'سكر دم\r\nسكر بول ', 'خافضات سكر فموية', 2),
(11, 'داء الزلاقي\r\n', 'خزعة \r\nاختبار تحري عن أجسام مضادة للغلوتين', 'حمية عن الغلوتين\r\nفيتامينات', 13),
(12, 'الشريان التاجي\r\n', 'كوليسترول \r\nاختبار الجهد', 'اسبرين\r\nفيتامينات \r\nحاصرات بيتا', 7),
(13, 'قصور القلب', 'ُECG\r\nاختبار الجهد', 'مدر للبول\r\nحاصرات أنجيوتنسين\r\n', 3),
(14, 'فقر دم بعوز B12', 'CBC\r\nخضاب', 'فيتامين B12', 16),
(15, 'قصور نشاط درق', 'TSH', 'تيروكسين', 17),
(16, 'قرحة معدية', 'تنظير \r\nCBC\r\n ', 'اموكسيسيلين \r\nأومبيرزوال\r\nكلاريثرومايسين ', 18),
(17, 'فقر دم بعوز الحديد', 'خضاب \r\nCBC\r\n', 'حديد', 6),
(18, 'ارتفاع توتر الشرياني ', 'كوليسترول \r\nشحوم ثلاثية \r\nCBC\r\n', 'مدر للبول \r\nحاصرات أنجيوتنسين', 10);

-- --------------------------------------------------------

--
-- بنية الجدول `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `Rating` int NOT NULL,
  `Comments` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `User_id` int NOT NULL,
  `Doctor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `ratings`
--

INSERT INTO `ratings` (`id`, `Rating`, `Comments`, `User_id`, `Doctor_id`) VALUES
(1, 4, 'Good', 17, 1),
(2, 2, 'Nervous', 5, 3),
(3, 5, 'Amazing', 6, 8),
(4, 3, 'Not bad', 2, 5),
(5, 5, 'Amazing', 13, 7),
(6, 4, 'Good', 7, 2),
(7, 1, 'bad', 12, 6),
(8, 5, 'Amazing', 3, 1),
(9, 4, 'Good', 1, 3),
(10, 2, 'Nervous', 10, 4),
(11, 3, 'Not bad', 15, 2),
(12, 3, 'Not bad', 8, 8),
(13, 4, 'Good', 4, 5),
(14, 2, 'Nervous', 18, 1),
(15, 4, 'Good', 9, 3),
(16, 4, 'Good', 11, 6),
(17, 5, 'Amazing', 16, 4),
(18, 4, 'Good', 14, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `specializations`
--

CREATE TABLE `specializations` (
  `id` int NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `specializations`
--

INSERT INTO `specializations` (`id`, `Name`) VALUES
(1, 'دم'),
(2, 'قلبية'),
(3, 'غدد'),
(4, 'هضمية'),
(5, 'عصبية');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Age` int NOT NULL,
  `Gender` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `Name`, `Age`, `Gender`, `Phone`) VALUES
(1, 'Hani Mohammad', 30, 'Male', '0987654761'),
(2, 'Jamal Hasan', 60, 'Male', '0992637667'),
(3, 'Maha Najjar', 43, 'Female', '0935632145'),
(4, 'Wael Ahmad', 20, 'Male', '0987654348'),
(5, 'Nadia Ramadan', 35, 'Female', '0954671469'),
(6, 'Maya Ghali', 3, 'Female', '0965434671'),
(7, 'Yaman Ghali', 36, 'Male', '0987656781'),
(8, 'Wael Haj Younes ', 40, 'Male', '0935187549'),
(9, 'Anas Mando', 26, 'Male', '0932765872'),
(10, 'Lana Sebai', 37, 'Female', '0954567823'),
(11, 'Sandy Mahriz', 24, 'Female', '0993168514'),
(12, 'John Henry', 4, 'Male', '0974554541'),
(13, 'Eva Wanli', 16, 'Female', '0987654567'),
(14, 'James James', 43, 'Male', '0986567891'),
(15, 'Tom Howard', 33, 'Male', '0987453319'),
(16, 'Alex King', 19, 'Male', '0956215629'),
(17, 'John Walker', 60, 'Male', '0938432717'),
(18, 'Victora Kennday', 36, 'Feamle', '0993781031');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Doctor_id` (`Doctor_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Specialization_id` (`Specialization_id`);

--
-- Indexes for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appointment_id` (`Appointment_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Doctor_id` (`Doctor_id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Doctor_id`) REFERENCES `doctors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- قيود الجداول `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`Specialization_id`) REFERENCES `specializations` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- قيود الجداول `medical_conditions`
--
ALTER TABLE `medical_conditions`
  ADD CONSTRAINT `medical_conditions_ibfk_1` FOREIGN KEY (`Appointment_id`) REFERENCES `appointments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- قيود الجداول `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`Doctor_id`) REFERENCES `doctors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
