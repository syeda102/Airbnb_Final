-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2024 at 08:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Airbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `AdminID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`AdminID`, `UserID`) VALUES
(1, 3),
(2, 6),
(3, 11),
(4, 16),
(5, 19),
(6, 35),
(7, 43),
(8, 48),
(9, 49),
(10, 50),
(11, 51),
(12, 52),
(13, 53),
(14, 54),
(15, 55),
(16, 56),
(17, 57),
(18, 58),
(19, 59),
(20, 60);

-- --------------------------------------------------------

--
-- Table structure for table `Amenity`
--

CREATE TABLE `Amenity` (
  `AmenityID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Amenity`
--

INSERT INTO `Amenity` (`AmenityID`, `Name`) VALUES
(1, 'WiFi'),
(2, 'Air Conditioning'),
(3, 'Pool'),
(4, 'Gym'),
(5, 'Parking'),
(6, 'Kitchen'),
(7, 'Washer'),
(8, 'Dryer'),
(9, 'Heating'),
(10, 'TV'),
(11, 'Iron'),
(12, 'Hair Dryer'),
(13, 'Smoke Detector'),
(14, 'First Aid Kit'),
(15, 'Fire Extinguisher'),
(16, 'Elevator'),
(17, 'Hot Tub'),
(18, 'Balcony'),
(19, 'Garden'),
(20, 'Pet-Friendly');

-- --------------------------------------------------------

--
-- Table structure for table `Availability`
--

CREATE TABLE `Availability` (
  `AvailabilityID` int(11) NOT NULL,
  `ListingID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `IsAvailable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Availability`
--

