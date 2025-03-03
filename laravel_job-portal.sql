-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2025 at 04:26 PM
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
-- Database: `laravel_job-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `resume_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `job_id`, `full_name`, `contact_phone`, `contact_email`, `message`, `location`, `resume_path`, `created_at`, `updated_at`) VALUES
(1, 12, 3, 'Robert Fisher', '+1 (687) 405-1953', 'tanedit@mailinator.com', 'Sint quae molestiae', 'Dolorem quasi facere', 'resumes/RcsIGpO9fNV6qeUFlXAsL7GkMfXoovgdK0qug5uA.pdf', '2025-02-27 08:12:44', '2025-02-27 08:12:44'),
(4, 12, 1, 'Daksh Joshi', '+1 (632) 967-7433', 'vicuwikypu@mailinator.com', 'Sint rem aut molest', 'Perspiciatis nemo v', 'resumes/f9msvsk8myVgRueXuuyw8JVv26umz5EsEbLtgoTM.pdf', '2025-02-27 09:46:24', '2025-02-27 09:46:24'),
(5, 13, 2, 'Daksh', '+1 (328) 894-3074', 'cewy@mailinator.com', 'Consectetur consequ', 'Sint architecto iure', 'resumes/MpAAXiK7OouKUp0cbVPxJGYwHMv1cdXpzikFBdQY.pdf', '2025-03-01 09:32:56', '2025-03-01 09:32:56'),
(7, 13, 6, 'Daksh', '+1 (903) 991-4448', 'hanuxeb@mailinator.com', 'In inventore in dolo', 'Deserunt rem quia mi', 'resumes/3oroJaSSCusQPpqFrwFFrfQDqdaEqGSwErmyyWpd.pdf', '2025-03-01 09:47:59', '2025-03-01 09:47:59'),
(8, 13, 3, 'Daksh', '+1 (603) 835-1334', 'xosonagow@mailinator.com', 'Pariatur Mollit nem', 'Sit dolores et ullam', 'resumes/ZKn3zu268LlfiWUY3cFFakcu2Tnh6JZ9GFuk0jdS.pdf', '2025-03-01 11:26:42', '2025-03-01 11:26:42'),
(9, 13, 1, 'Daksh', '+1 (834) 172-9918', 'mehynyvu@mailinator.com', 'Pariatur In in mole', 'Animi sit incidunt', 'resumes/2wXqL6L2C5J8cB3MpPNCbOdFM6ZecmCehgfMSrbb.pdf', '2025-03-01 11:40:32', '2025-03-01 11:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_listings`
--

CREATE TABLE `job_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `job_type` enum('Full-Time','Part-Time','Contract','Temporary','Internship','Volunteer','On-Call') NOT NULL DEFAULT 'Full-Time',
  `remote` tinyint(1) NOT NULL DEFAULT 0,
  `requirements` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_description` text DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_listings`
--

INSERT INTO `job_listings` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`, `salary`, `tags`, `job_type`, `remote`, `requirements`, `benefits`, `address`, `city`, `state`, `zipcode`, `contact_email`, `contact_phone`, `company_name`, `company_description`, `company_logo`, `company_website`) VALUES
(1, 1, 'Software Engineer', 'As a Software Engineer at Algorix, you will be responsible for designing, developing, and maintaining high-quality software applications. You will work closely with cross-functional teams to deliver scalable and efficient solutions that meet business needs. The role involves writing clean, maintainable code, participating in code reviews, and staying current with industry trends to ensure our technology stack remains cutting-edge.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 90000, 'development,coding,java,python', 'Part-Time', 0, 'Bachelors degree in Computer Science or related field, 3+ years of software development experience', 'Healthcare, 401(k) matching, flexible work hours', '123 Main St', 'Albany', 'NY', '12201', 'info@algorix.com', '348-334-3949', 'Algorix', 'Algorix is a leading tech firm specializing in innovative software solutions and cutting-edge technology.', 'logos/logo-algorix.png', 'https://algorix.com'),
(2, 1, 'Marketing Specialist', 'Bitwave is seeking a creative and strategic Marketing Specialist to develop and execute comprehensive marketing campaigns. In this role, you will be responsible for market research, identifying target audiences, and crafting compelling messages to drive brand awareness and engagement. You\'ll work closely with the sales and product teams to align marketing strategies with business goals and analyze campaign performance to optimize results.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 70000, 'marketing,advertising', 'Full-Time', 1, 'Bachelors degree in Marketing or related field, experience in digital marketing', 'Health and dental insurance, paid time off, remote work options', '456 Market St', 'San Francisco', 'CA', '94105', 'info@bitwave.com', '454-344-3344', 'Bitwave', 'Bitwave is a dynamic marketing agency focused on delivering innovative marketing strategies and results-driven solutions.', 'logos/logo-bitwave.png', 'https://bitwave.com'),
(3, 9, 'Web Developer', 'At NextGen Solutions, our Web Developer will be crucial in building and maintaining exceptional web applications that delight users and meet business objectives. You will be involved in the full development lifecycle, including design, coding, testing, and deployment. The role requires expertise in front-end technologies such as HTML, CSS, and JavaScript, as well as experience with back-end systems to create dynamic and responsive web solutions.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 85000, 'web development,programming', 'Contract', 0, 'Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript', 'Competitive salary, professional development opportunities, friendly work environment', '789 Web Ave', 'Chicago', 'IL', '60607', 'info@nextgensolutions.com', '456-876-5432', 'NextGen Solutions', 'NextGen Solutions is a forward-thinking technology company dedicated to crafting exceptional web applications and solutions.', 'logos/logo-nextgen.png', 'https://nextgensolutions.com'),
(4, 3, 'Data Analyst', 'Quantum Code is in search of a Data Analyst to join our team and transform complex data into actionable insights. You will utilize various analytical tools and techniques to interpret data, identify trends, and provide strategic recommendations. Your role will involve working closely with stakeholders to understand their data needs, delivering detailed reports, and contributing to data-driven decision-making processes to support the company’s objectives.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 75000, 'data analysis,statistics', 'Full-Time', 0, 'Bachelors degree in Data Science or related field, strong analytical skills', 'Health benefits, remote work options, casual dress code', '101 Data St', 'Chicago', 'IL', '60616', 'info@quantumcode.com', '444-555-5555', 'Quantum Code', 'Quantum Code is a prominent data analytics company providing insightful data solutions and analytics for better decision-making.', 'logos/logo-quantumcode.png', 'https://quantumcode.com'),
(5, 4, 'Graphic Designer', 'As a Graphic Designer at Shield, you will be at the forefront of our creative projects, working on diverse design tasks that range from branding and advertising to digital and print media. You will be responsible for creating visually compelling designs that effectively communicate our brand message and captivate our audience. Collaboration with other creative professionals and the ability to take a concept from idea to execution will be key to your success.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 70000, 'graphic design,creative', 'Full-Time', 0, 'Bachelors degree in Graphic Design or related field, proficiency in Adobe Creative Suite', 'Flexible work hours, creative work environment, opportunities for growth', '234 Design Blvd', 'Albany', 'NY', '12203', 'info@shield.com', '499-321-9876', 'Shield', 'Shield is a leading design agency known for its innovative approach to graphic design and creative solutions.', 'logos/logo-shield.png', 'https://shield.com'),
(6, 2, 'Data Scientist', 'Join Sparkle as a Data Scientist and play a pivotal role in analyzing and interpreting complex datasets to derive meaningful insights. You will be responsible for building predictive models, implementing machine learning algorithms, and applying statistical techniques to solve real-world problems. Collaboration with cross-functional teams to integrate data-driven solutions into business strategies and products will be a key part of your role.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 100000, 'data science,machine learning', 'Full-Time', 1, 'Masters or Ph.D. in Data Science or related field, experience with machine learning algorithms', 'Competitive salary, remote work options, professional development', '567 Data Drive', 'Boston', 'MA', '02108', 'info@sparkle.com', '684-789-1234', 'Sparkle', 'Sparkle is an innovative company specializing in data science and machine learning, committed to solving complex data problems.', 'logos/logo-sparkle.png', 'https://sparkle.com'),
(7, 7, 'UX Designer', 'Vencom is seeking a UX Designer to enhance our user experience through intuitive and engaging design solutions. You will conduct user research, create wireframes and prototypes, and collaborate with developers and product managers to implement design improvements. Your focus will be on understanding user needs and ensuring our products are both functional and aesthetically pleasing.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 80000, 'UX design,user research', 'Full-Time', 0, 'Bachelors degree in UX Design or related field, experience with design tools like Sketch or Figma', 'Health insurance, collaborative work environment, growth opportunities', '890 UX Rd', 'Seattle', 'WA', '98101', 'info@vencom.com', '567-890-1234', 'Vencom', 'Vencom is a design-driven company focused on creating exceptional user experiences through innovative UX design.', 'logos/logo-vencom.png', 'https://vencom.com'),
(8, 2, 'Digital Media Specialist', 'Digital Media is seeking a Digital Media Specialist to manage and enhance our online presence. You will be responsible for creating and implementing digital marketing strategies, analyzing web traffic and engagement metrics, and optimizing our digital content to maximize reach and effectiveness. Your role will involve collaboration with the content and design teams to ensure cohesive and impactful digital campaigns.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 75000, 'digital marketing,SEO,analytics', 'Full-Time', 1, 'Bachelors degree in Marketing, Communications, or related field, experience with digital marketing tools', 'Remote work options, health insurance, professional growth opportunities', '101 Digital Way', 'Austin', 'TX', '73301', 'info@digitalmedia.com', '512-555-1234', 'Digital Media', 'Digital Media specializes in innovative online marketing strategies and digital content management.', 'logos/logo-digital-media.png', 'https://digitalmedia.com'),
(9, 9, 'Product Manager', 'Pink Pig is searching for a Product Manager to lead the development and enhancement of our tech products. You will work closely with engineering, design, and marketing teams to define product vision, create roadmaps, and deliver high-quality products that meet customer needs. Your role involves gathering and prioritizing product requirements, overseeing project timelines, and ensuring successful product launches.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 90000, 'product management,tech', 'Full-Time', 0, 'Bachelors degree in Business or Engineering, experience in product management', 'Health benefits, competitive salary, growth opportunities', '234 Innovation Ln', 'New York', 'NY', '10001', 'info@pinkpig.com', '212-555-6789', 'Pink Pig', 'Pink Pig is a technology company dedicated to creating innovative products and solutions that drive industry advancement.', 'logos/logo-pink-pig.png', 'https://pinkpig.com'),
(10, 2, 'IT Support Specialist', 'Tec Solutions is hiring an IT Support Specialist to provide technical assistance and support to our clients. You will troubleshoot hardware and software issues, assist with network and system configurations, and ensure the smooth operation of IT infrastructure. Your role involves responding to support requests, documenting issues, and collaborating with the technical team to implement solutions.', '2025-02-24 02:39:35', '2025-02-24 02:39:35', 65000, 'IT support,networking', 'Full-Time', 0, 'Associate\'s degree in IT or related field, experience in technical support', 'Health insurance, retirement plan, opportunities for career advancement', '567 Tech Blvd', 'Dallas', 'TX', '75201', 'info@tecsolutions.com', '214-555-9876', 'Tec Solutions', 'Tec Solutions provides comprehensive IT support and solutions, ensuring optimal performance of technology infrastructure.', 'logos/logo-tec-solutions.png', 'https://tecsolutions.com');

-- --------------------------------------------------------

--
-- Table structure for table `job_user_bookmarks`
--

CREATE TABLE `job_user_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user_bookmarks`
--

INSERT INTO `job_user_bookmarks` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(2, 1, 5, '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(4, 1, 8, '2025-02-24 11:11:48', '2025-02-24 11:11:48'),
(6, 1, 2, '2025-02-24 12:02:53', '2025-02-24 12:02:53'),
(8, 12, 3, '2025-02-27 08:11:57', '2025-02-27 08:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_10_074151_create_job_listings_table', 2),
(5, '2025_02_10_170728_add_fields_to_job_listings_table', 3),
(6, '2025_02_21_162439_add_avatar_to_users_table', 4),
(7, '2025_02_22_083513_create_job_user_bookmarks_table', 5),
(8, '2025_02_26_080345_create_applicants_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Gw2JL4j91x6kWKeydVFEKq4EeyG9cTXNT7jgStvv', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid2dPRlNhbUZiQkZ4bFpzb2F2TTQxakNoMjN1djNjVkc5Skx6WGJaVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O30=', 1741015233);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@test.com', NULL, '2025-02-24 02:39:34', '$2y$12$.3cgfsVPjyDB6/TVWrafre/LuTYh4zz8DzI4DXm5cNR3HkT.eXLZS', NULL, '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(2, 'Valentina Hyatt', 'owindler@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'ZXG5uvgdE1', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(3, 'Prof. Mekhi Thompson', 'kaelyn51@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'x0XIXljFTZ', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(4, 'Ebony Monahan DVM', 'quigley.kellen@example.com', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', '4gRw8HLaWA', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(5, 'Novella Daniel', 'teagan.yost@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'gGmWuypeIO', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(6, 'Seamus Hansen DDS', 'jazmin.bergstrom@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'f634ECNG6r', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(7, 'Marta Kshlerin', 'klein.franco@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', '75GYjoTeJW', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(8, 'Rasheed Heathcote', 'mckenzie.margie@example.org', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'YEFlN0TCBQ', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(9, 'Miss Elyssa Nader', 'vkunde@example.com', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'b77YCmQAiG', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(10, 'Don Ritchie IV', 'rippin.onie@example.net', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'PKa3uMNaGE', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(11, 'Carlos Kling', 'emiliano.harris@example.org', NULL, '2025-02-24 02:39:35', '$2y$12$luKhL3IkSFEadhCWHRIUieC4MX963ln5Nh2ndsLvAdKUlqr3AjC6W', 'yRyVBP4bRT', '2025-02-24 02:39:35', '2025-02-24 02:39:35'),
(12, 'Daksh Joshi', 'dakshjoshi1355@gmail.com', NULL, NULL, '$2y$12$tlKo2NdDFBpatm4AYfX3POVo.oaRTsDwzqs/EjjrIC1ufFtlBlFdu', NULL, '2025-02-27 08:11:34', '2025-02-27 08:11:34'),
(13, 'Daksh', 'dakshgaming1031@gmail.com', NULL, NULL, '$2y$12$VroqP5Mluvk2w7zWKgML4.ydhHQkuQsA8Yge9yWZImDrJhWD/74uO', NULL, '2025-03-01 09:32:07', '2025-03-01 09:32:07'),
(14, 'Alpha', 'abc@gmail.com', NULL, NULL, '$2y$12$QU6abMiCidzJotiWpMCJ8ev/h4Enu2O.m6rTfR2C5AW5S2PvQbEpS', NULL, '2025-03-03 09:50:19', '2025-03-03 09:50:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_user_id_foreign` (`user_id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_user_bookmarks`
--
ALTER TABLE `job_user_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_user_bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `job_user_bookmarks_job_id_foreign` (`job_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_listings`
--
ALTER TABLE `job_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_user_bookmarks`
--
ALTER TABLE `job_user_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applicants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD CONSTRAINT `job_listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_user_bookmarks`
--
ALTER TABLE `job_user_bookmarks`
  ADD CONSTRAINT `job_user_bookmarks_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_user_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
