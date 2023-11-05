-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 01:20 PM
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
-- Database: `shoutbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Brad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ex nibh, varius at tellus in, euismod volutpat sapien. Fusce tincidunt non neque ut malesuada. Etiam aliquam eros accumsan, vestibulum libero vitae, feugiat nisi. Aliquam ac orci eros. Donec in magna at nulla sodales venenatis.', '21:07:33'),
(2, 'John', 'Quisque libero dolor, commodo quis purus in, placerat semper eros. Aenean eu sollicitudin dolor, in sodales libero. Etiam eget volutpat dolor. Proin convallis scelerisque vehicula.', '12:32:01'),
(3, 'Sam', 'Duis mattis ultricies augue, vitae mollis metus pharetra a. Nunc sit amet enim ac dui faucibus molestie. Vestibulum placerat elit eu nisl porttitor elementum. Praesent suscipit sapien eu nibh ultrices suscipit. Curabitur bibendum ut quam in dignissim. Mauris condimentum porttitor eleifend. Aliquam porttitor, est ut facilisis ornare, libero ante vestibulum mauris, ut commodo ex tellus sed sapien.', '15:45:19'),
(4, 'Georgia', 'Curabitur pharetra metus quis blandit imperdiet. Nam fringilla, eros ut luctus viverra, est augue tincidunt dui, non laoreet sapien neque a lacus. Aenean posuere suscipit vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum, ipsum vel maximus finibus, lectus nibh elementum orci, id convallis nisi justo a ligula.', '07:05:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
