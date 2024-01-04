-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:38 PM
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
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(2, 'suber', 'daP1z_b8U_XMkSGO4B6NcHOpEHzMg9ir', '$2y$13$K2PFIkgNH362kDEG4CVhQuDhhBZQEDoInjcN9jhhazEfj7dqskuJG', NULL, 'mogah4ed@gmail.com', 10, 1703661802, 1703661802, 'hqvoTSt744EDT1S8y07L-2cZ-bNC9Yjy_1703661802'),
(3, 'admin', '-WgVC3eU2jgDaxjIULT0b4SZETHZEwws', '$2y$13$hBo6/aRDfqKIWzGvaUbJDu/mAvewpifZluEF6AKioy6beTY1FoYHS', NULL, 'mogahed1.mh@gmail.com', 10, 1703873462, 1703873462, 'eh8BMdocBASRBiK7MkR9phSOC53Ogh_h_1703873462'),
(4, 'suber2', '5rsAD2TdhPf97fPQAIsRe66uzNuS3hWE', '$2y$13$z9frwl07fGUcifMfjVTi8uXE0Ud95LLOUAPLpi1R9HQHtEi6zrG9i', NULL, 'mogah554ed@gmail.com', 10, 1703915555, 1703915555, '7j5Nkav60L2dA741iVP9DIn9ZwyNFK0n_1703915555');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(26, 2, 'Politicall', '2024-01-03 07:26:28', '2024-01-03 17:34:18'),
(27, 2, 'economic', '2024-01-03 07:27:07', '2024-01-03 10:27:07'),
(28, 2, 'cultural', '2024-01-03 07:27:34', '2024-01-03 10:27:34'),
(29, 2, 'Entertaining', '2024-01-03 07:28:01', '2024-01-03 10:28:01'),
(30, 2, 'sports', '2024-01-03 07:29:01', '2024-01-03 11:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1703660476),
('m130524_201442_init', 1703660480),
('m190124_110200_add_verification_token_column_to_user_table', 1703660481);

-- --------------------------------------------------------

--
-- Table structure for table `newss`
--

CREATE TABLE `newss` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newss`
--

INSERT INTO `newss` (`id`, `user_id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`, `status`) VALUES
(12, 2, 26, 'Lorem political', 'Lorem political is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (5).jpg', '2024-01-03 07:32:48', '2024-01-03 14:31:36', 0),
(13, 2, 27, 'Lorem economic', 'Lorem economic is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (9).jpg', '2024-01-03 07:57:42', '2024-01-03 10:57:42', 0),
(14, 2, 29, 'Lorem entertaining', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (8).jpg', '2024-01-03 08:00:37', '2024-01-03 11:00:37', 0),
(15, 2, 30, 'Lorem sport', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (9).jpg', '2024-01-03 08:01:12', '2024-01-03 11:01:12', 0),
(16, 2, 30, 'Lorem sport', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (8).jpg', '2024-01-03 08:01:27', '2024-01-03 11:01:27', 0),
(17, 4, 30, 'Lorem sports', 'Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (8).jpg', '2024-01-03 08:02:58', '2024-01-03 14:02:16', 1),
(18, 4, 30, 'Lorem sports 4', 'Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (5).jpg', '2024-01-03 08:03:23', '2024-01-03 11:03:23', 0),
(19, 4, 30, 'Lorem sports 7', 'Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (3).jpg', '2024-01-03 08:03:45', '2024-01-03 11:03:45', 0),
(20, 4, 30, 'Lorem sports 9', 'Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (5).jpg', '2024-01-03 08:04:14', '2024-01-03 11:06:36', 0),
(21, 4, 30, 'Lorem sports 34', 'Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'download (8).jpg', '2024-01-03 08:04:39', '2024-01-03 14:02:46', 1),
(22, 4, 26, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (8).jpg', '2024-01-03 11:05:43', '2024-01-03 14:07:20', 0),
(23, 4, 26, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (5).jpg', '2024-01-03 11:10:19', '2024-01-03 14:16:36', 0),
(24, 2, 26, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (5).jpg', '2024-01-03 11:17:54', '2024-01-03 14:17:54', 1),
(25, 2, 30, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (5).jpg', '2024-01-03 11:21:42', '2024-01-03 14:21:42', 1),
(26, 2, 27, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (5).jpg', '2024-01-03 11:25:16', '2024-01-03 14:25:16', 1),
(27, 2, 30, 'Lorem sport', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (5).jpg', '2024-01-03 11:31:00', '2024-01-03 14:31:00', 0),
(28, 2, 27, 'Lorem economic', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'download (3).jpg', '2024-01-03 11:36:35', '2024-01-03 14:36:35', 1),
(36, 2, 28, 'Lorem sport', 'Lorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sportLorem sport', 'download (5).jpg', '2024-01-04 07:51:49', '2024-01-04 10:51:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(2, 'suber', 'daP1z_b8U_XMkSGO4B6NcHOpEHzMg9ir', '$2y$13$K2PFIkgNH362kDEG4CVhQuDhhBZQEDoInjcN9jhhazEfj7dqskuJG', NULL, 'mogah4ed@gmail.com', 10, 1703661802, 1703661802, 'hqvoTSt744EDT1S8y07L-2cZ-bNC9Yjy_1703661802'),
(3, 'admin', '-WgVC3eU2jgDaxjIULT0b4SZETHZEwws', '$2y$13$hBo6/aRDfqKIWzGvaUbJDu/mAvewpifZluEF6AKioy6beTY1FoYHS', NULL, 'mogahed1.mh@gmail.com', 10, 1703873462, 1703873462, 'eh8BMdocBASRBiK7MkR9phSOC53Ogh_h_1703873462'),
(4, 'suber2', '5rsAD2TdhPf97fPQAIsRe66uzNuS3hWE', '$2y$13$z9frwl07fGUcifMfjVTi8uXE0Ud95LLOUAPLpi1R9HQHtEi6zrG9i', NULL, 'mogah554ed@gmail.com', 10, 1703915555, 1703915555, '7j5Nkav60L2dA741iVP9DIn9ZwyNFK0n_1703915555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `newss`
--
ALTER TABLE `newss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `newss`
--
ALTER TABLE `newss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