INSERT INTO `Availability` (`AvailabilityID`, `ListingID`, `Date`, `IsAvailable`) VALUES
(1, 1, '2024-10-01', 1),
(2, 1, '2024-10-02', 0),
(3, 2, '2024-10-01', 1),
(4, 2, '2024-10-03', 1),
(5, 3, '2024-10-05', 1),
(6, 4, '2024-10-10', 0),
(7, 5, '2024-10-15', 1),
(8, 6, '2024-10-20', 1),
(9, 7, '2024-10-25', 0),
(10, 8, '2024-10-30', 1),
(11, 9, '2024-11-01', 1),
(12, 10, '2024-11-05', 0),
(13, 11, '2024-11-10', 1),
(14, 12, '2024-11-15', 1),
(15, 13, '2024-11-20', 0),
(16, 14, '2024-11-25', 1),
(17, 15, '2024-12-01', 1),
(18, 16, '2024-12-05', 0),
(19, 17, '2024-12-10', 1),
(20, 18, '2024-12-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `ListingID` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `GuestID`, `ListingID`, `StartDate`, `EndDate`, `TotalPrice`) VALUES
(1, 1, 1, '2024-10-01', '2024-10-05', 6000.00),
(2, 2, 2, '2024-10-03', '2024-10-10', 14000.00),
(3, 3, 3, '2024-10-05', '2024-10-15', 18000.00),
(4, 4, 4, '2024-10-10', '2024-10-20', 50000.00),
(5, 5, 5, '2024-10-15', '2024-10-18', 7500.00),
(6, 6, 6, '2024-10-20', '2024-10-25', 11000.00),
(7, 7, 7, '2024-10-25', '2024-11-01', 7000.00),
(8, 8, 8, '2024-10-30', '2024-11-05', 9000.00),
(9, 9, 9, '2024-11-01', '2024-11-10', 16000.00),
(10, 10, 10, '2024-11-05', '2024-11-15', 14000.00),
(11, 11, 11, '2024-11-10', '2024-11-20', 17000.00),
(12, 12, 12, '2024-11-15', '2024-11-25', 30000.00),
(13, 13, 13, '2024-11-20', '2024-12-01', 15000.00),
(14, 14, 14, '2024-11-25', '2024-12-05', 22000.00),
(15, 15, 15, '2024-12-01', '2024-12-10', 12000.00),
(16, 16, 16, '2024-12-05', '2024-12-15', 16000.00),
(17, 17, 17, '2024-12-10', '2024-12-20', 20000.00),
(18, 18, 18, '2024-12-15', '2024-12-25', 18000.00),
(19, 19, 19, '2024-12-20', '2024-12-30', 13000.00),
(20, 20, 20, '2024-12-25', '2025-01-05', 25000.00);

-- --------------------------------------------------------

--
-- Table structure for table `BookingCoupon`
--

CREATE TABLE `BookingCoupon` (
  `BookingCouponID` int(11) NOT NULL,
  `BookingID` int(11) DEFAULT NULL,
  `CouponID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BookingCoupon`
--

INSERT INTO `BookingCoupon` (`BookingCouponID`, `BookingID`, `CouponID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `City`
--

CREATE TABLE `City` (
  `CityID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `City`
--

INSERT INTO `City` (`CityID`, `Name`, `State`, `Country`) VALUES
(1, 'Mumbai', 'Maharashtra', 'India'),
(2, 'Delhi', 'Delhi', 'India'),
(3, 'Bangalore', 'Karnataka', 'India'),
(4, 'Hyderabad', 'Telangana', 'India'),
(5, 'Chennai', 'Tamil Nadu', 'India'),
(6, 'Kolkata', 'West Bengal', 'India'),
(7, 'Pune', 'Maharashtra', 'India'),
(8, 'Jaipur', 'Rajasthan', 'India'),
(9, 'Ahmedabad', 'Gujarat', 'India'),
(10, 'Surat', 'Gujarat', 'India'),
(11, 'Lucknow', 'Uttar Pradesh', 'India'),
(12, 'Kanpur', 'Uttar Pradesh', 'India'),
(13, 'Nagpur', 'Maharashtra', 'India'),
(14, 'Indore', 'Madhya Pradesh', 'India'),
(15, 'Thane', 'Maharashtra', 'India'),
(16, 'Bhopal', 'Madhya Pradesh', 'India'),
(17, 'Visakhapatnam', 'Andhra Pradesh', 'India'),
(18, 'Pimpri-Chinchwad', 'Maharashtra', 'India'),
(19, 'Patna', 'Bihar', 'India'),
(20, 'Vadodara', 'Gujarat', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `Coupon`
--

CREATE TABLE `Coupon` (
  `CouponID` int(11) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `DiscountPercentage` decimal(5,2) DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Coupon`
--

INSERT INTO `Coupon` (`CouponID`, `Code`, `DiscountPercentage`, `ExpiryDate`) VALUES
(1, 'WELCOME10', 10.00, '2024-12-31'),
(2, 'SAVE20', 20.00, '2024-11-30'),
(3, 'SUMMER15', 15.00, '2024-09-30'),
(4, 'FALL25', 25.00, '2024-10-31'),
(5, 'WINTER30', 30.00, '2024-12-15'),
(6, 'SPRING10', 10.00, '2025-03-31'),
(7, 'HOLIDAY20', 20.00, '2024-12-25'),
(8, 'NEWYEAR25', 25.00, '2025-01-10'),
(9, 'FLASHSALE15', 15.00, '2024-10-20'),
(10, 'LASTMINUTE20', 20.00, '2024-11-05'),
(11, 'VIP30', 30.00, '2025-02-28'),
(12, 'EARLYBIRD10', 10.00, '2024-09-15'),
(13, 'REFER20', 20.00, '2025-01-31'),
(14, 'FREESTAY', 100.00, '2024-12-31'),
(15, 'DISCOUNT5', 5.00, '2024-11-25'),
(16, 'SAVE50', 50.00, '2025-03-15'),
(17, 'EXTRA10', 10.00, '2024-10-10'),
(18, 'BIGSALE20', 20.00, '2024-11-20'),
(19, 'DEAL15', 15.00, '2024-10-25'),
(20, 'OFFER25', 25.00, '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--

CREATE TABLE `Guest` (
  `GuestID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`GuestID`, `UserID`) VALUES
(1, 2),
(2, 5),
(3, 8),
(4, 10),
(5, 13),
(6, 15),
(7, 18),
(8, 21),
(9, 23),
(10, 24),
(11, 27),
(12, 29),
(13, 31),
(14, 33),
(15, 36),
(16, 38),
(17, 40),
(18, 42),
(19, 44),
(20, 46);

-- --------------------------------------------------------

--
-- Table structure for table `Host`
--

CREATE TABLE `Host` (
  `HostID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Host`
--

INSERT INTO `Host` (`HostID`, `UserID`, `Phone`) VALUES
(1, 1, '9876543210'),
(2, 4, '7654321099'),
(3, 7, '9654312345'),
(4, 9, '9876123456'),
(5, 12, '7654983210'),
(6, 14, '8765901234'),
(7, 17, '9876001234'),
(8, 20, '9656001234'),
(9, 22, '8766012345'),
(10, 25, '9876012345'),
(11, 26, '7656012345'),
(12, 28, '8766023456'),
(13, 30, '9876023456'),
(14, 32, '7656023456'),
(15, 34, '8766034567'),
(16, 37, '9876034567'),
(17, 39, '7656034567'),
(18, 41, '8766045678'),
(19, 45, '9876045678'),
(20, 47, '7656045678');

-- --------------------------------------------------------

--
-- Table structure for table `Listing`
--

CREATE TABLE `Listing` (
  `ListingID` int(11) NOT NULL,
  `HostID` int(11) DEFAULT NULL,
  `CityID` int(11) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `PhotoURL` varchar(255) DEFAULT NULL,
  `HouseRules` text DEFAULT NULL,
  `NeighborhoodInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Listing`
--

INSERT INTO `Listing` (`ListingID`, `HostID`, `CityID`, `Title`, `Description`, `Price`, `Location`, `PhotoURL`, `HouseRules`, `NeighborhoodInfo`) VALUES
(1, 1, 1, 'Cozy Apartment in Mumbai', 'A comfortable apartment in the heart of Mumbai.', 1500.00, 'Andheri West', 'https://example.com/listings/1.jpg', 'No smoking, No pets', 'Located near the metro and shopping centers.'),
(2, 2, 2, 'Spacious Flat in Delhi', 'A spacious flat with modern amenities.', 2000.00, 'Connaught Place', 'https://example.com/listings/2.jpg', 'No parties, Respect neighbors', 'Close to restaurants and parks.'),
(3, 3, 3, 'Modern Condo in Bangalore', 'A modern condo with all facilities.', 1800.00, 'Koramangala', 'https://example.com/listings/3.jpg', 'No smoking', 'Situated in a lively neighborhood with cafes.'),
(4, 4, 4, 'Luxury Villa in Hyderabad', 'A luxury villa with a private pool.', 5000.00, 'Banjara Hills', 'https://example.com/listings/4.jpg', 'No loud music', 'Exclusive area with high security.'),
(5, 5, 5, 'Beachside Bungalow in Chennai', 'A bungalow close to the beach.', 2500.00, 'Marina Beach', 'https://example.com/listings/5.jpg', 'No pets', 'Beautiful views of the sea.'),
(6, 6, 6, 'Heritage Home in Kolkata', 'Stay in a heritage property with classic architecture.', 2200.00, 'Park Street', 'https://example.com/listings/6.jpg', 'No smoking', 'Historic neighborhood with cultural sites.'),
(7, 7, 7, 'Affordable Studio in Pune', 'A budget-friendly studio perfect for solo travelers.', 1000.00, 'Kothrud', 'https://example.com/listings/7.jpg', 'No parties', 'Close to universities and IT hubs.'),
(8, 8, 8, 'Desert Retreat in Jaipur', 'Experience the desert in this beautiful retreat.', 1800.00, 'Amer', 'https://example.com/listings/8.jpg', 'No smoking, Respect local customs', 'Near the Amber Fort and local markets.'),
(9, 9, 9, 'Urban Apartment in Ahmedabad', 'A modern apartment in the city center.', 1600.00, 'SG Highway', 'https://example.com/listings/9.jpg', 'No pets', 'Easy access to shopping malls and restaurants.'),
(10, 10, 10, 'Comfortable Home in Surat', 'A comfortable home ideal for families.', 1400.00, 'Adajan', 'https://example.com/listings/10.jpg', 'No smoking', 'Located in a safe and friendly neighborhood.'),
(11, 11, 11, 'Elegant Flat in Lucknow', 'An elegant flat with spacious rooms.', 1700.00, 'Hazratganj', 'https://example.com/listings/11.jpg', 'No parties', 'Close to shopping centers and parks.'),
(12, 12, 12, 'Spacious Villa in Kanpur', 'A spacious villa with a beautiful garden.', 3000.00, 'Nawabganj', 'https://example.com/listings/12.jpg', 'No smoking', 'Quiet area with lush greenery.'),
(13, 13, 13, 'Modern Apartment in Nagpur', 'A modern apartment with all amenities.', 1500.00, 'Civil Lines', 'https://example.com/listings/13.jpg', 'No pets', 'Located near business districts and malls.'),
(14, 14, 14, 'Luxury Condo in Indore', 'A luxury condo with premium facilities.', 2200.00, 'Palasia', 'https://example.com/listings/14.jpg', 'No smoking', 'Prime location with excellent connectivity.'),
(15, 15, 15, 'Cozy Studio in Thane', 'A cozy studio ideal for short stays.', 1200.00, 'Ghodbunder Road', 'https://example.com/listings/15.jpg', 'No parties', 'Close to commercial areas and transport.'),
(16, 16, 16, 'Beautiful Home in Bhopal', 'A beautiful home with modern amenities.', 1600.00, 'Arera Colony', 'https://example.com/listings/16.jpg', 'No smoking', 'Located near parks and restaurants.'),
(17, 17, 17, 'Seaside Apartment in Visakhapatnam', 'An apartment with stunning sea views.', 2000.00, 'Beach Road', 'https://example.com/listings/17.jpg', 'No pets', 'Close to the beach and local attractions.'),
(18, 18, 18, 'Spacious Flat in Pimpri-Chinchwad', 'A spacious flat suitable for families.', 1800.00, 'Viman Nagar', 'https://example.com/listings/18.jpg', 'No smoking', 'Located in a vibrant neighborhood.'),
(19, 19, 19, 'Modern Home in Patna', 'A modern home with all necessary facilities.', 1300.00, 'Boring Road', 'https://example.com/listings/19.jpg', 'No parties', 'Close to educational institutions and parks.'),
(20, 20, 20, 'Luxury Suite in Vadodara', 'A luxury suite with premium services.', 2500.00, 'Alkapuri', 'https://example.com/listings/20.jpg', 'No smoking, No pets', 'Located in a high-end area with shopping malls.');

-- --------------------------------------------------------

--
-- Table structure for table `ListingAmenity`
--

CREATE TABLE `ListingAmenity` (
  `ListingAmenityID` int(11) NOT NULL,
  `ListingID` int(11) DEFAULT NULL,
  `AmenityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ListingAmenity`
--

INSERT INTO `ListingAmenity` (`ListingAmenityID`, `ListingID`, `AmenityID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 4),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 6),
(15, 6, 1),
(16, 6, 2),
(17, 7, 1),
(18, 7, 5),
(19, 8, 1),
(20, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ListingPhoto`
--

CREATE TABLE `ListingPhoto` (
  `ListingPhotoID` int(11) NOT NULL,
  `ListingID` int(11) DEFAULT NULL,
  `PhotoURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ListingPhoto`
--

INSERT INTO `ListingPhoto` (`ListingPhotoID`, `ListingID`, `PhotoURL`) VALUES
(1, 1, 'https://example.com/photos/listing1_photo1.jpg'),
(2, 1, 'https://example.com/photos/listing1_photo2.jpg'),
(3, 2, 'https://example.com/photos/listing2_photo1.jpg'),
(4, 2, 'https://example.com/photos/listing2_photo2.jpg'),
(5, 3, 'https://example.com/photos/listing3_photo1.jpg'),
(6, 3, 'https://example.com/photos/listing3_photo2.jpg'),
(7, 4, 'https://example.com/photos/listing4_photo1.jpg'),
(8, 4, 'https://example.com/photos/listing4_photo2.jpg'),
(9, 5, 'https://example.com/photos/listing5_photo1.jpg'),
(10, 5, 'https://example.com/photos/listing5_photo2.jpg'),
(11, 6, 'https://example.com/photos/listing6_photo1.jpg'),
(12, 6, 'https://example.com/photos/listing6_photo2.jpg'),
(13, 7, 'https://example.com/photos/listing7_photo1.jpg'),
(14, 7, 'https://example.com/photos/listing7_photo2.jpg'),
(15, 8, 'https://example.com/photos/listing8_photo1.jpg'),
(16, 8, 'https://example.com/photos/listing8_photo2.jpg'),
(17, 9, 'https://example.com/photos/listing9_photo1.jpg'),
(18, 9, 'https://example.com/photos/listing9_photo2.jpg'),
(19, 10, 'https://example.com/photos/listing10_photo1.jpg'),
(20, 10, 'https://example.com/photos/listing10_photo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Maintenance`
--

CREATE TABLE `Maintenance` (
  `MaintenanceID` int(11) NOT NULL,
  `ListingID` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DateScheduled` date DEFAULT NULL,
  `Status` enum('Pending','Completed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Maintenance`
--

INSERT INTO `Maintenance` (`MaintenanceID`, `ListingID`, `Description`, `DateScheduled`, `Status`) VALUES
(1, 1, 'Air conditioning filter replacement.', '2024-10-10', 'Pending'),
(2, 2, 'Pool cleaning and chemical balancing.', '2024-10-15', 'Pending'),
(3, 3, 'Gym equipment maintenance.', '2024-10-20', 'Pending'),
(4, 4, 'Roof inspection and repairs.', '2024-10-25', 'Pending'),
(5, 5, 'Kitchen appliances servicing.', '2024-11-01', 'Pending'),
(6, 6, 'Washer and dryer maintenance.', '2024-11-05', 'Pending'),
(7, 7, 'Heating system check.', '2024-11-10', 'Pending'),
(8, 8, 'TV and entertainment system updates.', '2024-11-15', 'Pending'),
(9, 9, 'Smoke detector battery replacement.', '2024-11-20', 'Pending'),
(10, 10, 'Fire extinguisher inspection.', '2024-11-25', 'Pending'),
(11, 11, 'Elevator servicing.', '2024-12-01', 'Pending'),
(12, 12, 'Hot tub cleaning.', '2024-12-05', 'Pending'),
(13, 13, 'Balcony railing repairs.', '2024-12-10', 'Pending'),
(14, 14, 'Garden landscaping.', '2024-12-15', 'Pending'),
(15, 15, 'Iron and hair dryer maintenance.', '2024-12-20', 'Pending'),
(16, 16, 'First aid kit replenishment.', '2024-12-25', 'Pending'),
(17, 17, 'Security system upgrades.', '2024-12-30', 'Pending'),
(18, 18, 'General housekeeping.', '2025-01-04', 'Pending'),
(19, 19, 'Painting and interior decor.', '2025-01-09', 'Pending'),
(20, 20, 'Pet-friendly amenities check.', '2025-01-14', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `MessageID` int(11) NOT NULL,
  `SenderID` int(11) DEFAULT NULL,
  `ReceiverID` int(11) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`MessageID`, `SenderID`, `ReceiverID`, `Content`, `Timestamp`) VALUES
(1, 1, 2, 'Welcome to my listing! Let me know if you need anything.', '2024-10-01 04:30:00'),
(2, 2, 1, 'Thank you! Excited to stay at your place.', '2024-10-01 04:35:00'),
(3, 3, 4, 'Please confirm your booking details.', '2024-10-03 06:30:00'),
(4, 4, 3, 'Booking confirmed. Looking forward to hosting you.', '2024-10-03 06:45:00'),
(5, 5, 6, 'Is the kitchen available for use?', '2024-10-05 04:00:00'),
(6, 6, 5, 'Yes, the kitchen is fully equipped.', '2024-10-05 04:15:00'),
(7, 7, 8, 'Can you provide additional towels?', '2024-10-07 08:50:00'),
(8, 8, 7, 'Sure, we will have them ready for you.', '2024-10-07 09:05:00'),
(9, 9, 10, 'Is parking available?', '2024-10-10 10:30:00'),
(10, 10, 9, 'Yes, there is free parking space.', '2024-10-10 10:40:00'),
(11, 11, 12, 'Could you extend the checkout time?', '2024-10-12 05:30:00'),
(12, 12, 11, 'Yes, you can checkout by 1 PM.', '2024-10-12 05:45:00'),
(13, 13, 14, 'Are pets allowed?', '2024-10-15 02:30:00'),
(14, 14, 13, 'Sorry, pets are not allowed.', '2024-10-15 02:40:00'),
(15, 15, 16, 'Is there a laundry facility?', '2024-10-18 13:30:00'),
(16, 16, 15, 'Yes, laundry facilities are available.', '2024-10-18 13:50:00'),
(17, 17, 18, 'Can I request an early check-in?', '2024-10-20 02:00:00'),
(18, 18, 17, 'Early check-in is possible upon request.', '2024-10-20 02:15:00'),
(19, 19, 20, 'Is breakfast included?', '2024-10-22 04:30:00'),
(20, 20, 19, 'Yes, a continental breakfast is provided.', '2024-10-22 04:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `PaymentID` int(11) NOT NULL,
  `BookingID` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` enum('Pending','Completed','Failed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`PaymentID`, `BookingID`, `Amount`, `Date`, `Status`) VALUES
(1, 1, 6000.00, '2024-10-05', 'Completed'),
(2, 2, 14000.00, '2024-10-10', 'Completed'),
(3, 3, 18000.00, '2024-10-15', 'Completed'),
(4, 4, 50000.00, '2024-10-20', 'Completed'),
(5, 5, 7500.00, '2024-10-18', 'Completed'),
(6, 6, 11000.00, '2024-10-25', 'Completed'),
(7, 7, 7000.00, '2024-11-01', 'Completed'),
(8, 8, 9000.00, '2024-11-05', 'Completed'),
(9, 9, 16000.00, '2024-11-10', 'Completed'),
(10, 10, 14000.00, '2024-11-15', 'Completed'),
(11, 11, 17000.00, '2024-11-20', 'Completed'),
(12, 12, 30000.00, '2024-11-25', 'Completed'),
(13, 13, 15000.00, '2024-12-01', 'Completed'),
(14, 14, 22000.00, '2024-12-05', 'Completed'),
(15, 15, 12000.00, '2024-12-10', 'Completed'),
(16, 16, 16000.00, '2024-12-15', 'Completed'),
(17, 17, 20000.00, '2024-12-20', 'Completed'),
(18, 18, 18000.00, '2024-12-25', 'Completed'),
(19, 19, 13000.00, '2024-12-30', 'Completed'),
(20, 20, 25000.00, '2025-01-05', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `ReviewID` int(11) NOT NULL,
  `ReviewerID` int(11) DEFAULT NULL,
  `ReviewedUserID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL CHECK (`Rating` >= 1 and `Rating` <= 5),
  `Comment` text DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`ReviewID`, `ReviewerID`, `ReviewedUserID`, `Rating`, `Comment`, `Date`) VALUES
(1, 1, 2, 5, 'Great host, very accommodating!', '2024-10-06'),
(2, 2, 1, 4, 'Clean and comfortable stay.', '2024-10-11'),
(3, 3, 4, 5, 'Excellent property and host.', '2024-10-16'),
(4, 4, 3, 3, 'Good stay but noisy neighbors.', '2024-10-21'),
(5, 5, 6, 4, 'Well-maintained and clean.', '2024-10-26'),
(6, 6, 5, 5, 'Loved the amenities provided.', '2024-11-01'),
(7, 7, 8, 4, 'Comfortable place, would visit again.', '2024-11-06'),
(8, 8, 7, 5, 'Perfect location and friendly host.', '2024-11-11'),
(9, 9, 10, 3, 'Average experience.', '2024-11-16'),
(10, 10, 9, 4, 'Good value for money.', '2024-11-21'),
(11, 11, 12, 5, 'Fantastic stay, highly recommend.', '2024-11-26'),
(12, 12, 11, 4, 'Nice place with all essentials.', '2024-12-01'),
(13, 13, 14, 5, 'Loved the decor and cleanliness.', '2024-12-06'),
(14, 14, 13, 4, 'Great place but a bit far from city center.', '2024-12-11'),
(15, 15, 16, 3, 'Average amenities.', '2024-12-16'),
(16, 16, 15, 5, 'Exceptional host and property.', '2024-12-21'),
(17, 17, 18, 4, 'Good experience overall.', '2024-12-26'),
(18, 18, 17, 5, 'Perfect for family stays.', '2025-01-01'),
(19, 19, 20, 4, 'Clean and well-located.', '2025-01-06'),
(20, 20, 19, 5, 'Amazing stay, will come back again.', '2025-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `SocialNetwork`
--

CREATE TABLE `SocialNetwork` (
  `SocialNetworkID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SocialNetwork`
--

INSERT INTO `SocialNetwork` (`SocialNetworkID`, `Name`, `URL`) VALUES
(1, 'Facebook', 'https://facebook.com'),
(2, 'Instagram', 'https://instagram.com'),
(3, 'Twitter', 'https://twitter.com'),
(4, 'LinkedIn', 'https://linkedin.com'),
(5, 'Pinterest', 'https://pinterest.com'),
(6, 'Snapchat', 'https://snapchat.com'),
(7, 'TikTok', 'https://tiktok.com'),
(8, 'Reddit', 'https://reddit.com'),
(9, 'YouTube', 'https://youtube.com'),
(10, 'WhatsApp', 'https://whatsapp.com'),
(11, 'Telegram', 'https://telegram.org'),
(12, 'Tumblr', 'https://tumblr.com'),
(13, 'Vimeo', 'https://vimeo.com'),
(14, 'Flickr', 'https://flickr.com'),
(15, 'Quora', 'https://quora.com'),
(16, 'Weibo', 'https://weibo.com'),
(17, 'Discord', 'https://discord.com'),
(18, 'Slack', 'https://slack.com'),
(19, 'Medium', 'https://medium.com'),
(20, 'GitHub', 'https://github.com');

-- --------------------------------------------------------

--
-- Table structure for table `TransactionHistory`
--

CREATE TABLE `TransactionHistory` (
  `TransactionID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `BookingID` int(11) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Status` enum('Pending','Completed','Failed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TransactionHistory`
--

INSERT INTO `TransactionHistory` (`TransactionID`, `UserID`, `PaymentID`, `BookingID`, `TransactionDate`, `Amount`, `Status`) VALUES
(1, 1, 1, 1, '2024-10-05', 6000.00, 'Completed'),
(2, 2, 2, 2, '2024-10-10', 14000.00, 'Completed'),
(3, 3, 3, 3, '2024-10-15', 18000.00, 'Completed'),
(4, 4, 4, 4, '2024-10-20', 50000.00, 'Completed'),
(5, 5, 5, 5, '2024-10-18', 7500.00, 'Completed'),
(6, 6, 6, 6, '2024-10-25', 11000.00, 'Completed'),
(7, 7, 7, 7, '2024-11-01', 7000.00, 'Completed'),
(8, 8, 8, 8, '2024-11-05', 9000.00, 'Completed'),
(9, 9, 9, 9, '2024-11-10', 16000.00, 'Completed'),
(10, 10, 10, 10, '2024-11-15', 14000.00, 'Completed'),
(11, 11, 11, 11, '2024-11-20', 17000.00, 'Completed'),
(12, 12, 12, 12, '2024-11-25', 30000.00, 'Completed'),
(13, 13, 13, 13, '2024-12-01', 15000.00, 'Completed'),
(14, 14, 14, 14, '2024-12-05', 22000.00, 'Completed'),
(15, 15, 15, 15, '2024-12-10', 12000.00, 'Completed'),
(16, 16, 16, 16, '2024-12-15', 16000.00, 'Completed'),
(17, 17, 17, 17, '2024-12-20', 20000.00, 'Completed'),
(18, 18, 18, 18, '2024-12-25', 18000.00, 'Completed'),
(19, 19, 19, 19, '2024-12-30', 13000.00, 'Completed'),
(20, 20, 20, 20, '2025-01-05', 25000.00, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Bio` text DEFAULT NULL,
  `PhotoURL` varchar(255) DEFAULT NULL,
  `UserType` enum('Host','Guest','Admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `Name`, `Email`, `Phone`, `Bio`, `PhotoURL`, `UserType`) VALUES
(1, 'Amit Sharma', 'amit.sharma@example.com', '9876543210', 'Experienced host in Mumbai.', 'https://example.com/photos/amit.jpg', 'Host'),
(2, 'Priya Rao', 'priya.rao@example.com', '8765432198', 'Travel enthusiast and frequent guest.', 'https://example.com/photos/priya.jpg', 'Guest'),
(3, 'Ravi Kumar', 'ravi.kumar@example.com', '9654321098', 'Administrator with 5 years of experience.', 'https://example.com/photos/ravi.jpg', 'Admin'),
(4, 'Sneha Patel', 'sneha.patel@example.com', '7654321099', 'Loves hosting guests in Delhi.', 'https://example.com/photos/sneha.jpg', 'Host'),
(5, 'Arjun Nair', 'arjun.nair@example.com', '8765432109', 'Guest who enjoys exploring new places.', 'https://example.com/photos/arjun.jpg', 'Guest'),
(6, 'Neha Gupta', 'neha.gupta@example.com', '7654321987', 'Admin overseeing platform operations.', 'https://example.com/photos/neha.jpg', 'Admin'),
(7, 'Karan Mehta', 'karan.mehta@example.com', '9654312345', 'Host with listings across Bangalore.', 'https://example.com/photos/karan.jpg', 'Host'),
(8, 'Sonal Desai', 'sonal.desai@example.com', '8965432107', 'Guest who loves cultural experiences.', 'https://example.com/photos/sonal.jpg', 'Guest'),
(9, 'Vikas Reddy', 'vikas.reddy@example.com', '9876123456', 'Host offering cozy stays in Hyderabad.', 'https://example.com/photos/vikas.jpg', 'Host'),
(10, 'Pooja Singh', 'pooja.singh@example.com', '8765439876', 'Guest looking for affordable accommodations.', 'https://example.com/photos/pooja.jpg', 'Guest'),
(11, 'Rahul Verma', 'rahul.verma@example.com', '8765123498', 'Admin responsible for user support.', 'https://example.com/photos/rahul.jpg', 'Admin'),
(12, 'Deepa Joshi', 'deepa.joshi@example.com', '7654983210', 'Host specializing in luxury properties.', 'https://example.com/photos/deepa.jpg', 'Host'),
(13, 'Sameer Khan', 'sameer.khan@example.com', '9876501234', 'Guest interested in short-term rentals.', 'https://example.com/photos/sameer.jpg', 'Guest'),
(14, 'Anita Das', 'anita.das@example.com', '8765901234', 'Host offering unique stays in Kolkata.', 'https://example.com/photos/anita.jpg', 'Host'),
(15, 'Rohit Singh', 'rohit.singh@example.com', '7654301234', 'Guest who values cleanliness and comfort.', 'https://example.com/photos/rohit.jpg', 'Guest'),
(16, 'Meera Iyer', 'meera.iyer@example.com', '9654001234', 'Admin managing platform security.', 'https://example.com/photos/meera.jpg', 'Admin'),
(17, 'Siddharth Malhotra', 'siddharth.malhotra@example.com', '9876001234', 'Host with multiple listings in Chennai.', 'https://example.com/photos/siddharth.jpg', 'Host'),
(18, 'Nisha Kaur', 'nisha.kaur@example.com', '8766001234', 'Guest who enjoys long-term stays.', 'https://example.com/photos/nisha.jpg', 'Guest'),
(19, 'Vivek Sharma', 'vivek.sharma@example.com', '7656001234', 'Admin overseeing financial transactions.', 'https://example.com/photos/vivek.jpg', 'Admin'),
(20, 'Anjali Menon', 'anjali.menon@example.com', '9656001234', 'Host offering eco-friendly accommodations.', 'https://example.com/photos/anjali.jpg', 'Host'),
(21, 'Sneha Naik', 'sneha.naik@email.com', '9876543110', 'Loves traveling and cooking.', 'https://example.com/photos/sneha_naik.jpg', 'Guest'),
(22, 'Karthik Shetty', 'karthik.shetty@email.com', '9775642310', 'Tech enthusiast and software developer.', 'https://example.com/photos/karthik_shetty.jpg', 'Host'),
(23, 'Manish Patel', 'manish.patel@email.com', '9667431520', 'Adventure seeker and photographer.', 'https://example.com/photos/manish_patel.jpg', 'Guest'),
(24, 'Deepa Kumar', 'deepa.kumar@email.com', '8876231450', 'Food blogger and traveler.', 'https://example.com/photos/deepa_kumar.jpg', 'Guest'),
(25, 'Abhishek Rao', 'abhishek.rao@email.com', '9867542351', 'Music lover and concert-goer.', 'https://example.com/photos/abhishek_rao.jpg', 'Host'),
(26, 'Meera Gowda', 'meera.gowda@email.com', '9765432187', 'Yoga instructor and wellness coach.', 'https://example.com/photos/meera_gowda.jpg', 'Host'),
(27, 'Rakesh Desai', 'rakesh.desai@email.com', '8675214309', 'History buff and museum enthusiast.', 'https://example.com/photos/rakesh_desai.jpg', 'Guest'),
(28, 'Sanjay Sharma', 'sanjay.sharma@email.com', '9967321420', 'Sports fanatic and football coach.', 'https://example.com/photos/sanjay_sharma.jpg', 'Host'),
(29, 'Priya Joshi', 'priya.joshi@email.com', '9871236542', 'Artist and art gallery curator.', 'https://example.com/photos/priya_joshi.jpg', 'Guest'),
(30, 'Amit Kulkarni', 'amit.kulkarni@email.com', '9776543211', 'Entrepreneur and business consultant.', 'https://example.com/photos/amit_kulkarni.jpg', 'Host'),
(31, 'Rajesh Pawar', 'rajesh.pawar@email.com', '9668521347', 'Cyclist and outdoor enthusiast.', 'https://example.com/photos/rajesh_pawar.jpg', 'Guest'),
(32, 'Neha Kapoor', 'neha.kapoor@email.com', '8765432198', 'Fashion designer and stylist.', 'https://example.com/photos/neha_kapoor.jpg', 'Host'),
(33, 'Arjun Verma', 'arjun.verma@email.com', '9976231540', 'Writer and literature enthusiast.', 'https://example.com/photos/arjun_verma.jpg', 'Guest'),
(34, 'Simran Kaur', 'simran.kaur@email.com', '8867542310', 'Digital marketer and content creator.', 'https://example.com/photos/simran_kaur.jpg', 'Host'),
(35, 'Rohit Singh', 'rohit.singh@email.com', '9876123450', 'Tech startup founder and mentor.', 'https://example.com/photos/rohit_singh.jpg', 'Admin'),
(36, 'Pooja Nair', 'pooja.nair@email.com', '9867123456', 'Travel blogger and photographer.', 'https://example.com/photos/pooja_nair.jpg', 'Guest'),
(37, 'Vikram Khanna', 'vikram.khanna@email.com', '9778543120', 'Financial analyst and investor.', 'https://example.com/photos/vikram_khanna.jpg', 'Host'),
(38, 'Aditi Bansal', 'aditi.bansal@email.com', '8876432156', 'Food enthusiast and home chef.', 'https://example.com/photos/aditi_bansal.jpg', 'Guest'),
(39, 'Prakash Iyer', 'prakash.iyer@email.com', '9775624310', 'Real estate agent and consultant.', 'https://example.com/photos/prakash_iyer.jpg', 'Host'),
(40, 'Nisha Mehta', 'nisha.mehta@email.com', '8667321456', 'Fitness trainer and nutrition expert.', 'https://example.com/photos/nisha_mehta.jpg', 'Guest'),
(41, 'Rajesh Desai', 'rajesh.desai@email.com', '9876543210', 'Entrepreneur and tech enthusiast.', 'https://example.com/photos/rajesh_desai.jpg', 'Host'),
(42, 'Kavita Rao', 'kavita.rao@email.com', '9678543212', 'Freelance writer and content creator.', 'https://example.com/photos/kavita_rao.jpg', 'Guest'),
(43, 'Suresh Gupta', 'suresh.gupta@email.com', '8765432109', 'Marketing consultant and strategist.', 'https://example.com/photos/suresh_gupta.jpg', 'Admin'),
(44, 'Anjali Patil', 'anjali.patil@email.com', '9567823456', 'Graphic designer and illustrator.', 'https://example.com/photos/anjali_patil.jpg', 'Guest'),
(45, 'Deepak Sharma', 'deepak.sharma@email.com', '9467823456', 'Software developer and part-time host.', 'https://example.com/photos/deepak_sharma.jpg', 'Host'),
(46, 'Meera Jain', 'meera.jain@email.com', '9267823412', 'Event planner and lifestyle blogger.', 'https://example.com/photos/meera_jain.jpg', 'Guest'),
(47, 'Vikram Singh', 'vikram.singh@email.com', '9167823498', 'Hospitality expert and Airbnb superhost.', 'https://example.com/photos/vikram_singh.jpg', 'Host'),
(48, 'Pooja Mehra', 'pooja.mehra@email.com', '9867452310', 'Managing platform administration and user experience.', 'https://example.com/photos/pooja_mehra.jpg', 'Admin'),
(49, 'Arvind Iyer', 'arvind.iyer@email.com', '9876123456', 'Senior system administrator ensuring platform efficiency.', 'https://example.com/photos/arvind_iyer.jpg', 'Admin'),
(50, 'Sunita Kulkarni', 'sunita.kulkarni@email.com', '9812345678', 'Expert in security and user account management.', 'https://example.com/photos/sunita_kulkarni.jpg', 'Admin'),
(51, 'Harsh Sharma', 'harsh.sharma@email.com', '9123456789', 'Platform data analyst and admin.', 'https://example.com/photos/harsh_sharma.jpg', 'Admin'),
(52, 'Niharika Gupta', 'niharika.gupta@email.com', '9765432190', 'Overseeing platform governance and regulation.', 'https://example.com/photos/niharika_gupta.jpg', 'Admin'),
(53, 'Ankit Verma', 'ankit.verma@email.com', '9871236540', 'System monitoring and maintenance expert.', 'https://example.com/photos/ankit_verma.jpg', 'Admin'),
(54, 'Rajesh Patel', 'rajesh.patel@email.com', '9678912345', 'Lead admin focused on infrastructure management.', 'https://example.com/photos/rajesh_patel.jpg', 'Admin'),
(55, 'Shreya Joshi', 'shreya.joshi@email.com', '9578412365', 'Ensuring data compliance and security.', 'https://example.com/photos/shreya_joshi.jpg', 'Admin'),
(56, 'Aman Khurana', 'aman.khurana@email.com', '9287456123', 'Specialist in database management and support.', 'https://example.com/photos/aman_khurana.jpg', 'Admin'),
(57, 'Kavita Raj', 'kavita.raj@email.com', '9876512345', 'Handling user escalations and policy enforcement.', 'https://example.com/photos/kavita_rao.jpg', 'Admin'),
(58, 'Neeraj Singh', 'neeraj.singh@email.com', '9687412536', 'Monitoring and optimizing backend services.', 'https://example.com/photos/neeraj_singh.jpg', 'Admin'),
(59, 'Sakshi Aggarwal', 'sakshi.aggarwal@email.com', '9198765432', 'Support and admin for technical queries.', 'https://example.com/photos/sakshi_aggarwal.jpg', 'Admin'),
(60, 'Aditya Malhotra', 'aditya.malhotra@email.com', '9876543210', 'Ensuring uptime and user satisfaction.', 'https://example.com/photos/aditya_malhotra.jpg', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `UserSocialNetwork`
--

CREATE TABLE `UserSocialNetwork` (
  `UserSocialNetworkID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SocialNetworkID` int(11) DEFAULT NULL,
  `SocialNetworkProfileURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UserSocialNetwork`
--

INSERT INTO `UserSocialNetwork` (`UserSocialNetworkID`, `UserID`, `SocialNetworkID`, `SocialNetworkProfileURL`) VALUES
(1, 1, 1, 'https://facebook.com/amit.sharma'),
(2, 2, 2, 'https://instagram.com/priya.rao'),
(3, 3, 3, 'https://twitter.com/ravi.kumar'),
(4, 4, 4, 'https://linkedin.com/in/sneha.patel'),
(5, 5, 5, 'https://pinterest.com/arjun.nair'),
(6, 6, 6, 'https://snapchat.com/neha.gupta'),
(7, 7, 7, 'https://tiktok.com/@karan.mehta'),
(8, 8, 8, 'https://reddit.com/user/sonal.desai'),
(9, 9, 9, 'https://youtube.com/channel/vikas.reddy'),
(10, 10, 10, 'https://whatsapp.com/send?phone=8765439876'),
(11, 11, 11, 'https://telegram.me/rahul.verma'),
(12, 12, 12, 'https://tumblr.com/blog/deepa.joshi'),
(13, 13, 13, 'https://vimeo.com/sameer.khan'),
(14, 14, 14, 'https://flickr.com/photos/anita.das'),
(15, 15, 15, 'https://quora.com/profile/rohit.singh'),
(16, 16, 16, 'https://weibo.com/meera.iyer'),
(17, 17, 17, 'https://discord.com/users/siddharth.malhotra'),
(18, 18, 18, 'https://slack.com/team/nisha.kaur'),
(19, 19, 19, 'https://medium.com/@vivek.sharma'),
(20, 20, 20, 'https://github.com/anjali.menon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD KEY `admin_ibfk_1` (`UserID`);

--
-- Indexes for table `Amenity`
--
ALTER TABLE `Amenity`
  ADD PRIMARY KEY (`AmenityID`);

--
-- Indexes for table `Availability`
--
ALTER TABLE `Availability`
  ADD PRIMARY KEY (`AvailabilityID`),
  ADD KEY `availability_ibfk_1` (`ListingID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `GuestID` (`GuestID`),
  ADD KEY `booking_ibfk_2` (`ListingID`);

--
-- Indexes for table `BookingCoupon`
--
ALTER TABLE `BookingCoupon`
  ADD PRIMARY KEY (`BookingCouponID`),
  ADD KEY `CouponID` (`CouponID`),
  ADD KEY `bookingcoupon_ibfk_1` (`BookingID`);

--
-- Indexes for table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `Coupon`
--
ALTER TABLE `Coupon`
  ADD PRIMARY KEY (`CouponID`);

--
-- Indexes for table `Guest`
--
ALTER TABLE `Guest`
  ADD PRIMARY KEY (`GuestID`),
  ADD KEY `guest_ibfk_1` (`UserID`);

--
-- Indexes for table `Host`
--
ALTER TABLE `Host`
  ADD PRIMARY KEY (`HostID`),
  ADD KEY `host_ibfk_1` (`UserID`);

--
-- Indexes for table `Listing`
--
ALTER TABLE `Listing`
  ADD PRIMARY KEY (`ListingID`),
  ADD KEY `CityID` (`CityID`),
  ADD KEY `listing_ibfk_1` (`HostID`);

--
-- Indexes for table `ListingAmenity`
--
ALTER TABLE `ListingAmenity`
  ADD PRIMARY KEY (`ListingAmenityID`),
  ADD KEY `AmenityID` (`AmenityID`),
  ADD KEY `listingamenity_ibfk_1` (`ListingID`);

--
-- Indexes for table `ListingPhoto`
--
ALTER TABLE `ListingPhoto`
  ADD PRIMARY KEY (`ListingPhotoID`),
  ADD KEY `listingphoto_ibfk_1` (`ListingID`);

--
-- Indexes for table `Maintenance`
--
ALTER TABLE `Maintenance`
  ADD PRIMARY KEY (`MaintenanceID`),
  ADD KEY `maintenance_ibfk_1` (`ListingID`);

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `message_ibfk_1` (`SenderID`),
  ADD KEY `message_ibfk_2` (`ReceiverID`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `payment_ibfk_1` (`BookingID`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `review_ibfk_2` (`ReviewedUserID`),
  ADD KEY `review_ibfk_1` (`ReviewerID`);

--
-- Indexes for table `SocialNetwork`
--
ALTER TABLE `SocialNetwork`
  ADD PRIMARY KEY (`SocialNetworkID`);

--
-- Indexes for table `TransactionHistory`
--
ALTER TABLE `TransactionHistory`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `BookingID` (`BookingID`),
  ADD KEY `transactionhistory_ibfk_1` (`UserID`),
  ADD KEY `transactionhistory_ibfk_2` (`PaymentID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `UserSocialNetwork`
--
ALTER TABLE `UserSocialNetwork`
  ADD PRIMARY KEY (`UserSocialNetworkID`),
  ADD KEY `SocialNetworkID` (`SocialNetworkID`),
  ADD KEY `usersocialnetwork_ibfk_1` (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `Availability`
--
ALTER TABLE `Availability`
  ADD CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`ListingID`) REFERENCES `Listing` (`ListingID`) ON DELETE CASCADE;

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `Guest` (`GuestID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ListingID`) REFERENCES `Listing` (`ListingID`) ON DELETE CASCADE;

--
-- Constraints for table `BookingCoupon`
--
ALTER TABLE `BookingCoupon`
  ADD CONSTRAINT `bookingcoupon_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookingcoupon_ibfk_2` FOREIGN KEY (`CouponID`) REFERENCES `Coupon` (`CouponID`);

--
-- Constraints for table `Guest`
--
ALTER TABLE `Guest`
  ADD CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `Host`
--
ALTER TABLE `Host`
  ADD CONSTRAINT `host_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `Listing`
--
ALTER TABLE `Listing`
  ADD CONSTRAINT `listing_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `Host` (`HostID`) ON DELETE CASCADE,
  ADD CONSTRAINT `listing_ibfk_2` FOREIGN KEY (`CityID`) REFERENCES `City` (`CityID`);

--
-- Constraints for table `ListingAmenity`
--
ALTER TABLE `ListingAmenity`
  ADD CONSTRAINT `listingamenity_ibfk_1` FOREIGN KEY (`ListingID`) REFERENCES `Listing` (`ListingID`) ON DELETE CASCADE,
  ADD CONSTRAINT `listingamenity_ibfk_2` FOREIGN KEY (`AmenityID`) REFERENCES `Amenity` (`AmenityID`);

--
-- Constraints for table `ListingPhoto`
--
ALTER TABLE `ListingPhoto`
  ADD CONSTRAINT `listingphoto_ibfk_1` FOREIGN KEY (`ListingID`) REFERENCES `Listing` (`ListingID`) ON DELETE CASCADE;

--
-- Constraints for table `Maintenance`
--
ALTER TABLE `Maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`ListingID`) REFERENCES `Listing` (`ListingID`) ON DELETE CASCADE;

--
-- Constraints for table `Message`
--
ALTER TABLE `Message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`SenderID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`ReceiverID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`) ON DELETE CASCADE;

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ReviewerID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `TransactionHistory`
--
ALTER TABLE `TransactionHistory`
  ADD CONSTRAINT `transactionhistory_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactionhistory_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactionhistory_ibfk_3` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`);

--
-- Constraints for table `UserSocialNetwork`
--
ALTER TABLE `UserSocialNetwork`
  ADD CONSTRAINT `usersocialnetwork_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `usersocialnetwork_ibfk_2` FOREIGN KEY (`SocialNetworkID`) REFERENCES `SocialNetwork` (`SocialNetworkID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
