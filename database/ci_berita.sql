-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 04:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `isi`, `image`, `tanggal`) VALUES
(1, 'MRT sudah beroperasi', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque commodi distinctio natus dolore quibusdam mollitia culpa, voluptatem ut odit rem deserunt incidunt voluptatibus earum, nobis eos sed quaerat eius maiores. Ex voluptate ullam fugiat voluptates blanditiis numquam amet rem eaque omnis vero expedita quod, qui cupiditate debitis quos quo. Earum, animi. Impedit hic repellendus facere, ea accusantium alias totam fugit mollitia laboriosam eum, amet quam! Rerum, eius provident ipsam perspiciatis distinctio quod quidem cupiditate deleniti nisi aliquam beatae delectus voluptatum aperiam praesentium repellat unde quaerat qui? Provident, ab dolore hic iure debitis, beatae cum vel repellendus aperiam facilis officiis consequatur.</p>', '6.png', '2019-09-23 01:32:28'),
(2, 'LRT Sudah 50%', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque commodi distinctio natus dolore quibusdam mollitia culpa, voluptatem ut odit rem deserunt incidunt voluptatibus earum, nobis eos sed quaerat eius maiores. Ex voluptate ullam fugiat voluptates blanditiis numquam amet rem eaque omnis vero expedita quod, qui cupiditate debitis quos quo. Earum, animi. Impedit hic repellendus facere, ea accusantium alias totam fugit mollitia laboriosam eum, amet quam! Rerum, eius provident ipsam perspiciatis distinctio quod quidem cupiditate deleniti nisi aliquam beatae delectus voluptatum aperiam praesentium repellat unde quaerat qui? Provident, ab dolore hic iure debitis, beatae cum vel repellendus aperiam facilis officiis consequatur.</p>', '4.png', '2019-09-23 01:34:47'),
(3, 'Wajib Belajar 12 tahun', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque commodi distinctio natus dolore quibusdam mollitia culpa, voluptatem ut odit rem deserunt incidunt voluptatibus earum, nobis eos sed quaerat eius maiores. Ex voluptate ullam fugiat voluptates blanditiis numquam amet rem eaque omnis vero expedita quod, qui cupiditate debitis quos quo. Earum, animi. Impedit hic repellendus facere, ea accusantium alias totam fugit mollitia laboriosam eum, amet quam! Rerum, eius provident ipsam perspiciatis distinctio quod quidem cupiditate deleniti nisi aliquam beatae delectus voluptatum aperiam praesentium repellat unde quaerat qui? Provident, ab dolore hic iure debitis, beatae cum vel repellendus aperiam facilis officiis consequatur.</p>', '2.png', '2019-09-23 01:57:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
