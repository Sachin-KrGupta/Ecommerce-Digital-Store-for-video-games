-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2020 at 08:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sachin_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `photos` varchar(500) NOT NULL,
  `category` varchar(50) NOT NULL,
  `link` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameid`, `title`, `description`, `price`, `size`, `photos`, `category`, `link`, `brand`) VALUES
(1, 'CS Global Offensive', 'Counter-Strike: Global Offensive is a multiplayer first-person shooter video game developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series and was released for Windows, OS X, Xbox 360, and PlayStation 3 in August 2012, while the Linux version was released in 2014.', '500.00', '20.00', 'https://image-cdn.essentiallysports.com/wp-content/uploads/20200602171212/71rVqrAy5QL._SL1500_.jpg', 'action', 'download from here', 'Valve'),
(2, 'Destiny 2', 'Destiny 2 is a free-to-play online-only multiplayer first-person shooter video game developed by Bungie. It was released for PlayStation 4 and Xbox One on September 6, 2017, followed by a Microsoft Windows version the following month.', '1499.00', '30.00', 'https://images-na.ssl-images-amazon.com/images/I/61L5W1aH48L._AC_SX385_.jpg', 'action', 'download from here', 'Activision'),
(3, 'Resident Evil 2', 'Resident Evil 2 is a survival horror game developed and published by Capcom. A remake of the 1998 game of the same name, it was released for Windows, PlayStation 4, and Xbox One on January 25, 2019.', '2599.00', '42.00', 'https://images.g2a.com/newlayout/323x433/1x1x0/bfde13051dfc/5bb78114ae653a5bd2008af2', 'adventure', 'download from here', 'CapCom'),
(4, 'Witcher 3: The Wild Hunt', 'The Witcher 3: Wild Hunt is a 2015 action role-playing game developed and published by Polish developer CD Projekt and is based on The Witcher series of fantasy novels by Andrzej Sapkowski.', '2999.00', '55.00', 'https://images.g2a.com/newlayout/323x433/1x1x0/6c3371cf8bb0/59128878ae653afb9e493389', 'adventure', 'download from here', 'CD Projekt Red'),
(5, 'Assasin\'s Creed Odyssey', 'Assassin\'s Creed Odyssey is an action role-playing video game developed by Ubisoft Quebec and published by Ubisoft. It is the eleventh major installment, and 21st overall, in the Assassin\'s Creed series and the successor to 2017\'s Assassin\'s Creed Origins.', '1999.00', '35.00', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/99/ACOdysseyCoverArt.png/220px-ACOdysseyCoverArt.png', 'adventure', 'do', 'Ubisoft'),
(6, 'GTA 5', 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the first main entry in the Grand Theft Auto series since 2008\'s Grand Theft Auto IV.', '1049.00', '25.00', 'https://media.rockstargames.com/rockstargames/img/global/news/upload/actual_1364906194.jpg', 'strategy', 'ds', 'Rockstar Games'),
(7, 'Fallout 4', 'Fallout 4 is an action role-playing game developed by Bethesda Game Studios and published by Bethesda Softworks. It is the fourth main game in the Fallout series and was released worldwide on November 10, 2015, for Microsoft Windows, PlayStation 4 and Xbox One.', '899.00', '20.00', 'https://m.media-amazon.com/images/I/913m4BOW-NL.jpg', 'strategy', 'dfhs', 'Bethesda'),
(8, 'COD: WWII', 'Call of Duty: WWII is a 2017 first-person shooter video game developed by Sledgehammer Games and published by Activision. It was released worldwide on November 3, 2017 for Microsoft Windows, PlayStation 4 and Xbox One.', '1499.00', '50.00', 'https://upload.wikimedia.org/wikipedia/en/1/18/Call_of_Duty_WWII_Cover_Art.jpg', 'multiplayer', 'shjag', 'Sledgehammer Games'),
(9, 'Doom Eternal', 'Doom Eternal is a first-person shooter video game developed by id Software and published by Bethesda Softworks. The sequel to Doom, and the fifth main game in the Doom series, it was released on March 20, 2020, for Windows, PlayStation 4, Stadia and Xbox One, with a Nintendo Switch version planned. ', '1099.00', '34.00', 'https://images-na.ssl-images-amazon.com/images/I/91dj5nYfunL.jpg', 'multiplayer', 'djfgj', 'Bethesda'),
(10, 'The Elder Scrolls V', 'The Elder Scrolls V: Skyrim is an action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks.', '1299.00', '35.00', 'https://upload.wikimedia.org/wikipedia/en/1/15/The_Elder_Scrolls_V_Skyrim_cover.png', 'strategy', 'jdshifhjk', 'Bethesda'),
(11, 'Solaris 7: Mechwarrior', 'Solaris is an Elo-ranked competitive mode pitting MechWarriors against each other in fierce 1v1 and 2v2 combat that takes place within exclusive Solaris-only arenas. Any player can participate in Solaris. Choose your division, sign with a Patron, and compete in the Solaris games for accolades, sponsors and unique rewards. Become the ultimate Solaris champion this season!', '299.00', '40.00', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/clans/11086019/daac66a487d46b5f83d1ac889f52500edd2c955c.jpg', 'multiplayer', 'fbsjhgf', 'Solaris 7'),
(12, 'Star Wars: The Jedi Fallen Order', 'Star Wars Jedi: Fallen Order is an action-adventure game developed by Respawn Entertainment and published by Electronic Arts. It was released for Windows, PlayStation 4, and Xbox One on November 15, 2019. A Stadia version is due in 2020.', '399.00', '100.00', 'https://images.g2a.com/newlayout/323x433/1x1x0/734109bfac80/5dc3e9bf46177c56f738a7a2', 'arcade', 'dbjsfgg', 'EA Games');

-- --------------------------------------------------------

--
-- Table structure for table `games_purchase`
--

CREATE TABLE `games_purchase` (
  `purchasegameid` int(11) NOT NULL,
  `gameid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games_purchase`
--

INSERT INTO `games_purchase` (`purchasegameid`, `gameid`, `purchaseid`) VALUES
(1, 1, 1),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `userid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `purchasedt` varchar(200) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`userid`, `purchaseid`, `purchasedt`, `totalprice`, `discount`) VALUES
(1, 1, '2020-06-28T18:05:33.560Z', '2499.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewid` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `rating` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `gameid` int(11) NOT NULL,
  `reviewdt` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewid`, `review`, `rating`, `userid`, `gameid`, `reviewdt`) VALUES
(1, 'Good Game', 5, 1, 1, '26-06-2020'),
(2, 'Awesome', 4, 1, 2, '26-06-2020'),
(3, 'Awesome', 5, 1, 3, '26-06-2020'),
(4, 'Awesome', 5, 1, 4, '26-06-2020'),
(5, 'Awesome', 5, 1, 5, '26-06-2020'),
(6, 'Awesome', 5, 1, 6, '26-06-2020'),
(7, 'Awesome', 4, 1, 7, '26-06-2020'),
(8, 'Awesome', 4, 1, 8, '26-06-2020'),
(9, 'Awesome', 4, 1, 9, '26-06-2020'),
(10, 'Awesome', 4, 1, 10, '26-06-2020'),
(11, 'Awesome', 4, 1, 11, '26-06-2020'),
(12, 'Hate It', 1, 1, 12, '26-06-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `phone`, `address`, `age`) VALUES
(1, 'sachingupta', 'downloadgame', 'sachingupta@sachingames.com', '+919876543210', 'Kahi bhi', 18),
(2, 'qwertyui', 'qweryuiop', '123456@werty.com', '1234567890', '1234567890', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameid`);

--
-- Indexes for table `games_purchase`
--
ALTER TABLE `games_purchase`
  ADD PRIMARY KEY (`purchasegameid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `gameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `games_purchase`
--
ALTER TABLE `games_purchase`
  MODIFY `purchasegameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
