-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 04:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `bucket`
--

CREATE TABLE IF NOT EXISTS `bucket` (
  `quiz_id` text NOT NULL,
`qid` int(11) NOT NULL,
  `questions` text NOT NULL,
  `right_ans` text NOT NULL,
  `wrong1` text NOT NULL,
  `wrong2` text NOT NULL,
  `wrong3` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bucket`
--

INSERT INTO `bucket` (`quiz_id`, `qid`, `questions`, `right_ans`, `wrong1`, `wrong2`, `wrong3`) VALUES
('33b972', 1, 'What is your name?', 'sandip', 'binoy', 'ashish', 'rushabh'),
('015473', 2, 'g', 'iug', 'uig', 'iu', 'iu'),
('015473', 3, 'bh', 'b', 'bi', 'bu', 'u'),
('015473', 4, 'bh', 'JK', 'KJjK', 'Hj', 'kjbk'),
('015473', 5, 'yug', 'vu`vug`vu`vgu`vugv', 'gvuh', 'vbu', 'v'),
('015473', 6, 'v', 'hbvh', 'bvh', 'kbh', 'kbhk'),
('015473', 7, 'g', 'iyv', 'bhuv', 'jhvh', 'j'),
('015473', 8, 'h', 'gh', 'gihy', 'gi', 'j'),
('015473', 9, 'bkj', 'hb', 'khbk', 'hbkh', 'b'),
('015473', 10, 'bkj', 'khb', 'jbvdkj', 'hkb', 'hu'),
('015473', 11, 'bkj', 'hb', 'kh', 'b', 'jkb'),
('015473', 12, 'bkj', 'bvd', 'befds', 'bsgf', 'bh'),
('015473', 13, 'bkj', 'vgf', 'tuf', 't', 'y'),
('015473', 14, 'bkj', 'b', 'u', 'hh', 'khd'),
('015473', 15, 'bkj', 'bi', 'gygy', 'giy', 'y'),
('60fb54', 16, 'ygtyg', 'tuf', 'tf', 'tyfvy', 'g'),
('60fb54', 18, 'What is PHp', 'srever', 'bvguvt', 'vyt', 'vc'),
('ee98a2', 19, 'what is full form of php', 'hypertext preprocessor', 'pre', 'pwe', 'pwer');

-- --------------------------------------------------------

--
-- Table structure for table `mera`
--

CREATE TABLE IF NOT EXISTS `mera` (
  `result_id` text NOT NULL,
  `title` text NOT NULL,
  `date` date DEFAULT NULL,
  `quiz_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mera`
--

INSERT INTO `mera` (`result_id`, `title`, `date`, `quiz_id`) VALUES
('1005cb', 'Bio Test', NULL, '33b972'),
('c92fa7', 'Sandip', NULL, '5844fd'),
('8011f0', 'Sandip', NULL, '73226f'),
('131941', 'Sandip', NULL, '514cbe'),
('4a4ac9', 'Sandip', NULL, 'd70c22'),
('1d75c8', 'Sandip', NULL, '1e9bd0'),
('7d0391', 'Sandip', NULL, '8f36ed'),
('af08e9', 'Sandip', NULL, '0e4087'),
('1d77b0', 'Sandip', NULL, 'b4e408'),
('14cee2', 'Sandip', NULL, '67999a'),
('8478f1', 'Sandip', NULL, 'b6f710'),
('911642', 'Sandip', NULL, '1afee8'),
('40bf3d', 'Sandip', NULL, '226023'),
('a082bc', 'Sandip', NULL, 'e7858f'),
('02ccfb', 'Sandip', NULL, 'b8d8e6'),
('5d362d', 'Sandip', NULL, '015473'),
('bd35ab', 'WT test', NULL, '481125'),
('51e71f', 'WT test', NULL, 'f8c17c'),
('84b32d', 'WT test', NULL, '60fb54'),
('b56d57', 'new test', NULL, '741ac2'),
('600413', 'PHP', NULL, 'ee98a2');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `stud_name` text NOT NULL,
  `stud_id` int(11) NOT NULL,
  `result_code` text NOT NULL,
  `total_question_count` int(11) NOT NULL,
  `attempted_question_count` int(11) NOT NULL,
  `correct_ans_count` int(11) NOT NULL,
  `wrong_ans_count` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`stud_name`, `stud_id`, `result_code`, `total_question_count`, `attempted_question_count`, `correct_ans_count`, `wrong_ans_count`, `time`) VALUES
('Binoy', 12, '84b32d', 2, 2, 2, 0, '2017-11-01 05:49:46'),
('Sandip', 1, '84b32d', 2, 2, 0, 2, '2017-11-01 05:52:17'),
('Ashish', 0, '600413', 1, 1, 1, 0, '2017-12-10 13:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bucket`
--
ALTER TABLE `bucket`
 ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bucket`
--
ALTER TABLE `bucket`
MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
