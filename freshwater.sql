-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2017 at 02:33 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshwaterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `a_ID` int(11) NOT NULL,
  `a_Email` varchar(255) NOT NULL,
  `a_FName` varchar(60) NOT NULL,
  `a_LName` varchar(60) NOT NULL,
  `a_Username` varchar(60) NOT NULL,
  `a_Password` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`a_ID`, `a_Email`, `a_FName`, `a_LName`, `a_Username`, `a_Password`) VALUES
(1, 'customer@gmail.com', 'Will', 'Smith', 'customer', 'customerpass');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_ID` int(11) NOT NULL,
  `admin_Email` varchar(255) NOT NULL,
  `admin_FName` varchar(60) NOT NULL,
  `admin_LName` varchar(60) NOT NULL,
  `admin_Username` varchar(60) NOT NULL,
  `admin_Password` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_ID`, `admin_Email`, `admin_FName`, `admin_LName`, `admin_Username`, `admin_Password`) VALUES
(1, 'admin@gmail.com', 'John', 'Smith', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `p_Category` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`p_Category`, `categoryName`) VALUES
(1, 'Whole Fish'),
(2, 'Fillet Fish'),
(3, 'Crab'),
(4, 'Lobster'),
(5, 'Oysters'),
(6, 'Shrimp');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `item_ID` int(11) NOT NULL,
  `o_ID` int(11) NOT NULL,
  `p_ID` int(11) NOT NULL,
  `item_Bill` decimal(10,2) NOT NULL,
  `item_Quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`item_ID`, `o_ID`, `p_ID`, `item_Bill`, `item_Quantity`) VALUES
(1, 1, 4, '2500.00', 1),
(2, 2, 30, '0.00', 3),
(3, 3, 20, '0.00', 6),
(4, 4, 26, '0.00', 1),
(5, 5, 3, '0.00', 1),
(6, 6, 8, '0.00', 1),
(7, 7, 2, '0.00', 1),
(8, 7, 1, '0.00', 1),
(9, 7, 3, '0.00', 2),
(10, 8, 2, '0.00', 1),
(11, 9, 2, '0.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_ID` int(11) NOT NULL,
  `a_ID` int(11) NOT NULL,
  `o_Date` datetime NOT NULL,
  `o_Bill` decimal(10,2) NOT NULL,
  `o_Quantity` int(11) NOT NULL,
  `o_Address` varchar(255) NOT NULL,
  `o_cardNumber` char(16) NOT NULL,
  `o_cardExpires` char(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_ID`, `a_ID`, `o_Date`, `o_Bill`, `o_Quantity`, `o_Address`, `o_cardNumber`, `o_cardExpires`) VALUES
(1, 1, '2016-12-13 00:00:00', '2500.00', 1, '123 Willow Street, Montclair, NJ 07043', '1234567890123456', '12/17'),
(2, 3, '2017-04-26 00:46:28', '2400.00', 3, '', '', ''),
(3, 3, '2017-04-26 03:09:27', '5394.00', 6, '', '', ''),
(4, 1, '2017-05-03 02:22:08', '1499.00', 1, '123 Willow Street, Montclair, NJ 07043', '', ''),
(5, 1, '2017-05-03 02:24:00', '1250.00', 1, '123 Willow Street, Montclair, NJ 07043', '', ''),
(6, 1, '2017-05-03 05:40:11', '129.00', 1, '123 Willow Street, Montclair, NJ 07043', '', ''),
(7, 1, '2017-05-07 02:03:52', '169.98', 4, '123 Willow Street, Montclair, NJ 07043', '', ''),
(8, 1, '2017-05-07 02:36:35', '50.00', 1, '123 Willow Street, Montclair, NJ 07043', '', ''),
(9, 1, '2017-05-07 02:39:35', '100.00', 2, '123 Willow Street, Montclair, NJ 07043', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_ID` int(11) NOT NULL,
  `p_Category` int(11) NOT NULL,
  `p_Price` decimal(10,2) NOT NULL,
  `p_Name` varchar(255) NOT NULL,
  `abbrvName` varchar(60) DEFAULT NULL,
  `p_Quantity` int(11) NOT NULL,
  `p_Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_ID`, `p_Category`, `p_Price`, `p_Name`, `abbrvName`, `p_Quantity`, `p_Description`) VALUES
