-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 01:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2023-07-02 23:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(3, 'ceejltayco@gmail.com', 38, '2019-11-14', '2019-11-16', 'Rent for business trip.', 3, '2019-11-10 14:48:19'),
(4, 'ceejltayco@gmail.com', 44, '2019-12-04', '2019-12-04', 'For roadtrip.', 3, '2019-12-03 15:39:43'),
(5, 'jbadilles@gmail.com', 38, '2019-12-04', '2019-12-04', 'For business trip.', 3, '2019-12-04 07:48:29'),
(6, 'ceejltayco@gmail.com', 38, '2019-12-23', '2019-12-23', 'For company outing.', 3, '2019-12-21 16:30:10'),
(7, 'ceejltayco@gmail.com', 39, '2019-12-23', '2019-12-25', 'For business trp.', 3, '2019-12-21 19:14:23'),
(11, 'ceejltayco@gmail.com', 37, '2020-01-12', '2020-01-12', 'Test for notification', 2, '2020-01-12 09:14:11'),
(12, 'ceejltayco@gmail.com', 37, '2020-01-26', '2020-01-26', 'Test Only.', 2, '2020-01-26 08:12:27'),
(13, 'ceejltayco@gmail.com', 37, '2020-01-26', '2020-01-26', 'Family use.', 2, '2020-01-26 08:15:19'),
(14, 'niepresjohnarrogante@gmail.com', 46, '2023-07-03', '2023-07-07', 'I would like to rent this car for my business trip.', 3, '2023-07-02 08:09:23'),
(15, 'niepresjohnarrogante@gmail.com', 47, '2023-07-03', '2023-07-10', 'My parents are coming this week and I want to tour them in the state.', 3, '2023-07-02 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(8, 'Mitsubishi', '2019-09-26 06:07:11', NULL),
(9, 'Ford', '2019-09-28 15:41:32', NULL),
(10, 'Honda', '2019-10-20 11:14:36', NULL),
(11, 'Foton', '2019-10-20 12:01:09', NULL),
(12, 'Isuzu', '2019-10-20 12:10:24', NULL),
(13, 'Subaro', '2023-07-02 07:25:17', NULL),
(14, 'Kia', '2023-07-02 07:40:58', NULL),
(15, 'GMC', '2023-07-02 09:17:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmation`
--

CREATE TABLE `tblconfirmation` (
  `id` int(5) NOT NULL,
  `booking_id` int(5) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `date_confirmed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblconfirmation`
--

INSERT INTO `tblconfirmation` (`id`, `booking_id`, `confirm`, `date_confirmed`) VALUES
(1, 4, 0, '2019-12-04'),
(2, 5, 0, '2019-12-04'),
(3, 6, 0, '2019-12-22'),
(4, 7, 0, '2019-12-22'),
(6, 11, 0, '2020-01-19'),
(7, 12, 0, '2020-01-26'),
(8, 13, 0, '2020-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Houston, TX 77032', 'thefaviscarrental@gmail.com', '281-792-850');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE `tbllocation` (
  `booking_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`booking_id`, `lat`, `lng`) VALUES
(4, 7.0783797999999996, 125.55017950000001),
(5, 7.078397, 125.55013329999997),
(6, 7.078384499999999, 125.55015379999998),
(7, 7.0783869, 125.55015549999996);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<br>\r\n<p style=\"color: red; font-size: 15px; text-align: left;\"><strong>(1) Reservation Policy</strong></p>\r\n<p style=\"font-size: 14px;text-align: left;\">Upon reservation you must comply the following requirements below:</p>\r\n<ul>\r\n<li style=\"font-size: 14px;text-align: left;\">Renter must be 21 yrs old and above.</li>\r\n<li style=\"font-size: 14px;text-align: left;\">Must have professional driver\'s licence.</li>\r\n<li style=\"font-size: 14px;text-align: left;\">Must have 2 government issued ID\'s.</li>\r\n</ul>\r\n<p style=\"font-size: 14px;text-align: left;\">Reservation must be done one week before vehicle usage. The vehicle owner will confirmed the reservation once the owner confirmed the reservation the renter must pay 40% of the total bill to complete the transaction the payment must be done within 2 days if failure to do so will automatically cancel the reservation. Once a reservation is confirmed the renter must come on the pick-up date failure to do so, there will be a 400 pesos penalty for absence.</p>\r\n\r\n<hr class=\"dashed\">\r\n\r\n<p style=\"color: red; font-size: 15px; text-align: left;\"><strong>(2) Payment Policy</strong></p>\r\n<p style=\"font-size: 14px;text-align: left;\">Payment for reservation can be placed using money transfer/remittance to the account that this provided by the owner.</p>\r\n\r\n<hr class=\"dashed\">\r\n\r\n<p style=\"color: red; font-size: 15px; text-align: left;\"><strong>(3) Return Policy</strong></p>\r\n<p style=\"font-size: 14px;text-align: left;\">The renter must return the vehicle good condition, the fuel of the vehicle must have the same level of fuel from the pick-up date. If the vehicle will have a damaged upon return the customer will be charged depending on the owner. If the vehicle is returned late the renter will be penalized of 500 php.</p>\r\n\r\n<hr class=\"dashed\">\r\n\r\n<p style=\"color: red; font-size: 15px; text-align: left;\"><strong>(4) Destination</strong></p>\r\n<p style=\"font-size: 14px;text-align: left;\">Vehicle can be used within and outside the vicinity of the city except from critical areas.</p>\r\n\r\n<hr class=\"dashed\">\r\n\r\n\r\n<p style=\"color: red; font-size: 15px; text-align: left;\"><strong>(5) Promotions</strong></p>\r\n<p style=\"font-size: 14px;text-align: left;\">EZRent offers promotions. In order to avail and be updated about promotions user must subscribe to EZRent.</p>\r\n\r\n'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblratings`
--

CREATE TABLE `tblratings` (
  `id` int(5) NOT NULL,
  `rental_id` int(5) NOT NULL,
  `renter_id` int(5) NOT NULL,
  `booking_Id` int(5) NOT NULL,
  `rating` int(5) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `date_rated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblratings`
--

INSERT INTO `tblratings` (`id`, `rental_id`, `renter_id`, `booking_Id`, `rating`, `type`, `date_rated`) VALUES
(1, 93, 94, 3, 5, 1, '2019-12-03'),
(2, 93, 94, 3, 4, 0, '2019-12-04'),
(3, 96, 94, 4, 5, 0, '2019-12-04'),
(4, 96, 94, 4, 4, 1, '2019-12-04'),
(5, 93, 97, 5, 4, 1, '2019-12-05'),
(6, 93, 94, 6, 5, 1, '2019-12-22'),
(7, 95, 94, 7, 5, 1, '2020-01-19'),
(8, 101, 100, 14, 5, 1, '2023-07-02'),
(9, 101, 100, 14, 5, 0, '2023-07-02'),
(10, 101, 100, 15, 4, 0, '2023-07-02'),
(11, 101, 100, 15, 5, 1, '2023-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'niepresjohnarrogante@gmail.com', 'One of the best car rental services!', '2023-07-02 08:14:06', NULL),
(2, 'niepresjohnarrogante@gmail.com', 'One of the best car rental services!', '2023-07-02 08:14:46', NULL),
(3, 'niepresjohnarrogante@gmail.com', '5 Stars for their services!', '2023-07-02 08:17:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusage`
--

CREATE TABLE `tblusage` (
  `id` int(5) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `start` tinyint(1) NOT NULL,
  `confirmation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusage`
--

INSERT INTO `tblusage` (`id`, `booking_id`, `start`, `confirmation`) VALUES
(1, 4, 0, 0),
(4, 5, 0, 1),
(5, 6, 0, 1),
(6, 7, 0, 1),
(7, 14, 0, 1),
(8, 15, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `verified_at` date DEFAULT NULL,
  `UserType` varchar(2) NOT NULL DEFAULT '0',
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `LenderLat` double DEFAULT NULL,
  `LenderLng` double DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `verified_at`, `UserType`, `FullName`, `EmailId`, `Password`, `ContactNo`, `LenderLat`, `LenderLng`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(93, '2019-11-10', '0', 'Lender Demo 1', 'lender1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 7.0783746, 125.55014419999998, NULL, NULL, NULL, NULL, '2019-11-09 17:43:45', '2019-11-09 17:46:39'),
(94, NULL, '1', 'Ceej Tayco', 'ceejltayco@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, NULL, NULL, NULL, NULL, '2019-11-09 17:44:25', NULL),
(95, '2019-11-10', '0', 'Lender Demo 2', 'lender2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 7.014706483897799, 125.49596476718136, NULL, NULL, NULL, NULL, '2019-11-10 06:37:55', '2019-11-10 06:39:31'),
(96, '2019-12-03', '0', 'Lender Demo 3', 'lender3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 7.053109999999999, 125.5589463, NULL, NULL, NULL, NULL, '2019-11-10 07:30:50', '2019-12-03 15:36:26'),
(97, NULL, '1', 'Jenny Mae Badilles', 'jbadilles@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, NULL, NULL, NULL, NULL, '2019-12-04 07:47:28', NULL),
(98, '2019-12-22', '0', 'Lender 4', 'lender4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 7.049762499541513, 125.58792300292976, NULL, NULL, NULL, NULL, '2019-12-21 16:47:51', '2019-12-21 19:52:20'),
(99, NULL, '1', 'Renter123', 'renter123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, NULL, NULL, NULL, NULL, '2020-01-18 07:47:25', NULL),
(100, NULL, '1', 'Niepres John Ade Arrogante', 'niepresjohnarrogante@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', 0, 0, NULL, NULL, NULL, NULL, '2023-07-02 05:05:01', NULL),
(101, NULL, '0', 'Niepres John Ade Arrogante', 's.arrogante.niepresjohn@cmu.edu.ph', '21232f297a57a5a743894a0e4a801fc3', '+6390577586', 0, 0, '23/11/1999', 'P-6A Batangan, Valencia City, Bukidnon', 'Bukidnon - Valencia City', 'Philippines', '2023-07-02 06:38:15', '2023-07-02 07:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `vehicle_or` varchar(120) DEFAULT NULL,
  `vehicle_cr` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `user_id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`, `lat`, `lng`, `vehicle_or`, `vehicle_cr`) VALUES
(46, 101, 'Highlander', 5, 'The Toyota Highlander 2019 is a midsize SUV that combines functionality, comfort, and reliability. With its sleek and stylish design, the Highlander offers a spacious and versatile interior, accommodating up to eight passengers and providing ample cargo space. It boasts a smooth and comfortable ride, thanks to its well-tuned suspension system. The Highlander comes equipped with a range of advanced safety features, including Toyota Safety Sense™ P, which includes lane departure alert, dynamic radar cruise control, and pre-collision system with pedestrian detection. Under the hood, it offers a choice of powertrains, including a fuel-efficient four-cylinder engine or a more powerful V6 option, both delivering ample performance for everyday driving needs. Overall, the Toyota Highlander 2019 offers a dependable and family-friendly SUV option with a blend of practicality and modern features.', 84, 'Petrol', 2019, 8, 'CfztZX7ySdegaqmn6pS-cA.1440x700.jpg', 'yH58qwIhTvaDGZg3DI5Nvw.1440x700.jpg', 'FlwW2bnLQE6EUi5Z2ZOGEQ.1440x700.jpg', 'd-TfwcxfSC-m_f4Q0xtObg.1440x700.jpg', '2anr_mqPSQWHWfXzCaZXFA.1440x700.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, '2023-07-02 06:49:31', '2023-07-02 08:02:17', 0, 0, 'OR.jpg', 'CR.jpg'),
(47, 101, 'Rav4', 5, 'The Toyota RAV4 is a compact SUV that offers a perfect combination of versatility, efficiency, and reliability. With its sleek and modern design, the RAV4 stands out on the road. The interior provides a spacious and comfortable cabin with ample legroom and cargo space, making it ideal for both daily commutes and family adventures. The RAV4 offers advanced safety features like Toyota Safety Sense™ 2.0, including pre-collision warning, lane departure alert, and adaptive cruise control, ensuring a secure driving experience. It is available with different powertrain options, including a fuel-efficient hybrid variant, delivering impressive fuel economy without compromising performance. The RAV4 also offers excellent handling and a smooth ride, making it enjoyable to drive in various road conditions. Overall, the Toyota RAV4 is a practical and versatile SUV that caters to the needs of individuals and families alike, combining reliability, efficiency, and modern features.', 49, 'Petrol', 2018, 5, 'h8_9XkThRFWB0MCYVuZXQQ.1440x700.jpg', 'SuZk6lQbRIaRKdKTwpj6PQ.1440x700.jpg', '7bMOY3PmQCWbKDAvJ1pwNw.1440x700.jpg', '5YRftFAWSFOBHj5-8Oj8vg.1440x700.jpg', 'Pa9C0HveTr2PwSUFIizrBA.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 06:57:38', '2023-07-02 08:02:34', 0, 0, 'OR.jpg', 'CR.jpg'),
(48, 101, 'Corolla', 5, 'The Toyota Corolla 2017 is a compact sedan known for its reliability, fuel efficiency, and practicality. With its timeless design and compact size, the Corolla offers easy maneuverability and a comfortable ride. The interior is well-designed and provides a spacious cabin with comfortable seating for up to five passengers. The Corolla comes equipped with a range of standard safety features, including a backup camera, traction control, and multiple airbags, ensuring peace of mind on the road. It is powered by a fuel-efficient four-cylinder engine, delivering a balanced combination of power and efficiency for everyday driving. The Corolla also offers a smooth and quiet ride, making it a great choice for commuting or long trips. With its reputation for reliability, the Toyota Corolla 2017 is a practical and dependable sedan option that provides value for money and a satisfying ownership experience.', 50, 'Petrol', 2017, 5, '9OVysU1fRpGQ9VupD3E4iQ.1440x700.jpg', 'vu597WBwTbuuzui_epdyxQ.1440x700.jpg', 'AH9rakhITqa3VEihpWhQVQ.1440x700.jpg', 'GL1nlRQhSWaPLVfSdkehAA.1440x700.jpg', 'RCDP0IrjQO226gQcFplF6Q.1440x700.jpg', 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 1, 1, '2023-07-02 07:00:44', '2023-07-02 08:02:49', 0, 0, 'OR.jpg', 'CR.jpg'),
(49, 101, 'Rav4', 5, 'The Toyota RAV4 2020 is a popular compact SUV that combines style, versatility, and advanced technology. With its bold and rugged design, the RAV4 stands out on the road. The interior offers a spacious and comfortable cabin with modern features and premium materials. It provides ample cargo space and flexible seating options, making it convenient for both passengers and cargo. The RAV4 comes equipped with Toyota Safety Sense™ 2.0, which includes features like pre-collision warning, lane departure alert, and adaptive cruise control, ensuring a safe driving experience. It is available with multiple powertrain options, including a hybrid variant for enhanced fuel efficiency. The RAV4 delivers excellent handling and a smooth ride, making it suitable for various road conditions. Additionally, it offers advanced infotainment features, including touchscreen displays, smartphone integration, and available Wi-Fi connectivity. Overall, the Toyota RAV4 2020 is a versatile and feature-packed SUV that combines reliability, modern technology, and a comfortable driving experience.', 59, 'Petrol', 2020, 5, 'S1e2MxDCRIujj9Boa-1eXQ.1440x700.jpg', '5iY0pQXzTnibQ1i5-vnrfw.1440x700.jpg', 'teMDzPRqTQu3FU8gVb4ILQ.1440x700.jpg', 'PYICc--8Ro6DiNasDpsOfw.1440x700.jpg', 'Hli6W0sQSK6P5lDHyzu8xw.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 07:19:54', '2023-07-02 08:03:05', 0, 0, 'OR.jpg', 'CR.jpg'),
(50, 101, 'Camry', 5, 'The Toyota Camry 2020 is a midsize sedan known for its sleek design, reliability, and fuel efficiency. With its stylish and aerodynamic exterior, the Camry exudes a sense of sophistication. The interior is crafted with high-quality materials and offers a spacious cabin with comfortable seating for both the driver and passengers. The Camry is equipped with advanced safety features, including Toyota Safety Sense™ P, which includes pre-collision warning, lane departure alert, and adaptive cruise control, ensuring a secure and confident driving experience. It offers a range of engine options, including a fuel-efficient four-cylinder engine and a more powerful V6 option, both delivering smooth acceleration and responsive performance. The Camry provides a comfortable and quiet ride, with well-tuned suspension for excellent handling and stability. It also features modern technology, including an intuitive infotainment system, smartphone integration, and available wireless charging. Overall, the Toyota Camry 2020 offers a blend of style, reliability, and advanced features, making it an attractive choice for those seeking a comfortable and dependable midsize sedan.', 50, 'Petrol', 2020, 5, 'P4FmoJO_Ttmy3j2YF-6q0A.1440x700.jpg', 'CGRFcTjhSYWvcj911txFEQ.1440x700.jpg', 'rj8k5amjQFWaWLDlkUI_qw.1440x700.jpg', 'mVgaOcNqTkOBl6F8UyKufg.1440x700.jpg', '8WxauUu_SFKf9K414Hr1JQ.1440x700.jpg', 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 1, 1, '2023-07-02 07:22:49', '2023-07-02 08:03:24', 0, 0, 'OR.jpg', 'CR.jpg'),
(51, 101, 'Forester', 13, 'The Subaru Forester 2019 is a compact SUV that emphasizes practicality, safety, and all-weather capability. With its boxy yet modern design, the Forester offers a spacious and versatile interior, providing ample room for both passengers and cargo. It boasts excellent visibility and a comfortable seating position, making it a comfortable choice for long drives. The Forester comes equipped with Subaru\'s renowned Symmetrical All-Wheel Drive system, ensuring confident handling and traction on various road conditions. It also offers a generous ground clearance, allowing for light off-road adventures. Safety is a top priority in the Forester, with features such as Subaru\'s EyeSight driver assistance system, which includes adaptive cruise control, lane departure warning, and pre-collision braking. The Forester is powered by a capable four-cylinder engine that delivers sufficient power for everyday driving, and it offers good fuel efficiency as well. Overall, the Subaru Forester 2019 is a practical and reliable SUV choice, offering a spacious interior, capable all-wheel drive, and a focus on safety for drivers and their families.', 54, 'Petrol', 2019, 5, 'Bwkm4hW4S8OaCaDzEvLXRA.1440x700.jpg', 'mdOCLLXdROW_4zvRuKmgvQ.1440x700.jpg', 'begd0Mk8R-KZnij1t364gA.1440x700.jpg', 'L8XrVgHPS82nUcaiILs7Jg.1440x700.jpg', 'M0jptCOcQ7-VZSwAHBUBMA.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, '2023-07-02 07:27:02', '2023-07-02 08:03:55', 0, 0, 'OR.jpg', 'CR.jpg'),
(52, 101, 'Corolla iM', 5, 'The Toyota Corolla iM 2017 is a compact hatchback that offers a combination of style, practicality, and fuel efficiency. Derived from the Scion iM, the Corolla iM features a sleek and sporty design with a distinct front grille and striking lines. The interior provides a comfortable and modern cabin with supportive seating and a user-friendly infotainment system. The Corolla iM offers a generous amount of cargo space, making it suitable for carrying both passengers and their belongings. It comes equipped with standard safety features such as a rearview camera, stability control, and multiple airbags. Under the hood, the Corolla iM is powered by a fuel-efficient four-cylinder engine, delivering a balance of performance and fuel economy for daily commuting. It offers responsive handling and a smooth ride, ensuring an enjoyable driving experience. Overall, the Toyota Corolla iM 2017 is a practical and stylish hatchback that provides comfort, efficiency, and versatility, making it a suitable choice for those seeking a compact and reliable vehicle.', 48, 'Petrol', 2017, 5, 'l6MsyPvTTVexKwy7BzaVyQ.1440x700.jpg', 'h6jD8XSDSDKLn4YaXrVFUg.1440x700.jpg', 'ZejOIwq7TweeWV3WUyscAw.1440x700.jpg', 'f2cxl5-yTtafSMJSYFEWLA.1440x700.jpg', 'juSVEco4QxKtj-gGhOltNQ.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 07:30:34', '2023-07-02 08:04:12', 0, 0, 'OR.jpg', 'CR.jpg'),
(53, 101, 'Focus', 9, 'The Ford Focus 2015 is a compact car known for its agile handling, fuel efficiency, and array of available features. With its modern and sleek design, the Focus stands out in its class. The interior offers comfortable seating for up to five passengers, and the cabin is well-designed with user-friendly controls and quality materials. The Focus comes equipped with standard safety features like antilock brakes, stability control, and multiple airbags. It also offers available advanced safety features such as blind-spot monitoring and rearview camera. The Focus is available with a variety of engine options, including a fuel-efficient four-cylinder engine and a turbocharged EcoBoost engine for enhanced performance. It provides a responsive and engaging driving experience, with precise steering and excellent handling. The Focus also offers available technology features like Ford\'s SYNC infotainment system, touchscreen displays, and smartphone integration. Overall, the Ford Focus 2015 is a compact car that combines style, efficiency, and a fun-to-drive nature, making it a popular choice for those seeking a versatile and enjoyable daily driver.', 43, 'Petrol', 2015, 5, 'f18F95QvQQe7gWSoB3d87Q.1440x700.jpg', 'uOM1dvJMSrWKgXC8hNc4CA.1440x700.jpg', 'JNG7lKUmRVe48SM-5NyWww.1440x700.jpg', '0r28PL8ETlyk03OGpM0Wsw.1440x700.jpg', 'CQ5Msx5wRoiVrT5D-oeT_w.1440x700.jpg', 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 07:33:17', '2023-07-02 08:04:27', 0, 0, 'OR.jpg', 'CR.jpg'),
(54, 101, 'Yaris', 5, 'The Toyota Yaris 2019 is a subcompact car that offers a reliable, fuel-efficient, and practical driving experience. With its compact size and modern design, the Yaris is well-suited for urban driving and maneuvering through tight spaces. The interior provides comfortable seating for up to five passengers and offers a user-friendly layout with convenient features. Despite its small size, the Yaris offers a surprising amount of cargo space, making it practical for everyday use. In terms of safety, the Yaris comes equipped with a range of standard safety features, including multiple airbags, stability control, and a backup camera. It is powered by a fuel-efficient four-cylinder engine that delivers adequate power for city commuting and offers good fuel economy. The Yaris provides a smooth and comfortable ride, with nimble handling that makes it enjoyable to drive in urban environments. It also offers modern technology features, such as touchscreen infotainment, Bluetooth connectivity, and available navigation. Overall, the Toyota Yaris 2019 is a reliable and efficient subcompact car that combines practicality, safety, and modern features, making it a great choice for those seeking a compact and affordable daily driver.', 49, 'Petrol', 2019, 5, 'Qgq7lGocRYKxPI5vsBHU-w.1440x700.jpg', 'zXyAlstnQkiOZTHALz7JCQ.1440x700.jpg', '60DXKbZ8SIm19D8n2VvEkw.1440x700.jpg', 'pWM4xZI9Rk2mlvkGgyyZmA.1440x700.jpg', 'LCpocP43QAW2S2PaogfpVw.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 07:36:18', '2023-07-02 08:04:37', 0, 0, 'OR.jpg', 'CR.jpg'),
(55, 101, 'Rav4 Hybrid', 5, 'The Toyota RAV4 Hybrid 2019 is a compact hybrid SUV that offers a combination of fuel efficiency, versatility, and advanced features. With its modern and bold design, the RAV4 Hybrid stands out on the road. The interior provides a spacious and comfortable cabin with ample seating and cargo space. The RAV4 Hybrid comes equipped with a hybrid powertrain that combines a gasoline engine with an electric motor, resulting in excellent fuel efficiency and reduced emissions. It offers a smooth and quiet ride, with responsive acceleration and impressive power delivery. The RAV4 Hybrid also comes with advanced safety features, including Toyota Safety Sense™ 2.0, which includes features like pre-collision warning, lane departure alert, and adaptive cruise control, ensuring a safe driving experience. It offers all-wheel drive capabilities, providing confident handling and traction on various road conditions. The RAV4 Hybrid also features modern technology, such as a touchscreen infotainment system, smartphone integration, and available wireless charging. Overall, the Toyota RAV4 Hybrid 2019 is a reliable and eco-friendly SUV option, offering excellent fuel efficiency, advanced safety features, and a comfortable driving experience.', 62, 'Petrol', 2019, 5, 'thXkwOnFSRusNKimVvofig.1440x700.jpg', '0uLpwR80Qrej71A0R1aXUw.1440x700.jpg', 'A-Nkj4TRQKa9bxxQDVYdCw.1440x700.jpg', 'rG5QJI1TSfmGTgF7kHib2Q.1440x700.jpg', '77qLJsl3R7GRm9-48ZKFgw.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 07:40:05', '2023-07-02 08:04:59', 0, 0, 'OR.jpg', 'CR.jpg'),
(57, 101, 'Soul', 14, 'The Kia Soul 2015 is a compact crossover known for its unique design, spacious interior, and good value for money. With its boxy and distinctive exterior styling, the Soul stands out from other vehicles in its class. The interior offers ample headroom and legroom for both the front and rear passengers, making it comfortable for long drives. The Soul provides a versatile cargo space that can be expanded by folding down the rear seats, allowing for easy transportation of larger items. In terms of safety, it comes equipped with standard features such as antilock brakes, stability control, and multiple airbags. The Soul is available with different engine options, including a fuel-efficient four-cylinder engine and a more powerful turbocharged variant. It offers a smooth and composed ride, with responsive handling and good maneuverability. The Soul also comes with available features such as a touchscreen infotainment system, Bluetooth connectivity, and available navigation. Overall, the Kia Soul 2015 is a practical and fun-to-drive crossover that offers a unique design, ample space, and a range of features, making it an attractive choice for individuals or small families looking for a compact and versatile vehicle.', 44, 'Petrol', 2015, 5, 'or7_jMvISb2xhv2DHO8d5g.1440x700.jpg', 'WbIxlniRShSP_1grB3KgiA.1440x700.jpg', '0VzizxH_SYqvphyoezTD_g.1440x700.jpg', '4Frzs31FTqKrWRwSE7e6EQ.1440x700.jpg', '3ZCBU5WZTZ-hcxp4uk99jA.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2023-07-02 07:44:48', '2023-07-02 08:07:08', 0, 0, 'OR.jpg', 'CR.jpg'),
(58, 101, 'Corolla', 5, 'The Toyota Corolla 2018 is a compact sedan that is highly regarded for its reliability, fuel efficiency, and practicality. With its sleek and stylish design, the Corolla offers a timeless look on the road. The interior provides comfortable seating for up to five passengers and features a clean and functional layout. The Corolla comes equipped with a host of standard safety features, including Toyota Safety Sense™ P, which includes pre-collision warning, lane departure alert, and adaptive cruise control. It also offers excellent fuel efficiency, thanks to its efficient four-cylinder engine. The Corolla delivers a smooth and comfortable ride, with precise steering and nimble handling. It is well-suited for everyday commuting and offers ample cargo space for its class. Additionally, the Corolla comes with modern technology features, such as a touchscreen infotainment system, Bluetooth connectivity, and available navigation. Overall, the Toyota Corolla 2018 is a reliable and practical sedan that offers a comfortable ride, good fuel efficiency, and a range of features, making it a popular choice for individuals and families seeking a dependable and efficient daily driver.', 42, 'Petrol', 2018, 5, 'haK5-7uDSayM0zaGYa28EQ.1440x700.jpg', 'yLxaNKDCQAqM87DwJ64owQ.1440x700.jpg', 'Gyc3iwH_RRmuIW0dO-Rk8w.1440x700.jpg', 'dOD0i_NSTbulp6jk467yCQ.1440x700.jpg', 'KMYiOxQyTQqufY0LAG3nWw.1440x700.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2023-07-02 07:52:48', NULL, 0, 0, 'OR.jpg', 'CR.jpg'),
(59, 101, 'Corolla', 5, 'The Toyota Corolla 2017 is a compact sedan known for its reliability, fuel efficiency, and practicality. With its sleek and modern design, the Corolla stands out on the road. The interior provides comfortable seating for up to five passengers, with well-designed ergonomics and user-friendly controls. The Corolla is equipped with standard safety features, including multiple airbags, stability control, and a rearview camera. It also offers available advanced safety features such as lane departure warning and forward collision warning with automatic emergency braking. The Corolla 2017 is powered by a fuel-efficient four-cylinder engine, delivering a balance of performance and fuel economy for everyday driving. It offers a smooth and comfortable ride, with responsive handling and good maneuverability. The Corolla also offers modern technology features, such as a touchscreen infotainment system, Bluetooth connectivity, and available navigation. Additionally, it provides ample trunk space, making it practical for everyday errands and road trips. Overall, the Toyota Corolla 2017 is a reliable and efficient sedan that offers a comfortable ride, good fuel economy, and a range of features, making it a popular choice for individuals and families seeking a dependable and practical daily driver.', 38, 'Petrol', 2017, 5, 'jBCao0lERtCOMlqeoG3hMA.1440x700.jpg', 'D5WkPuFHQpyq_u2J2K3YGQ.1440x700.jpg', 'fPBHJNyvQdO40LjR8VJ32A.1440x700.jpg', 'ODmNKk-PRLqFPv5v1VH0Cw.1440x700.jpg', 'KsCABLOPSOSB5vcEaLRVGA.1440x700.jpg', 1, 1, NULL, NULL, 1, 1, NULL, 1, NULL, 1, NULL, NULL, '2023-07-02 07:57:15', NULL, 0, 0, 'OR.jpg', 'CR.jpg'),
(60, 101, 'Camry', 5, 'The Toyota Camry 2018 is a midsize sedan that offers a combination of style, performance, and comfort. With its sleek and sophisticated design, the Camry stands out on the road. The interior provides a spacious and well-appointed cabin with comfortable seating for up to five passengers. The Camry comes equipped with a range of standard safety features, including Toyota Safety Sense™ P, which includes pre-collision warning, lane departure alert, and adaptive cruise control. It offers a choice of powertrains, including a fuel-efficient four-cylinder engine and a more powerful V6 option, both delivering smooth acceleration and ample power. The Camry provides a comfortable and quiet ride, with responsive handling and a balanced suspension system. It also offers modern technology features, such as a touchscreen infotainment system, Bluetooth connectivity, and available navigation. Additionally, the Camry offers generous trunk space, making it practical for everyday needs. Overall, the Toyota Camry 2018 is a reliable and well-rounded sedan that offers a comfortable ride, a range of safety features, and modern amenities, making it a popular choice for individuals and families seeking a stylish and dependable daily driver.', 47, 'Petrol', 2018, 5, 'YdEUkIibQRiQ-V7GbRXFGA.1440x700.jpg', 'VwUYeKq5SHWKxoVBY6S7Vg.1440x700.jpg', 'oz6-8J2PTSav6KnZNlmn4A.1440x700.jpg', 'FwlsrPnQTaSAmBP4IfWaVA.1440x700.jpg', 'uMcNPR8GSuSpWA4hAwdWsQ.1440x700.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '2023-07-02 08:00:43', NULL, 0, 0, 'OR.jpg', 'CR.jpg'),
(61, 101, 'Yukon XL', 15, 'The GMC Yukon XL 2022 is a full-size SUV that combines impressive power, spaciousness, and modern features. With its bold and commanding presence, the Yukon XL stands out on the road. This extended-length version of the Yukon offers even more cargo space and legroom, making it an ideal choice for families or those who need ample seating and storage capacity.\r\n\r\nThe interior of the Yukon XL is luxurious and well-appointed, providing comfortable seating for up to eight passengers across three rows. The high-quality materials, advanced technology, and attention to detail create a refined and upscale cabin environment. The Yukon XL offers a range of convenient features, including tri-zone automatic climate control, a touchscreen infotainment system, smartphone integration, and available advanced driver-assistance systems.\r\n\r\nUnder the hood, the Yukon XL boasts powerful engine options, such as a standard V8 engine, delivering robust performance and impressive towing capabilities. It offers a smooth and comfortable ride, with responsive handling and available advanced suspension systems for enhanced stability and control.\r\n\r\nIn terms of safety, the Yukon XL is equipped with a comprehensive suite of safety features, including forward collision warning, lane-keeping assist, blind-spot monitoring, and rearview camera, ensuring peace of mind for both driver and passengers.\r\n\r\nWhether you\'re embarking on a family road trip, need to tow heavy loads, or simply desire a spacious and luxurious SUV, the GMC Yukon XL 2022 provides a compelling option. With its combination of power, versatility, and modern features, it offers a premium driving experience for those who appreciate comfort and functionality.', 110, 'Petrol', 2022, 7, 'anDZNEDGSDmKSoIftOL22A.1440x700.jpg', '-2csXqheQV2yFN6eklgPyA.1440x700.jpg', 'oWYw6_z_QEazySZeJxQryA.1440x700.jpg', 'EHdJFlV4TJ-gKfJx034EPQ.1440x700.jpg', 'k_k6KF9xSOm7Gna_B9QuOQ.1440x700.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-02 09:21:03', NULL, 0, 0, 'OR.jpg', 'CR.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblconfirmation`
--
ALTER TABLE `tblconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllocation`
--
ALTER TABLE `tbllocation`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblratings`
--
ALTER TABLE `tblratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_Id` (`booking_Id`),
  ADD KEY `rental_id` (`rental_id`,`renter_id`) USING BTREE,
  ADD KEY `tblratings_ibfk_2` (`renter_id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusage`
--
ALTER TABLE `tblusage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblconfirmation`
--
ALTER TABLE `tblconfirmation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllocation`
--
ALTER TABLE `tbllocation`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblratings`
--
ALTER TABLE `tblratings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusage`
--
ALTER TABLE `tblusage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblconfirmation`
--
ALTER TABLE `tblconfirmation`
  ADD CONSTRAINT `tblconfirmation_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `tblbooking` (`id`);

--
-- Constraints for table `tbllocation`
--
ALTER TABLE `tbllocation`
  ADD CONSTRAINT `fk_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `tblbooking` (`id`);

--
-- Constraints for table `tblratings`
--
ALTER TABLE `tblratings`
  ADD CONSTRAINT `tblratings_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `tblusers` (`id`),
  ADD CONSTRAINT `tblratings_ibfk_2` FOREIGN KEY (`renter_id`) REFERENCES `tblusers` (`id`),
  ADD CONSTRAINT `tblratings_ibfk_3` FOREIGN KEY (`booking_Id`) REFERENCES `tblbooking` (`id`);

--
-- Constraints for table `tblusage`
--
ALTER TABLE `tblusage`
  ADD CONSTRAINT `booking_id` FOREIGN KEY (`booking_id`) REFERENCES `tblbooking` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
