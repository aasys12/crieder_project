-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 13, 2018 at 02:30 PM
-- Server version: 10.0.31-MariaDB-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asharmax_Books`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `publisherid` int(10) unsigned NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `genre` char(20) NOT NULL,
  `sales` int(10) unsigned NOT NULL,
  `plotdescription` text,
  `comments` text,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `title`, `publisherid`, `year`, `genre`, `sales`, `plotdescription`, `comments`) VALUES
(4, 'Furiously Happy: A Funny Book', 0, 1996, 'Drama', 5000, '#1 New York Times Bestseller\r\n\r\nIn Furiously Happy, a humor memoir tinged with just enough tragedy and pathos to make it worthwhile, Jenny Lawson examines her own experience with severe depression and a host of other conditions, and explains how it has led her to live life to the fullest:\r\n\r\n', 'Last year I bought this author''s hilarious LET''S PRETEND THIS NEVER HAPPENED when it was a Daily Deal and enjoyed it enormously. I didn''t know that she had written a second book until it showed as a Daily Deal and I grabbed it and stopped reading the book I was in the middle of to wolf it down. (Figuratively speaking, of course.)\r\n\r\nHer first book is a memoir of her bizarre childhood. It''s presented in a comic manner and I suspect that many readers will be upset to learn that her life hasn''t been non-stop laughs. Not that this one isn''t wet-your-pants funny in parts, but Ms. Lawson''s main goal here is to discuss her life-long battle with depression and she does so in a way that''s peculiarly her own. (And sometimes just peculiar.) Mental illness is the Final Frontier of medicine and we still can''t fully convinced ourselves that it''s not "all in your head." Of course, it IS "all in your head" but that doesn''t make it less debilitating or easier to treat. The societal costs of untreated or poorly treated mental illness in terms of suicide, unemployment or underemployment, incarceration, etc. has never been calculated. Maybe we just don''t want to think about it.\r\n\r\nThis is an inside look at chronic depression from a woman who has struggled all of her life and will continue to do so. Barring a miracle cure, there are no happy endings for those with chronic depression. But there can be happy days and hours and minutes in between the misery and Jenny valiantly grabs every one of them and savors it. If you have ever suffered from depression or if you love someone who has, you should read this book.'),
(5, 'Proof of Heaven: A Neurosurgeo', 0, 2016, 'Fiction', 400, 'Near-death experiences, or NDEs, are controversial. Thousands of people have had them, but many in the scientific community have argued that they are impossible.', '"Eben Alexander brings a unique perspective to the sacred world combining a glorious, personal vision of spiritual consciousness with patient, insightful scientific inquiry. "Proof of Heaven" is a compelling story of what may lie ahead for all of us in the life beyond this one. We have nothing to fear." --Allan J. Hamilton, MD, FACS, author of "The Scalpel and the Soul" and "Zen Mind, Zen Horse"\r\n'),
(8, 'The Last Crime', 0, 2019, 'Fiction', 1, 'Crime ends in the world', 'the End');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `publisherid` int(10) unsigned NOT NULL,
  `publishername` char(30) NOT NULL,
  `location` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publishername`, `location`) VALUES
(0, 'Dietel', 'newyork'),
(0, 'Steve', 'New York'),
(0, 'beta', 'Commerce'),
(0, 'Dietel', 'dff'),
(0, 'dfds', 'dff'),
(0, 'Steve', 'New York'),
(0, 'Dietel', 'newyork'),
(0, 'dfds', 'dff'),
(0, 'Dietel', 'dff'),
(0, 'Dietel', 'newyork'),
(0, 'beta', 'Commerce'),
(0, 'beta', 'Commerce'),
(0, 'Dietel', 'newyork'),
(0, 'Steve', 'SEATTLE'),
(0, 'Steve', 'Irving'),
(0, 'Dietel', 'Irving'),
(0, 'Jenny Lawson', 'New York'),
(0, 'Eben Alexander III M. D.', 'United Kingdom'),
(0, 'Steve', 'Wylie'),
(0, 'TAMU', 'Commerce'),
(0, 'CSCI380', 'Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE IF NOT EXISTS `writer` (
  `writerid` int(10) unsigned NOT NULL,
  `firstname` char(30) NOT NULL,
  `middlename` char(30) DEFAULT NULL,
  `lastname` char(30) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` char(30) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