(1, 1, '30.00', 'Whole Salmon', 'whole_salmon', 50, 'The Atlantic salmon is a slender and graceful fish whose Latin name means \"the leaper.\" Its distinctive characteristics make the Atlantic salmon easy to recognize. It has a small head, blunt nose, small eyes, and a mouth that gapes back below its eye. The mouth contains a row of stout, conical teeth. Atlantic salmon have large scales and slightly forked caudal fins. One distinguishing characteristic of Atlantic salmon is the presence of an adipose fin, a feature present in all species of trout.\r\n\r\n'),
(2, 1, '50.00', 'Whole Tilapia', 'whole_tilapia', 47, 'Tilapia is popular because it is a mild flavored, white-fleshed fish that is available throughout the year at a competitive price. The most popular product form is skinless and boneless fillets ranging in size from 3 to 9 ounces (5 to 7 ounce fillets are the most common). Various processing and packaging methods are used to ensure that fillets have a mild flavor and retain their bright red color. During the early years of production, tilapia from some sources had unpredictable off-flavors that were associated with water conditions and certain types of algae from different freshwater farming operations. However, recent production improvements have introduced methods to prevent the development of off flavors and screen products to ensure that flavors are uniform.'),
(3, 1, '44.99', 'Whole Blue Fish', 'whole_bluefish', 49, 'Coloration is greenish-blue to dark blue above giving way to a silvery white on the sides and below. They are covered in relatively small scales, have a straight lateral line, a forked tail, and dorsal and anal fins. Bluefish have an extended, down-turned lower jaw, with both jaws being lined with extremely sharp, conical teeth. \r\n\r\nDelicious!'),
(4, 1, '2500.00', 'Whole Carp', 'whole_carp', 28, 'Sustainability is certainly not an issue with the common carp, which is farmed and fished in freshwater worldwide. Native to Asia, the species eventually made its way into Europe and was introduced in the 1800s to the United States, where it’s now considered an invasive species. Processing entrepreneurs in the Midwest are working to expand the market — and fishing effort — for the fish, which is in demand in restaurants and shops in urban Asian communities. The hardy carp was one of the world’s original farmed fish, raised as early as 500 B.C. in China, which still accounts for the lion’s share of farmed production. While not widely consumed in this country, the fish is popular in Asia and Europe, home to many strains of common carps. The main varieties include:Leather carp, which was bred to have no scalesMirror carp, which has scales only near the finsThe fully scaled common carpMarket size for whole carp ranges from 2 to 3 pounds, though they can reach more than 50 pounds.\r\n'),
(5, 1, '39.99', 'Whole Bass', 'whole_bass', 39, 'Freshwater bass is a favorite catch among those who love to fish. Its tenderness and mild flavor are best enhanced by cooking the fish simply and quickly and serving it without heavy sauces. Most freshwater bass filets have no bones, making them as easy to eat as they are to prepare. The key to cooking any type of fish -- whether fresh-caught or store-bought -- is not to overcook it. A good rule is to cook the filet for 10 minutes per every inch of thickness for fish that is tender and moist.'),
(6, 1, '59.99', 'Whole Catfish', 'whole_catfish', 53, 'Catfish is a type of fish that belongs to the group of ray-finned fish. There are more than 3000 species of catfish that can be found on all continents except on the Antarctica. Catfish inhabits freshwater ecosystems such as rivers and streams. Some species of catfish are adapted to the life in salt waters and caves. Catfish are one of the most farmed types of fish (their meat is consumed as delicacy around the world). Some types of catfish (such as Mekong catfish) are critically endangered due to overfishing and pollution of the water.'),
(7, 2, '9.00', 'Salmon Fillet', 'fillet_salmon', 11, 'Created by experienced luthiers in a limited quantity at the \r\n  Fender Acoustic Custom Shop, the TPD-2 is available in Natural and Three-color Sunburst finishes and is designed \r\n  for professional guitarists who require the ultimate in tone and feel. Every detail of the TPD-2 comes from a painstaking \r\n  process of hand-selecting matched woods and well thought-out components, including a fine AAA Sitka spruce top and \r\n  master-grade solid rosewood back and sides. Includes deluxe hard-shell case, deluxe leather strap and certificate of authenticity.'),
(8, 2, '5.99', 'Tilapia Fillet', 'fillet_tilapia', 44, 'Tilapia Fillet'),
(9, 2, '5.99', 'Halibut Fillet', 'fillet_halibut', 9, 'Halibut comes from the North Sea – caught in deep or shallow waters. It has firm white meat with a delicate, sweet flavor. It can be prepared in several different ways including pan fried, steamed, grilled or even poached.'),
(10, 2, '3995.00', 'Flounder Fillet ', 'fillet_flounder', 35, 'Sprinkle with salt and pepper. Dredge fillets in flour. Place oil and 2 tablespoons butter in flat, heavy-bottomed skillet and heat on medium-high until butter melts. Keeping heat at medium-high, cook fish on 1 side about 3 minutes (more or less, depending on size of fillets), until deep brown and crispy.'),
(13, 3, '49.99', 'Blue Crab', 'crabs', 18, 'Delicious salty sweetness, but only after considerable effort. Fished along the Atlantic coast, particularly the Chesapeake Bay, and the Gulf of Mexico from April through December.Blue crabs are usually steamed and served whole (and, in Maryland, with Old Bay seasoning).You must basically dissect the whole carcass yourself, removing claws, legs, gills, and other viscera before snapping the entire body in half to pick out the meat.\r\n'),
(14, 3, '49.99', 'Dungeness Crab', 'crab_dungeness', 16, 'Succulent, sweet, tender, and flaky. Marketed year-round, but harvested from late fall to late spring, from Alaska down the West Coast. One whole crab - heated and cracked, served simply with butter or dipping sauce - can feed 2 people'),
(15, 3, '49.99', 'King Crab', 'crab_king', 33, 'An ideal shell pack for aspiring drummers. The \r\n  perfect shell pack for beginning drummers.This 5-piece Z5 Series drum shell pack from PDP is a great shell pack \r\n  for drummers that are just starting out. The 5-piece shell pack comes in fusion tom sizes (10\" x 8\", 12\" x 9\", \r\n  and 14\" x 12\") with all-wood shells, FinishPly wrap, and a variety of stunning colors. Cymbals and hardware not included.'),
(16, 3, '34.99', 'Snow Crab', 'crab_snow', 23, 'The Simmons SD1500KIT\r\n is the most realistic and comprehensive electronic drum kit in its class. With a versatile 6-pad configuration PLUS four \r\n cymbals and hi-hat controller, it is maxed out right out of the box. Built around the exceptional sound library of the \r\n SD1000 Digital Sound Module, you benefit from 22 separate trigger zones, plus chokes on the cymbal pads.The SD1500KIT \r\n also features several key updates from the SD1000, including triple zone snare, floor tom and cymbal pads, heavy-duty \r\n kick pad stand and the new heavy-duty hex drum rack. Whether you are practicing, recording or playing out, the SD1500KIT \r\n provides a biggest drumming experience in its class.'),
(19, 4, '44.99', 'Homarus', 'lobster_homarus', 17, 'Homarus is a genus of lobsters, which include the common and commercially significant species Homarus americanus and Homarus gammarus. The Cape lobster, which was formerly in this genus as H. capensis, was moved in 1995 to the new genus Homarinus.'),
(20, 4, '34.99', 'Norway lobster', 'lobster_norway', 29, 'Nephrops norvegicus, known variously as the Norway lobster, Dublin Bay prawn, langoustine or scampi, is a slim, orange-pink lobster which grows up to 25 cm long, and is \"the most important commercial crustacean in Europe\"\n'),
(21, 4, '29.99', 'Maine Lobster ', 'lobster_maine', 19, 'The two types of lobster are similar in size but the European lobsters typically have a darker color and the claws may be slightly smaller. The American Lobsters are found off of the east coast of the United States and Canada. The American Lobster also known as a Maine Lobster, is most common live in restaurants and supermarkets. Clawed lobsters contain more meat then spiny lobsters thus they are most commonly sold live. Clawed lobsters are typically cold water lobsters. Clawed lobsters thrive in cold, shallow waters as far north as New Found land and as far south as North Carolina. Lobsters usually live in deep water in the fall and return to shallower depths in the spring.'),
(22, 4, '39.99', 'Spiny Lobster ', 'lobster_spiny', 17, 'Spiny lobsters have no claws, have a harder shell and have very large antenna. The two main regions that support spiny lobsters are the California coast and in the Caribbean. Because spiny lobsters have no claws, most of the meat is contained in the lobster tails. Because of this, spiny lobsters are most often sold live locally or usually harvested just for the lobster tail. Spiny lobsters are typically warm water lobsters.\n'),
(24, 5, '74.99', 'Oyster Pack of 100', 'oyster_1', 45, 'Oyster is the common name for a number of different families of salt-water bivalve molluscs that live in marine or brackish habitats. In some species the valves are highly calcified, and many are somewhat irregular in shape.'),
(25, 5, '499.99', 'Premium Pack of 800', 'oyster_1', 6, 'Oyster is the common name for a number of different families of salt-water bivalve molluscs that live in marine or brackish habitats. In some species the valves are highly calcified, and many are somewhat irregular in shape.'),
(26, 6, '14.99', 'Lagostino Shrimp', 'shrimp_lagostino', 45, 'Farfantepenaeus duorarum, or pink shrimp, are known for their tender, sweet meat and are caught year round, although their abundance occurs in the winter months. They\'re most prevalent off the coast of southwestern Florida where they reside in nursery areas with marsh grasses. As they grow, they migrate to deeper and saltier water, traveling mostly at night or dusk. During the winter, they stay in the estuary and bury themselves in substrate to protect themselves from the cold. When early spring arrives and the shrimp have grown rapidly, they move out to the deeper ocean waters where they live primarily on sand, sand-shell, or coral mud bottoms.'),
(23, 5, '24.99', 'Oysters Pack of 24', 'oyster_1', 34, 'Oyster is the common name for a number of different families of salt-water bivalve molluscs that live in marine or brackish habitats. In some species the valves are highly calcified, and many are somewhat irregular in shape.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`a_ID`,`a_Username`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_ID`,`admin_Username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`p_Category`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`item_ID`),
  ADD KEY `o_ID` (`o_ID`),
  ADD KEY `p_ID` (`p_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_ID`),
  ADD KEY `a_ID` (`a_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_ID`),
  ADD KEY `p_Category` (`p_Category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `a_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `p_Category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
