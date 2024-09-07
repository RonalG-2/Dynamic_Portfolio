-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 10:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Graphic_Design'),
(2, 'Video_Editing'),
(3, 'Web_development_Project');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(2, 'Gourav Nagpal', 'snagpal676@gmail.com', 'asd', 'asd'),
(3, 'Gourav Nagpal', 'snagpal676@gmail.com', 'ss', 'sss'),
(4, 'Olivia karmakar', 'oliviakarmakar25@gmail.com', 'demo', 'hi'),
(5, 'Olivia karmakar', 'oliviakarmakar25@gmail.com', 'demo', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `pre` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `icon`, `pre`, `post`, `title`) VALUES
(1, 'bi bi-emoji-smile', 0, 50, 'Happy Clients'),
(2, 'bi bi-brush-fill', 500, 200, 'Graphic design work'),
(3, 'bi bi-badge-4k-fill', 0, 50, 'Video Editing'),
(4, 'bi bi-check-circle-fill', 0, 10, 'Social Media Management'),
(5, 'bi bi-bar-chart-fill', 0, 6, 'Web Development Projects');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `company` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`company`, `url`, `id`) VALUES
('Olivia Karmakar', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `project_date` date NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `category`, `client`, `project_date`, `url`, `text`, `image`) VALUES
(1, 'Graphic Design', '1', '', '2022-06-15', 'https://drive.google.com/drive/folders/1fSXOt2VqMQgwCva0oQ6PF5RFCgWN2xKZ?usp=drive_link', 'Over the past year, I have honed my skills in graphic design, working on a diverse range of projects that showcase my creativity and technical expertise. My work spans various mediums, from social media graphics to marketing materials and branding elements.\n\nDue to the nature of some projects being contract-based, I am unable to upload all of my work here. However, I have included a selection of designs that reflect my style and versatility. My approach to design is driven by a commitment to creating visually compelling and effective content that resonates with the target audience.', 'assets/img/portfolio/portfolio-1.jpg'),
(2, 'Video Editing', '2', '', '2022-06-15', 'https://drive.google.com/drive/folders/1K9OfvxDtTd2UBGX0xoMuiKq6qnM6gykP?usp=drive_link', 'With over a year of experience in video editing, I have developed a keen eye for detail and a strong sense of storytelling. My work includes editing promotional videos, social media content, and corporate videos, all tailored to meet the specific needs of each project. I focus on creating engaging and polished videos that effectively convey the intended message.\n\nSome of my projects were completed under contract, so I can\'t showcase all of them here. However, the selection provided demonstrates my ability to blend creativity with technical precision, delivering high-quality results that align with the client\'s vision.', 'assets/img/portfolio/portfolio-2.jpg'),
(3, 'Health Web', '3', '', '2022-06-15', 'https://github.com/Olivia252002/Health-Web/tree/main/login-register-main', 'Welcome to Health Web, your go-to source for reliable and up-to-date information on COVID-19 and health. Our website is dedicated to providing you with all the necessary resources and tools to stay safe and healthy during these uncertain times. We offer comprehensive guidance on COVID-19 prevention, primary care, and vaccination booking, to help you make informed decisions about your health and the health of your loved ones.', 'assets/img/portfolio/portfolio-4.jpg'),
(5, 'Food Delivery Service', '3', '#', '2022-06-23', 'https://github.com/Olivia252002/OnlineFoodOrderingSystem/tree/main', 'I developed a comprehensive food delivery service website using PHP, complete with an intuitive admin panel. The platform allows users to easily browse menus, place orders, and track deliveries. The admin panel provides robust tools for managing orders, customer details, and restaurant information, ensuring a seamless experience for both the customers and the business owners.\n\nThis project highlights my ability to create functional and user-friendly web applications, with a focus on performance, security, and scalability', 'assets/img/portfolio/portfolio-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quets`
--

CREATE TABLE `quets` (
  `id` int(11) NOT NULL,
  `quet` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quets`
--

INSERT INTO `quets` (`id`, `quet`, `name`, `title`) VALUES
(1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n', 'Sumit', 'CEO'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Sourav', 'BTech'),
(3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Ritik', 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `text`) VALUES
(1, 'bi bi-bullseye', 'Graphics Design', 'As a graphic designer, I bring creativity and a keen eye for detail to every project. My portfolio includes a range of designs from logos and branding to promotional materials and digital ads. I am proficient in tools such as Adobe Photoshop, Illustrator,'),
(2, 'bi bi-badge-4k-fill', 'Video Editing', 'My video editing skills turn raw footage into polished, engaging content. Using Adobe Premiere Pro and After Effects, I create compelling videos for promotions, social media, and presentations, enhancing storytelling through visuals and sound.'),
(3, 'bi bi-columns-gap', 'Web Development', 'In social media marketing, I craft strategies to drive engagement and growth. Skilled in content creation, account management, and metrics analysis, I use data-driven insights to build strong online communities with compelling content.');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `icon`, `color`) VALUES
(1, 'Graphic Design', 'ri-bar-chart-box-line', 'ffbb2c'),
(2, 'Video Editing', 'ri-bar-chart-box-line', '4CEB95'),
(3, 'Web Development', 'ri-bar-chart-box-line', 'E75C54'),
(4, 'UI/UX Design', 'ri-bar-chart-box-line', 'ffbb2c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `linkedin` text NOT NULL,
  `github` text NOT NULL,
  `birthday` date NOT NULL,
  `website` text NOT NULL,
  `phone` text NOT NULL,
  `city` text NOT NULL,
  `age` text NOT NULL,
  `degree` text NOT NULL,
  `freelance` int(11) NOT NULL,
  `certification` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `slogan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `title`, `place`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `github`, `birthday`, `website`, `phone`, `city`, `age`, `degree`, `freelance`, `certification`, `address`, `slogan`) VALUES
(1, 'Olivia Karmakar', 'oliviakarmakar', 'oliviakarmakar27@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Marketing Associate and Graphic Designer', 'West bengal', 'https://www.facebook.com/olivia.karmakar.184?mibextid=ZbWKwL', 'https://x.com/OliviaKarmakar4?t=HexNbmVMUaoRkcXMCoCJGg&s=09', 'https://www.instagram.com/olivia.547?igsh=MXB3OHA4aHhveGozeg==', '', 'https://www.linkedin.com/in/olivia-karmakar-939076210?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', 'https://github.com/Olivia252002', '2002-03-25', '', '8697626427', 'Kolkata', '22', 'MCA', 1, '', '170 Purbachal , Rahara, Kolkata-700118', 'Dynamic marketing associate skilled in graphic design, video editing, web development, and social media marketing, dedicated to creating impactful and engaging content that drives brand success.'),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quets`
--
ALTER TABLE `quets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quets`
--
ALTER TABLE `quets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
