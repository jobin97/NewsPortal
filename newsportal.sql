-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 02:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'admin@gmail.com', 1, '2022-03-27 07:51:00', '2022-03-30 09:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Bollywood', 'Bollywood News all', '2022-03-28 10:28:09', '2022-04-06 06:07:57', 1),
(6, 'Politics', 'Politics', '2022-03-28 07:46:09', '2022-03-28 07:52:10', 1),
(10, 'Sports', 'Sports News all ', '2022-04-05 05:40:50', '2022-04-06 06:03:30', 1),
(11, 'Entertainment ', 'Entertainment News all', '2022-04-06 03:36:51', '2022-04-06 06:04:19', 1),
(12, 'Market', 'Market News all', '2022-04-06 04:27:19', '2022-04-06 06:08:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(5, '16', 'Jobin Benny', 'jobinbenny55@gmail.com', 'waiting', '2022-04-01 04:51:23', 1),
(7, '21', 'Jobin Benny', 'jerinbenny97@gmail.com', 'Waiting', '2022-04-06 08:32:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '         <p>\r\n           \r\n         A web portal is a specially designed website that brings information from diverse sources, like emails, online forums and search engines, together in a uniform way. Usually, each information source gets its dedicated area on the page for displaying information (a portlet); often, the user can configure which ones to display. Variants of portals include mashups and intranet \"dashboards\" for executives and managers. The extent to which content is displayed in a \"uniform way\" may depend on the intended user and the intended purpose, as well as the diversity of the content. Very often design emphasis is on a certain \"metaphor\" for configuring and customizing the presentation of the content (e.g., a dashboard or map) and the chosen implementation framework or code libraries. In addition, the role of the user in an organization may determine which content can be added to the portal or deleted from the portal configuration.</p>\r\n\r\n      <p>\r\n  A portal may use a search engine\'s application programming interface (API) to permit users to search intranet content as opposed to extranet content by restricting which domains may be searched. Apart from this common search engines feature, web portals may offer other services such as e-mail, news, stock quotes, information from databases and even entertainment content. Portals provide a way for enterprises and organizations to provide a consistent \"look and feel\" with access control and procedures for multiple applications and databases, which otherwise would have been different web entities at various URLs. The features available may be restricted by whether access is by an authorized and authenticated user (employee, member) or an anonymous website visitor..\r\n      </p>', '2018-06-30 18:01:03', '2022-04-06 05:42:49'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Kerala, India</p><p><b>Phone Number : </b>+91 -99XXXXXXXX</p><p><b>Email -id : </b>admin@gmail.com</p>', '2018-06-30 18:01:36', '2022-04-06 03:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(16, 'IPL2022', 10, 20, 'IPL Cup', '2022-03-30 11:55:15', '2022-04-05 05:47:00', 1, NULL, 'b9fb9d37bdf15a699bc071ce49baea53.jpg'),
(18, 'Politics in India', 6, 26, 'mm', '2022-03-31 10:15:18', '2022-04-06 06:42:57', 1, 'Politics-in-India', '26382ceac4a89483e47ad3fd8b08063e.png'),
(19, 'Police offered to arrest Will Smith, but Chris Rock said ‘No, no, no, I’m fine’: Oscars producer', 2, 22, '<div class=\"row\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; font-size: 16px; vertical-align: baseline; max-width: 990px; width: 990px; clear: both; overflow: hidden; font-family: Roboto, sans-serif;\"><div class=\"heading-part\" style=\"margin: 10px 0px 20px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(218, 218, 218); border-left-color: initial; border-image: initial; outline-style: initial; outline-width: 0px; vertical-align: baseline; position: relative; overflow: hidden; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both;\"><h2 itemprop=\"description\" class=\"synopsis\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; border: 0px; outline-style: initial; outline-width: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Droid Serif&quot;, serif; color: rgb(107, 107, 107); line-height: 26px;\">The Academy of Motion Pictures Arts and Sciences met Wednesday to initiate disciplinary proceedings against Will Smith for violations against the group’s standards of conduct. Smith could be suspended, expelled or otherwise sanctioned.</h2><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; color: rgb(62, 62, 62); font-family: &quot;Droid Serif&quot;, serif; line-height: 28px;\"><br></p></div></div>', '2022-04-01 03:57:37', '2022-04-05 10:00:56', 1, 'Police-offered-to-arrest-Will-Smith,-but-Chris-Rock-said-‘No,-no,-no,-I’m-fine’:-Oscars-producer', 'edc7905fbe5b65e9ad807834f73b9cf8jpeg'),
(21, 'World Cup 2022', 10, 19, '<p>World Cup 2022 at Qatar</p>', '2022-04-05 03:23:52', '2022-04-05 06:21:28', 1, NULL, '3fb2db6cccf4a23383383394b28b2b31.jpg'),
(23, 'Dulquer Salmaan: Didn’t want to spoil my father’s legacy', 11, 23, '<p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; font-size: 16px; vertical-align: baseline; color: rgb(62, 62, 62); font-family: &quot;Droid Serif&quot;, serif; line-height: 28px;\">When&nbsp;<a href=\"https://indianexpress.com/article/entertainment/malayalam/dulquer-salmaan-says-the-word-pan-india-really-irks-him-salute-film-7827236/\" class=\"\" rel=\"noopener\" target=\"_blank\" style=\"padding: 0px; margin: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px; color: rgb(52, 111, 153);\">Dulquer Salmaan</a>&nbsp;was entering the film industry, the actor says he was fighting a lot of apprehension, partly due to his own insecurities and the pressure of living up to his father and superstar&nbsp;<a href=\"https://indianexpress.com/about/mammootty/\" class=\"\" style=\"padding: 0px; margin: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px; color: rgb(52, 111, 153);\">Mammootty</a>’s legacy.</p><p><ev-engagement group-name=\"contentLogin\" style=\"font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; font-size: 16px; vertical-align: baseline; font-family: &quot;Droid Serif&quot;, serif;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; color: rgb(62, 62, 62); line-height: 28px;\">Salmaan made his screen debut in 2012 with the crime-thriller Second Show and found massive success the same year with the National Award-winning drama Ustad Hotel.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; color: rgb(62, 62, 62); line-height: 28px;\">Over the years, the 35-year-old actor&nbsp;emerged as one of the biggest stars of Malayalam cinema with films like Anjali Menon’s Bangalore Days, Sai Pallavi-starrer Kali, Charlie, and Kurup, among others.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; color: rgb(62, 62, 62); line-height: 28px;\">He also gained widespread acclaim with Mani Ratnam’s Tamil romantic comedy O Kadhal Kanmani and eventually made his Hindi debut with 2018’s Karwaan, which starred&nbsp;<a href=\"https://indianexpress.com/about/irrfan-khan/\" class=\"\" style=\"padding: 0px; margin: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px; color: rgb(52, 111, 153);\">Irrfan</a>&nbsp;Khan.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; color: rgb(62, 62, 62); line-height: 28px;\">In an interview with PTI,&nbsp;<a href=\"https://indianexpress.com/about/dulquer-salmaan/\" class=\"\" style=\"padding: 0px; margin: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px; color: rgb(52, 111, 153);\">Dulquer Salmaan</a>&nbsp;said he had initially put a lot of pressure on himself to live up to his father’s name.</p></div>', '2022-04-05 06:18:58', '2022-04-06 04:25:31', 1, 'Dulquer-Salmaan:-Didn’t-want-to-spoil-my-father’s-legacy', '0114342308e2e6fbec71a06fb5b7722c.jpg'),
(24, 'Stocks in news: Tata Motors, NTPC, Axis Bank, Tejas Networks and more', 12, 24, '<p>Stock Market in India</p>', '2022-04-06 06:44:33', '2022-04-06 06:46:00', 1, 'Stocks-in-news:-Tata-Motors,-NTPC,-Axis-Bank,-Tejas-Networks-and-more', 'ccd082cecd9ee545fed2141ae8f5e101.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(19, 10, 'Football', 'Football News ', '2022-04-05 05:41:35', '2022-04-05 05:26:06', 1),
(20, 10, 'Cricket', 'Cricket News', '2022-04-05 05:42:18', '2022-04-05 07:41:07', 1),
(21, 5, 'Cinema', 'Cinema News ', '2022-04-05 06:18:08', '2022-04-06 06:06:12', 1),
(22, 2, 'Oscar', 'details', '2022-04-05 10:00:24', '2022-04-06 06:06:26', 1),
(23, 11, 'Cinema', 'Cinema News', '2022-04-06 04:25:11', '2022-04-06 06:06:39', 1),
(24, 12, 'stocks', 'stock Market', '2022-04-06 04:27:43', '2022-04-06 06:06:54', 1),
(26, 6, 'Administration ', 'Indian Politics', '2022-04-06 06:42:29', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Jobin', 'jobinbenny55@gmail.com', '0442b489ec26ad102ed53156e4308264'),
(2, 'Jerin', 'jerinbenny97@gmail.com', '0442b489ec26ad102ed53156e4308264');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
