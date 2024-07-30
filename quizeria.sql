-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 12:13 PM
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
-- Database: `quizeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category`, `activity`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Time and Work', 'Activity 1', 'A can do 3/4th of a work in 36 days. Working at half his normal efficiency, in how many days can A finish the work alone?', '48 days', '72 days', '96 days', 'None of These', '96 days'),
(2, 'Time and Work', 'Activity 1', 'A and B can finish a work alone in 20 and 25 days respectively. Alongwith C, they managed to finish in 8 days. In how many days can A and C finish the work together?', '200/17 days', '15 days', '100/17 days', '200/9', '200/17'),
(3, 'Time and Work', 'Activity 1', 'A, B and C can do a work in 12,15 and 20 days respectively. They undertook a project for Rs. 60,000. What will be the difference in the shares of A and C?', '6000', '10000', '9000', '5000', '10000'),
(4, 'Time and Work', 'Activity 1', 'A and C can finish a job working alone in 18 and 24 days respectively. They started together but A left 3 days before the completion of the work. What is the total time taken to finish the work?', '9 days', '15 days', '12 days', '10 days', '12 days'),
(5, 'Time and Work', 'Activity 1', 'The efficiency of A is twice of B and 1/3 rd of C. If B alone can finish a job in 48 days, in how many days can the three of them do it together?', '5.33 days', '7 days', '5 days', 'None of These', '5.33 days'),
(6, 'Time and Work', 'Activity 1', 'A alone can do a work in 12 days, B in 16 days and C in 20 days. They work in such a manner that A and B work on the first day, B and C work on the 2nd day, A and C work on the 3rd day, A and B work on the 4th day and so on. In how many days will the work get finished?', '4 and 17/27 days', '9 days', '8 and 1/8 days', '7 and 17/27 days', '7 and 17/27 days'),
(7, 'Time and Work', 'Activity 1', 'P can finish a work alone in 30 days. He works with Q on alternate days with Q beginning the work on the first day. If the work gets completed in 11 and 1/3 days, in how many days can Q alone do the work?', '6 days', '180/37 days', '270/37 days', '150/37 days', '270/37 days'),
(8, 'Time and Work', 'Activity 1', 'A and B can do a work in 15 days, B and C in 20 days while A and C can do it in 10 days. In how many days can B alone do half the work?', '60 days', '30 days', '90 days', '45 days', '60 days'),
(9, 'Time and Work', 'Activity 1', 'A Pipe can fill a Tank in 14 hours but it takes 4 hours more due to a leak. In how much time can the leak empty 66.66% of the tank?', '84 hours', '63 hours', '57 hours', '42 hours', '42 hours'),
(10, 'Time and Work', 'Activity 1', 'Pipe 1 can fill a tank in 12 hours, Pipe 2 in 20 hours while a leak can empty the tank in 30 hours. Initially, all 3 are opened. After 5 hours, Pipe 1 is closed. In how much more time will the tank get completely filled?', '10 hours', '5 hours', '30 hours', '15 hours', '30 hours'),
(11, 'Time and Work', 'Activity 1', 'A hole in the bottom of a tank can empty it in 8 hours. An inlet pipe fills water at the rate of 2 litres per minute. When the tank is full the inlet is opened but due to the leak, the tank gets emptied in 10 hours. Find the capacity of the tank?', '4800 litres', '5400 litres', '6000 litres', '3200 litres', '4800 litres'),
(12, 'Time and Work', 'Activity 1', 'If 15 Men working for 9 hours can finish a work in 32 days, in how many days can 27 Men working at 12 hours do a work which is 1.5 times as great as the first one?', '15 days', '24 days', '27 days', '20 days', '20 days'),
(13, 'Time and Work', 'Activity 1', 'A person had certain number of candies which he wanted to distribute to his 5 children @ 3 candy per day to a child. This way the total candies would last for 30 days. 6 days later, 7 more children arrived and the person decided to now give 1 candy per day to a child. On which day will the candies get over?', '30th day', '25th day', '36th day', '15th day', '36th day'),
(14, 'Time and Work', 'Activity 1', '15 Men or 25 Women can do a job in 18 days working 8 hours per day. Then in how many days can 20 Men and 40 Women do the same job working 9 hours per day?', '6 days', '60/11 days', '5 days', '56/11 days', '60/11 days'),
(15, 'Time and Work', 'Activity 1', 'If 6 Men and 14 women can do a job in 12 days, in how many days can 9 men and 21 Women do the same job?', '10 days', '8 days', '15 days', '9 days', '8 days'),
(16, 'Time and Work', 'Activity 1', 'If the work done by 6 Men is same as that done by 9 Women and also same as the work done by 15 boys, then find the total per day Salary of 12 Men, 36 Women and 30 boys if a boy earns Rs.10 per day?', 'Rs.600', 'Rs.450', 'Rs.1200', 'Rs.1500', 'Rs.1200'),
(17, 'Time and Work', 'Activity 1', 'If 8 Men can do a work in 12 days and 12 Women can do the same work in 8 days, find the total time taken by 8 Men and 12 Women to do the work together?', '5 days', '4.8 days', '7 days', '6 days', '4.8 days'),
(18, 'Time and Work', 'Activity 1', 'A school arranged for a camp and made provision for food to be consumed by 150 people in 25 days. After 5 days, few more members joined because of which the food finished in a total time of 20 days. How many members joined the group in between the camp?', '50', '25', '75', 'None of These', '50'),
(19, 'Time and Work', 'Activity 1', 'A Contractor undertook to finish a job in 45 days and employed 40 Men to do the job. After 30 days, 50% of the work had been completed. If he wants to employ additional women where 1 Man is as efficient as 3 Women so that the work is completed on time, how many women need to be employed?', '60', '90', '100', '120', '120'),
(20, 'Time and Work', 'Activity 1', 'A can finish a job in 20 days. He works with C and together they finished the job taking 40% lesser time than that required had A worked alone. In how many days will C alone complete the work?', '40 days', '30 days', '60 days', '18 days', '60 days'),
(21, 'Time and Work', 'Activity 2', 'A man can do a piece of work in 5 days, but with the help of his son, he can do it in 3 days. In what time can the son do it alone?', '6.5 days', '7 days', '7.5 days', '8 days', '7.5 days'),
(22, 'Time and Work', 'Activity 2', 'A takes twice as much time as B and thrice as much time as C to finish a work. If all of them can do the work together in 2 days, in how many days can B do the work alone?', '4 days', '6 days', '8 days', '12 days', '6 days'),
(23, 'Time and Work', 'Activity 2', 'A and B can do a work in 8 days, B and C can do the same work in 12 days while all three of them can finish the work in 6 days. In how many days can A and C do the work together?', '4 days', '6 days', '8 days', '12 days', '8 days'),
(24, 'Time and Work', 'Activity 2', 'A and B can do a work in 5 days, B and C in 7 days while A and C can do it in 4 days. Who among the following will take the least time to do the work alone?', 'A', 'B', 'C', 'Data Inadequate', 'A'),
(25, 'Time and Work', 'Activity 2', 'A can do a certain work in the same time in which B and C can do it together. If A and B can do it in 10 days and C alone in 50 days, then B alone could do it in', '15 days', '20 days', '25 days', '30 days', '25 days'),
(26, 'Time and Work', 'Activity 2', 'A is twice as good as B and together they can finish a work in 14 days. In how many days can A alone do it?', '11 days', '21 days', '28 days', '42 days', '21 days'),
(27, 'Time and Work', 'Activity 2', 'A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is', '1/4', '1/10', '7/15', '8/15', '8/15'),
(28, 'Time and Work', 'Activity 2', 'A can do a work in 24 days, B in 9 days and C in 12 days. B and C start the work but leave after 3 days. The remaining work will be done by A in', '5 days', '6 days', '10 days', '10.5 days', '10 days'),
(29, 'Time and Work', 'Activity 2', 'A can do a work in 10 days while B can do the work alone in 30 days. If they work on alternate days in how many days can the work get completed?', '15 and 1/3 days', '14 and 2/3 days', '15 days', 'Cannot be Determined', 'Cannot be Determined'),
(30, 'Time and Work', 'Activity 2', 'A alone can do a work in 15 days while B alone can do it in 30 days. If they both work on alternate days, when will the work get completed?', '20 days', '18 days', '24 days', 'Cannot be Determined', '20 days'),
(31, 'Time and Work', 'Activity 2', 'A completes 4/5th of a work in 20 days. The remaining work is then completed by A and B in 3 days. How long would B alone take to do the work?', '23 days', '37.5 days', '60 days', '70 days', '37.5 days'),
(32, 'Time and Work', 'Activity 2', 'Twenty women can do a work in sixteen days. Sixteen men can complete the same work in 15 days. What is the ratio between the capacity of a man and a woman?', '3:4', '4:3', '5:3', 'Data Insufficient', '4:3'),
(33, 'Time and Work', 'Activity 2', '12 men can complete a work in 9 days. After they have worked for 6 days, 6 more men join them. How many days will they take to complete the remaining work?', '2 days', '3 days', '4 days', '5 days', '2 days'),
(34, 'Time and Work', 'Activity 2', 'A man, a woman and a boy can complete a job in 3, 4 and 12 days respectively. How many boys must assist 1 man and 1 woman to complete the work in 1/4 of a day?', '1', '4', '19', '41', '41'),
(35, 'Time and Work', 'Activity 2', '4 men and 6 women can complete a work in 8 days while 3 men and 7 women can complete it in 10 days. In how many days can 10 women complete the work?', '35', '40', '45', '50', '40'),
(36, 'Time and Work', 'Activity 2', 'Three taps A,B and C can fill a tank in 12,15 and 20 hours respectively. If A is open all the time and B and C are open for one hour each alternately, the tank will be full in', '7 hrs', '6.66 hrs', '5 hrs', '7.5 hrs', '7 hrs'),
(37, 'Time and Work', 'Activity 2', 'Two pipes A and B can fill a cistern in 37.5 minutes and 45 minutes respectively. Both pipes are opened. The cistern will be filled in exactly 30 minutes if the pipe B is turned off after', '5 min', '9 min', '10 min', '15 min', '15 min'),
(38, 'Time and Work', 'Activity 2', 'A pump can fill a tank in 2 hours. Because of a leak, it took 2 and 1/3 hours to fill the tank. The leak can empty the tank alone in', '4 and 1/3 hrs', '7 hrs', '8 hrs', '14 hrs', '14 hrs'),
(39, 'Time and Work', 'Activity 2', 'A cistern can be filled by a tap in 4 hours while it can be emptied by another tap in 9 hours. If both the taps are opened simultaneously, then the cistern will be filled in?', '4.5 hrs', '5 hrs', '6.5 hrs', '7.2 hrs', '7.2 hrs'),
(40, 'Time and Work', 'Activity 2', 'A water tank is 2/5th full. Pipe A can fill the tank alone in 10 minutes while pipe B can empty it in 6 minutes. If both the pipes are opened, how long will it take to empty or fill the tank completely?', '6 min to empty', '6 min to fill', '9 min to empty', '9 min to fill', '6 min to empty'),
(41, 'Time and Work', 'Activity 2', 'A, B and C can do a work in 12, 15 and 30 days respectively. B and C started the work together but worked at half of their respective efficiency. After 3 days A joined them and all three of them worked at their normal efficiencies. In how much time will the work get completed?', '77/11 days', '84/11 days', '51/11 days', 'None of These', '84/11 days'),
(42, 'Time and Work', 'Activity 2', 'A and B together can do half as much work as C and D together. Also, the efficiency of A is 1/3rd of B. If all 4 of them working together can finish a work in 32 days in how many days can A alone do the work?', '320 days', '480 days', '384 days', '420 days', '384 days'),
(43, 'Time and Work', 'Activity 2', 'If 24 Men and 40 Women can do a work in 36 days, in how many days can 18 Men and 30 Women do the same work?', '27 days', '36 days', '48 days', 'Cannot be Determined', '48 days'),
(44, 'Time and Work', 'Activity 2', 'There are 2 pipes which fill a tank in 25 and 20 hours respectively. Initially the tank is empty when both the pipes are opened. There is a mark at 3/4th of the top level of the tank. When the water reaches this level, a leak at the bottom of the tank is opened and the tank gets empty in the next 15 hours. In how much time can the leak working alone empty the full tank?', '15 hrs', '22 hrs', '12.5 hrs', '7.14 hrs', '7.14 hrs'),
(45, 'Time and Work', 'Activity 2', 'A can do a work in 15 days while B can destroy the complete work in 30 days. If there are working on alternate days with A beginning the work when will the work get completed?', '60 days', '56 days', '52 days', '54 days', '56 days'),
(46, 'Permutations and Combinations', 'Activity 1', 'There are 5 ways to go from A to B and 4 ways to go from B to C. In how many ways can a person go from A to C via B?', '9', '20', '41', 'None of These', '20'),
(47, 'Permutations and Combinations', 'Activity 1', 'A student appears for an exam in which he has to attempt 5 questions in total. There are 2 sections given. Section 1 has 5 questions in which 2 particular questions have to be definitely attempted. Section 2 has 6 questions. In how many ways can the student attempt the paper?', '5C2x6C3', '5C2+6C3', '9C3', '5C2', '9C3'),
(48, 'Permutations and Combinations', 'Activity 1', 'There are n people in a room and each one shakes hands with everyone else. If the number of handshakes is 55, find the number of people in the room?', '11', '27', '10', '23', '11'),
(49, 'Permutations and Combinations', 'Activity 1', 'There are 10 stations on a particular route including the starting and the last station. If a new station is introduced, find the number of new tickets to be printed? (Assume that a person can choose to go from any source to a destination)', '10', '11', '22', '20', '20'),
(50, 'Permutations and Combinations', 'Activity 1', '2 Numbers are chosen from the first 10 natural numbers. Then the number of ways in which at least one number is prime will be ?', '6', '15', '30', '45', '30'),
(51, 'Permutations and Combinations', 'Activity 1', 'A boy goes to a birthday party where 4 dishes have been laid out. The number of ways in which he can select at least one dish is ?', '4', '15', '16', '24', '15'),
(52, 'Permutations and Combinations', 'Activity 1', 'There are 7 points in a plane and no 3 of them are collinear. Then the number of straight lines drawn will be?', '21', '42', '13', '14', '21'),
(53, 'Permutations and Combinations', 'Activity 1', 'In how many ways can 3 boys and 2 girls be seated in a straight line such that the girls are always together?', '24', '10', '120', '48', '48'),
(54, 'Permutations and Combinations', 'Activity 1', 'How many 4 digit numbers not greater than 4000 can be formed using the digits 0, 1, 2, 3, 4 and 5 with repetition?', '1080', '648', '649', '1081', '649'),
(55, 'Permutations and Combinations', 'Activity 1', 'In how many ways can one select 2 odd multiples of 5 from 1 to 100?', '45', '20', '190', '10', '45'),
(56, 'Permutations and Combinations', 'Activity 1', 'How many 3 digit even numbers can be formed using the digits 0, 1, 2, 3 and 4 if repetition of digits is not allowed?', '60', '36', '48', '72', '60'),
(57, 'Permutations and Combinations', 'Activity 1', 'In how many other ways can we arrange the letters of the word “LETTER”?', '180', '179', '360', '359', '180'),
(58, 'Permutations and Combinations', 'Activity 1', 'In how many ways can 5 boys and 5 girls be arranged in a straight line such that the boys and girls are alternate?', '5!x5!', '2x5!x5!', '5!x6!', 'None of These', '2x5!x5!'),
(59, 'Permutations and Combinations', 'Activity 1', 'In how many ways can 4 friends be seated around a circular table?', '24', '12', '6', '3', '6'),
(60, 'Permutations and Combinations', 'Activity 1', 'A student appears for an exam where there are 4 questions and any 3 have to be attempted. What is the total number of ways in which the exam can be attempted?', '15', '32', '8', '12', '15'),
(61, 'Permutations and Combinations', 'Activity 1', 'In how many ways can 3 numbers be selected from the first 20 natural numbers such that exactly one of them is a multiple of 3?', '20C3', '14C2', '14C2+6C1', '14C2x6C1', '14C2x6C1'),
(62, 'Permutations and Combinations', 'Activity 1', 'In how many ways can 3 different prizes be given to 4 students such that each student can get any number of prizes?', '256', '81', '3^3', '4^3', '4^3'),
(63, 'Permutations and Combinations', 'Activity 1', 'Using 4 different flowers, how many garlands can be formed?', '6', '12', '3', '8', '3'),
(64, 'Permutations and Combinations', 'Activity 1', '4 tasks have to be assigned to 4 persons. Find the number of ways if the 1st person cannot be given the first task?', '24', '4', '36', '18', '18'),
(65, 'Permutations and Combinations', 'Activity 1', 'What is the total number of combinations of n identical things taken 0 or some or all at a time?', 'n!', 'n+1', 'n', 'None of These', 'n+1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
