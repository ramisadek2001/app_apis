-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2021 at 08:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coronadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(255) NOT NULL,
  `alerttitle` varchar(2555) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `alerttitle`, `headline`, `image`) VALUES
(3, 'A Third dose Pfizer marathon kicked off on Saturday morning across Lebanon for those aged 50 years old and above who received the second shot at least 5 months ago.', 'Third dose Pfizer marathon kicks off across Lebanon', 'https://www.lbcgroup.tv/newsimages/News-P-620192-637742002791859755.JPG'),
(4, 'Minister of Health Firas Abiad said on Thursday the idea of the measures announced yesterday to confront Coronavirus is to urge people to receive the vaccine, “because it constitutes one of the means of salvation.”\r\n \r\n“80% of those admitted to hospitals are unvaccinated, including the high death rate,” he said during a radio interview.\r\n \r\nAbiad noted that the measures announced yesterday stipulate a lockdown on non-vaccinated people.\r\n \r\n“As for the vaccinated, they can live their normal lives and this matter is not only implemented in Lebanon, but in all countries of the world, where focus is on the necessity of being vaccinated,” he added. \r\n \r\nAbiad also explained that the ministry is communicating with hospitals to find the necessary support for them and to reopen Coronavirus wards in some of them.\r\n \r\nOn another note, he stressed that the new Covid-19 variant Omicron did not arrive in Lebanon yet.\r\n \r\n“I assure everyone that if, God forbid, the new variant arrives, we will be very transparent in this matter, and we are seeing now that it is spreading and has become present in many countries of the world,” he concluded by saying. ', 'Health Minister Abiad: New Covid-19 variant Omicron did not arrive in Lebanon yet', 'https://www.lbcgroup.tv/newsimages/News-P-619924-637740439241083157.jpg'),
(8, 'Lebanese Health authorities will impose a curfew on unvaccinated people during the coming holiday period as concerns mount over a new wave of coronavirus driven by the Omicron Covid-19 variant.\r\n\r\nLebanon has yet to register a case of Omicron, but fears that the virus will spread to the cash-strapped country have pushed authorities into preventive action.\r\n\r\nFrom December 17 until January 9, 2022 the unvaccinated will need to provide a negative PCR test that is not older than 48 hours to move around from 7pm until 6am.\r\n\r\nHealth Minister Firass Abiad said the new measures aim to limit socialising as Lebanese expatriates flood home for the holiday season, while sparing the country\'s ailing economy after two years of financial collapse. He did not specify how people would prove their PCR test status, or what penalties there may be for those flouting the new rules.\r\n\r\n“Most activities in the evenings are social in nature anyway, we do not want to put the entire country on hold,” he said at a press conference.\r\nStarting from January 10, all medical workers, education, tourism and public sector employees, including army and security forces, must be fully vaccinated to go to work. Unvaccinated staff must provide a negative PCR test result twice a week at their own expense.\r\n\r\nSchools and universities will be closed from December 16 until January 9, 2022.\r\n\r\nAll tourist establishments, restaurants and hotels will refuse entry to customers who cannot provide proof of vaccination or negative PCR test results beginning December 10, 2021.\r\n\r\nParties and gatherings must be limited to 50 per cent capacity. People organising events with more than 100 guests must request permission from the Tourism ministry to proceed.\r\n\r\nMr Abiad ran Lebanon’s largest hospital before he became a minister and often warned of the struggles Lebanese hospitals faced due to economic hardship.Lebanese hospitals were once among the best in the Middle East but after two years of economic collapse the medical sector is struggling.\r\n\r\nPower cuts and shortages of medicine and the exodus of highly skilled medical workers have weighed on Lebanese hospitals, sparking concerns about their ability to handle a new wave of Covid-19.\r\n\r\nThe variant first spotted in South Africa has now spread, and scientists fear that vaccines may not be as effective for Omicron.', 'Lebanon imposes curfew on the unvaccinated over Christmas period', 'https://thenational-the-national-prod.cdn.arcpublishing.com/resizer/JCRgnfT1WtYF0erY3csPzOpeJwA=/800x0/filters:format(jpg):quality(70)/cloudfront-eu-central-1.images.arcpublishing.com/thenational/ERFZUJDYBWNWEOVJ4GGRJOGRZA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `cases` varchar(255) NOT NULL,
  `deaths` varchar(255) NOT NULL,
  `recovered` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `critical` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `cases`, `deaths`, `recovered`, `active`, `critical`) VALUES
(2, '675765', '8755', '634994', '32016', '186');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `psw`, `qrcode`) VALUES
(10, 'ramisadek', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'https://covax.moph.gov.lb/impactmobile/vaccine/certificate?code=7NGGPMU4Nhttps://covax.moph.gov.lb/impactmobile/vaccine/certificate?code=7NGGPMU4NY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
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
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
