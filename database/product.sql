-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 05:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `total_price` double(10,2) DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `product_name`, `product_quantity`, `total_price`, `product_image`, `created_at`, `updated_at`) VALUES
(9, 2, 33, 'Galaxy M30s', 2, 70000.00, 'img2.jpg', '2020-01-29 19:50:57', '2020-01-29 21:50:25'),
(10, 3, 33, 'Vivo S30', 1, 10000.00, 'img3.jpg', '2020-01-29 19:51:00', '2020-01-29 19:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_users`
--

CREATE TABLE `local_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_users`
--

INSERT INTO `local_users` (`id`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'rahul1@gmail.com', '$2y$10$SWwwgt2/zR0xcYexvChNzOK6kguHzg3DVU1a.Dt4wdXQjumt2Jekq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDljNjg5YjhmN2FkMGRkMTE0OWU2NmY2ODMyZDFhMzY5ZGNlMzExOThkNGM4MGRiNDY2ZDk1OWM4MTIxODZlNzk4ODJlMzMyODY4ZTkyMzYiLCJpYXQiOjE1ODAzMjc2OTksIm5iZiI6MTU4MDMyNzY5OSwiZXhwIjoxNjExOTUwMDk5LCJzdWIiOiIzMyIsInNjb3BlcyI6W119.bQeuJfhuhA64s_tmqIk58wuxVVRGOLq4DqRCf5nxuNSmdcfaTWFmMdKkhoRVTjhLNMlGBmnXSVBxHYrApVCUkay6XyUB8NJR6g4l5Dtgvdzzim52E0hxxrMYvjhzj1QXFe2JHi5RKNbhv5KMd_Kcgdhaq4xHIVQB1jYigso2y9HS0TLyYHr_9I9Z1xiQ34hoEqwxBHdfUEWgQrBmo3_nmcocumP5zNUQhSa8yqSN0v3Tl39AxRI04AYsgfx7LJpAFbb5Sj-7BcLlfg8aLfJ1o-nyvIVU50nhnFPIQXu3aaJ67AobrAW3K_usC3KG7LsgJz2IZHByBRm-9T2mxn7JFWuw-vIc5yDaXzGRMClUwh3MUHGIzSZ3u3cxhGjs4HfwqjBstAM39qsuofoqnwGMNm70BVWBCo5fmbsdeg8MmyfHBUV2Jua8590OXY9qtYaqUSjJSZyhJ_zXJQnAOMS1VVo5kS5WFbTdjEG3Ism1c2b-Rxw9yWEuEj0hZGNV7fxh9TlqodlJx2cFwDn0432HspCvv0bDecfMWrdLmBBy6iCjq2cEnqz4nMpVX55ijngN01PrThz2iPDIusziBZR6_0QJdQv3p3bRPvPDpuFAj9IXq659CrgW4xksFKUH7y6cnWEhCsTVV9NHjgbsI8Hm40xU20ADcW1Hrt-Tw1iqosY', '2020-01-29 14:24:59', '2020-01-29 14:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_01_16_204241_create_lcmdatas_table', 2),
(10, '2020_01_16_205505_create_lcm_methods_table', 2),
(12, '2020_01_17_214812_create_local_users_table', 3),
(13, '2020_01_29_133310_create_products_table', 4),
(14, '2020_01_29_134839_create_coupons_table', 5),
(15, '2020_01_29_145329_create_promocodes_table', 6),
(16, '2020_1_29_214812_create_local_users_table', 7),
(17, '2020_01_29_151033_create_product_tables_table', 8),
(18, '2020_01_29_210501_create_carts_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0080f79df1ed72a337dcf8676b79c6c4fd2e3373e28e0f035caacf80052b689489b7e39128caf6b1', 25, 1, 'authToken', '[]', 0, '2020-01-18 12:24:45', '2020-01-18 12:24:45', '2021-01-18 17:54:45'),
('0190b9d7af2eabdfd724b590a0c459f27e3750be7505b1a13215c66619619a390473beed1b5e2f94', 27, 1, 'authToken', '[]', 0, '2020-01-18 07:45:38', '2020-01-18 07:45:38', '2021-01-18 13:15:38'),
('0193c115481bb57b3b26002ff1eac81193c89a3131b4711f98758c5d58be43bfde5ab6c1a39b7e07', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:22:43', '2020-01-17 08:22:43', '2021-01-17 13:52:43'),
('01a50c2c5dea0f9a277873994ef28d526562b4df1fb466265aea75b879bab3e4a5cb7960706ff9c6', 29, 1, 'authToken', '[]', 0, '2020-01-18 08:04:27', '2020-01-18 08:04:27', '2021-01-18 13:34:27'),
('03908c51eb5e6e5eba16dc319fc159307a020d9bf8990bf18b2904348e8647e33a9e156f4d18bc08', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:10:00', '2020-01-17 13:10:00', '2021-01-17 18:40:00'),
('06bdbf0f219bef3bd989ee840bbcf3f74bf74dce4ce57183947d6728d7bbcb9bbfa25dd3ebdb96df', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:52:06', '2020-01-17 06:52:06', '2021-01-17 12:22:06'),
('075a63e9fbfd70c4e993ebc0e2236ed9d192ead9b1b58e7cc2681210a028307c88ab80a2d7736547', 20, 1, 'authToken', '[]', 0, '2020-01-18 07:33:22', '2020-01-18 07:33:22', '2021-01-18 13:03:22'),
('08eb42aeefd6e07e1b7315cdf79f2a1f9599949c68888ab58247a6e4235f0fb2bbff507d91b7aad6', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:49:14', '2020-01-17 06:49:14', '2021-01-17 12:19:14'),
('09a231df24dbac0130c0ff9bf4595364aac86ced79c6c29644871d7c3001ce404bbfd50d67ca833e', 26, 1, 'authToken', '[]', 0, '2020-01-18 07:48:44', '2020-01-18 07:48:44', '2021-01-18 13:18:44'),
('0a2b182707f284b231a333b2024016061b543c2c7fdded402f6784f5202cc5b6eab006ef6e696783', 2, 1, 'authToken', '[]', 0, '2020-01-16 14:26:34', '2020-01-16 14:26:34', '2021-01-16 19:56:34'),
('0a519a1082c24c4d71cf9ec9b00efdfa662148f83bf2e05ed16e30417b8520cf0f8ab00dad63e177', 19, 1, 'authToken', '[]', 0, '2020-01-18 07:30:54', '2020-01-18 07:30:54', '2021-01-18 13:00:54'),
('0e2745ab178cd5b7e212608ee441ab63935939d8d32eefb9e4280ad634728ac13fc1d15e566fbf84', 30, 1, 'authToken', '[]', 0, '2020-01-19 15:12:08', '2020-01-19 15:12:08', '2021-01-19 20:42:08'),
('0f8b2fb8c767c82e31808021892fc6e47c0b105221c3744e994de45ebdef20bba5b605474f23c497', 2, 1, 'authToken', '[]', 0, '2020-01-17 08:22:51', '2020-01-17 08:22:51', '2021-01-17 13:52:51'),
('1182f89c04ee301d45df0061e3caf74cd13f0f85efd9edb08a6f3a97f29bacad1b808ab2abd51083', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:22:51', '2020-01-17 13:22:51', '2021-01-17 18:52:51'),
('12c518a8046db4613432482d0d8622fae967209380bf5240542d8c88710b9f7f05060fd59323cb1b', 22, 1, 'authToken', '[]', 0, '2020-01-18 07:35:53', '2020-01-18 07:35:53', '2021-01-18 13:05:53'),
('1421505cd1335195d374f8e6cba7693b1c277467c77fcffe3a65f66dad70f8748f1b0e469b66adab', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:10:09', '2020-01-17 13:10:09', '2021-01-17 18:40:09'),
('1803a62bd933caa594b9cd3e3674a23543d113cc206e82e32c5d55e3363fee614a59bd1fdad73777', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:09:54', '2020-01-19 15:09:54', '2021-01-19 20:39:54'),
('18fb9082fbea08330e7946f208f83a75d9d6c354a556cbb3c63b346f6bd23a044392cafa145004c3', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:43:54', '2020-01-17 06:43:54', '2021-01-17 12:13:54'),
('19c1b5eec2b5e546a791524fcfe6d11cf0cafdb2a1ae0b462a05d3473738aa81b6dd27f08e8ebd21', 6, 1, 'authToken', '[]', 0, '2020-01-17 16:49:15', '2020-01-17 16:49:15', '2021-01-17 22:19:15'),
('1b8cdf4fd3ce81ae7bed787e6e13dc29d26bacac5ef6237672ab9e498741d3ecfa6bce331e35d648', 33, 1, 'authToken', '[]', 0, '2020-01-29 22:01:22', '2020-01-29 22:01:22', '2021-01-30 03:31:22'),
('1bf75301c76296666fb92fcf15b5ef52d3c729cce5aec6cd253461390b53bd5acfcd5d4432d145d6', 10, 1, 'authToken', '[]', 0, '2020-01-17 16:56:08', '2020-01-17 16:56:08', '2021-01-17 22:26:08'),
('1e02a15ab5fb3f6e687dcc8ef4d55d26d27d8f56d300ee6362781006d911d2e56ac10ccc359e8819', 24, 1, 'authToken', '[]', 0, '2020-01-19 12:48:01', '2020-01-19 12:48:01', '2021-01-19 18:18:01'),
('2179ab8e595c85dfbe11aa7c717cfa0d9f02cdf390d8d1ef5f890ad8b28e7c79a7894b8002d3cc40', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:45:20', '2020-01-17 06:45:20', '2021-01-17 12:15:20'),
('21ee3eed133b912511b39a498c134053172fa20935a201902cfb945f29e75d1401ffbf49e99ab0a6', 17, 1, 'authToken', '[]', 0, '2020-01-18 07:29:00', '2020-01-18 07:29:00', '2021-01-18 12:59:00'),
('253f92e9c15da84926b90f6b4fff7a18848a02c519a37cc5c56e532da1986effd9c85793d7cd2fd8', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:51:38', '2020-01-17 13:51:38', '2021-01-17 19:21:38'),
('26152619034050b18d37ae2d7d6c5473a359df070f8c8433f73975f729c629e0c1bafa3bb7b73f5e', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:34:30', '2020-01-17 15:34:30', '2021-01-17 21:04:30'),
('26ee95fd951de85c95cad76c7b3618be77a188e7a74f246bf8613a40717216f32c6eefc3af763817', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:38:15', '2020-01-17 17:38:15', '2021-01-17 23:08:15'),
('27f9d69a15060c4cfcd59e9a9e2274408d398928a049306dabddd7fd85cf3ddc879aead7c927010a', 2, 1, 'authToken', '[]', 0, '2020-01-17 08:20:31', '2020-01-17 08:20:31', '2021-01-17 13:50:31'),
('2838eed07d886d779c93b58f06f33d85effa73116cdff85044f32e80a911a915bd2c12b9af8e0c26', 2, 1, 'authToken', '[]', 0, '2020-01-16 14:19:28', '2020-01-16 14:19:28', '2021-01-16 19:49:28'),
('2a57387e5a5f887dbeea64a46d6dcfee0d64c1d9cda251f9493c1038a5a89c2cb16e754938595a39', 13, 1, 'authToken', '[]', 0, '2020-01-18 07:23:08', '2020-01-18 07:23:08', '2021-01-18 12:53:08'),
('3117228c45584012caca40d2a2080662b6ddfc48a7909fe5dc586251d3632edec3b6b489c868f088', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:38:53', '2020-01-17 15:38:53', '2021-01-17 21:08:53'),
('337267848c17c693ad70fe02c7e1c3d2c39117a6ed9f92155ee8517e6fe50774098ac2844bde70e2', 28, 1, 'authToken', '[]', 0, '2020-01-18 08:03:54', '2020-01-18 08:03:54', '2021-01-18 13:33:54'),
('3513775f1423726b159a61ceb3461d827dd85d90247cd4c781d1ceff7f6a04f3de751da661a271ea', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:11:08', '2020-01-19 15:11:08', '2021-01-19 20:41:08'),
('358af1ec2c99d1e154bb93a447742d0c454b0cf5a645c36a101edbc5a407e86a520c1688e8fb47b1', 15, 1, 'authToken', '[]', 0, '2020-01-18 07:24:21', '2020-01-18 07:24:21', '2021-01-18 12:54:21'),
('35a820440453da9129081ad75dec2dca24c226a16c33bf9f9a5a06f35aeeccae3f9615eefba80381', 10, 1, 'authToken', '[]', 0, '2020-01-18 07:56:46', '2020-01-18 07:56:46', '2021-01-18 13:26:46'),
('36640a68431971c3a37680717f7bceb13c1c983395503eb6244b7f45739509f853c77ddad19bc493', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:07:10', '2020-01-17 17:07:10', '2021-01-17 22:37:10'),
('3673f270b1b954a7a9348595f1ea849a18707df394d5a1cc1da3111280ad8b65b7a23cac1e6f06de', 14, 1, 'authToken', '[]', 0, '2020-01-18 07:23:45', '2020-01-18 07:23:45', '2021-01-18 12:53:45'),
('386c901327bb30e916fac72074c161e64e36a67149be9946ebd975b729d0b646a4485281a8ed822b', 10, 1, 'authToken', '[]', 0, '2020-01-18 07:56:14', '2020-01-18 07:56:14', '2021-01-18 13:26:14'),
('38efbb56749d53750a2c8c8be6736abe596d35ff88e46c940b74d286c0524629c7293dc8f304da62', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:35:58', '2020-01-17 13:35:58', '2021-01-17 19:05:58'),
('3e8374f7ec2098bb5505782b86b1ba20f12985a8addd69bc0604c62f2335f755ca238faabb3aa759', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:12:42', '2020-01-17 12:12:42', '2021-01-17 17:42:42'),
('3fa87dba5a1a89a370e570d234269201f790a7f9cfb62e1351be2d095086983e6d6c278e758e3e55', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:23:32', '2020-01-17 13:23:32', '2021-01-17 18:53:32'),
('414611461384cacdc8fbba29624ecb9f6ad801fd026c73a1ebcf86d546b9e828dacb6aa90af9974a', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:32:49', '2020-01-17 13:32:49', '2021-01-17 19:02:49'),
('414e3ad8e85aba5882f39cf3aae16c1f65ae0139a3f3a626c15806c13a2f809fe2b4478a902566da', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:11:21', '2020-01-17 15:11:21', '2021-01-17 20:41:21'),
('4165b85f3c3e0aab084aaf3055d01edf3ed7e93900a6c1ecf119f0ca5b9fcecb7a5b72290f8cda5d', 27, 1, 'authToken', '[]', 0, '2020-01-18 08:02:39', '2020-01-18 08:02:39', '2021-01-18 13:32:39'),
('41a8cd8e97f6e58663bceb76355dfe544bbdcf2bf8fa15f4ec9b2838678347e4372efcadc78e7715', 10, 1, 'authToken', '[]', 0, '2020-01-18 08:02:12', '2020-01-18 08:02:12', '2021-01-18 13:32:12'),
('41e9ed60e90b33fedeff372c4b7f98f1b998fa802d3a629e75345784189574faf7cbf18bef55b2ae', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:33:49', '2020-01-17 13:33:49', '2021-01-17 19:03:49'),
('442429ea1a2fbec50cfb6f6ce8436dbeb4be94cb588b2469c7c372a7b67a9a647ba1c49216897f42', 19, 1, 'authToken', '[]', 0, '2020-01-18 07:31:59', '2020-01-18 07:31:59', '2021-01-18 13:01:59'),
('4443f51d10c626a6096c75dd58547535d66bc579ae393ba07daca7d6b67c9e9dfb2756488577cb81', 26, 1, 'authToken', '[]', 0, '2020-01-18 08:02:53', '2020-01-18 08:02:53', '2021-01-18 13:32:53'),
('444c109bad3a275a5e2d07e3f348433b96409ef4c3bfe93839a595719f928a1e37a6102d8abb166e', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:41:01', '2020-01-17 12:41:01', '2021-01-17 18:11:01'),
('4657baef436aadb6d23106463e5c01e33a3c21f5f6301b3a4e3a514ee4bc0dcc5305f1f0d4356d0d', 2, 1, 'authToken', '[]', 0, '2020-01-17 07:07:48', '2020-01-17 07:07:48', '2021-01-17 12:37:48'),
('47b0ebfad34d0dcd58d00f7c0340d6c49bf47cfe5e4909a5562afe42f758b9c4c66bdcaa9caff6c8', 23, 1, 'authToken', '[]', 0, '2020-01-18 16:41:13', '2020-01-18 16:41:13', '2021-01-18 22:11:13'),
('47ee1defe3dc6d5a2bb47827b2140dbe3a2b4ecb86bb462e53ccb06198711a678405fe57d1d841cc', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:35:50', '2020-01-17 13:35:50', '2021-01-17 19:05:50'),
('49066a0078be198f26466b2849efb18ff5046022c96b0d00fad6023bb60db355ea1d181caabf6e73', 24, 1, 'authToken', '[]', 0, '2020-01-19 12:47:09', '2020-01-19 12:47:09', '2021-01-19 18:17:09'),
('49c689b8f7ad0dd1149e66f6832d1a369dce31198d4c80db466d959c812186e79882e332868e9236', 33, 1, 'authToken', '[]', 0, '2020-01-29 14:24:59', '2020-01-29 14:24:59', '2021-01-29 19:54:59'),
('4b228c3b25d37d04ab847aa9084ae29a2c275d22f8af8185d91c3843c73b9cee02bbb18499469ead', 10, 1, 'authToken', '[]', 0, '2020-01-17 18:02:56', '2020-01-17 18:02:56', '2021-01-17 23:32:56'),
('4b452926b49292a515f06df9e41c59698523e76b1036b9d2c9fb2230b4696a29a8a18ad143db325c', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:33:01', '2020-01-17 13:33:01', '2021-01-17 19:03:01'),
('4ccab62ee5612adb1b023b7b6010c3c2354bb9b91ea92e022f7c7b38a4dfc848c872c0544283dd2f', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:46:26', '2020-01-19 15:46:26', '2021-01-19 21:16:26'),
('4ed9205bf93204f8a0277e357883a29748916625a0a1f513efefb1be7de4c21417938dd71dec4c92', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:59:01', '2020-01-17 12:59:01', '2021-01-17 18:29:01'),
('515d85a569d4e4e4bcf9dc75be7ae6c063821a627066581e435e74cdba2d3139344207509aa91462', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:28:10', '2020-01-17 12:28:10', '2021-01-17 17:58:10'),
('547c1bf464231ecca68d01958697a9c89d89f6232421fef3d8c0c7efd7a758a015026804ca6879c1', 10, 1, 'authToken', '[]', 0, '2020-01-18 07:57:51', '2020-01-18 07:57:51', '2021-01-18 13:27:51'),
('567c36466f1367960c59af9c1f47a3eb7bccca6a9965f3e8c077cffba0e9b1164af3dbda36abab09', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:32:09', '2020-01-17 13:32:09', '2021-01-17 19:02:09'),
('5865d8927cea32b636cd45be03af9c2ee1c040b092c3f3359e85c60bed2ddd80ffe0ac1a5717b54b', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:36:53', '2020-01-17 15:36:53', '2021-01-17 21:06:53'),
('5f88dcd18992e406f7fd08bb09a70ebc8790936fb6d6e176ac2b7f03952fb59c2f12e7860f6a4334', 2, 1, 'authToken', '[]', 0, '2020-01-16 14:25:42', '2020-01-16 14:25:42', '2021-01-16 19:55:42'),
('6044864c22f151950d1a2fc979012a278f828aa70a3629d741aa4948d9438c3c3cc2f11083c1f59a', 29, 1, 'authToken', '[]', 0, '2020-01-18 08:04:27', '2020-01-18 08:04:27', '2021-01-18 13:34:27'),
('62b352c153db116f117038edb18fe229549edcc09758b1e0b8204289a2e6d36c5a2b0e4f25d91261', 27, 1, 'authToken', '[]', 0, '2020-01-18 07:45:37', '2020-01-18 07:45:37', '2021-01-18 13:15:37'),
('62c4fea930d9f0f0c0d440ef148c0fb0bee04633789345a4e0b299d855aa2b5decc577aa267b619d', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:50:13', '2020-01-17 13:50:13', '2021-01-17 19:20:13'),
('6394e9471663332b03a8bec30f68f6b8e93d2afe99b2c910e867f23da05815fc214e55977da48a1e', 31, 1, 'authToken', '[]', 0, '2020-01-19 15:46:44', '2020-01-19 15:46:44', '2021-01-19 21:16:44'),
('6553f201935e63e3a5913844673470df9f5beae961738134dd7d1e724cfe12f218cee70b70326265', 7, 1, 'authToken', '[]', 0, '2020-01-17 16:51:10', '2020-01-17 16:51:10', '2021-01-17 22:21:10'),
('67a8c02100bcd8eed17f90d535f6595ad920bfa927a477160d1951a19c2c7f9c47d8687df179f671', 10, 1, 'authToken', '[]', 0, '2020-01-18 07:57:01', '2020-01-18 07:57:01', '2021-01-18 13:27:01'),
('695dbe89d40ccd09c5a70e93c369f6503706429d2307114dc7083343b8fb0a11ce0343ba6497a2e7', 26, 1, 'authToken', '[]', 0, '2020-01-18 07:45:06', '2020-01-18 07:45:06', '2021-01-18 13:15:06'),
('696ccfd1807b280b0f43d2ef0bb0c4a58ed0d1c390f265f108aa0245ad4be1f4e9141d6c3d16b7f0', 5, 1, 'authToken', '[]', 0, '2020-01-17 16:46:55', '2020-01-17 16:46:55', '2021-01-17 22:16:55'),
('6ac6deaa12508c8170bf37a4fc5d1c52cefb61d8e19b5183cee2d6f88d1b6d30492aca9d490b66ee', 25, 1, 'authToken', '[]', 0, '2020-01-18 07:38:22', '2020-01-18 07:38:22', '2021-01-18 13:08:22'),
('6afeac97b04e2042fd6a7018d0f74e81c87b74aee89c1654192f3e95d357eb8b81b68e9530457cc2', 1, 1, 'authToken', '[]', 0, '2020-01-16 14:07:45', '2020-01-16 14:07:45', '2021-01-16 19:37:45'),
('6c0e4fb455a404552ba32f50bd64bb7f849b006c514456d2cb630e180d4c6f7c816bdcbc89f1ded5', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:10:39', '2020-01-17 15:10:39', '2021-01-17 20:40:39'),
('6d59e337ab7e0777d313fde32d2d987bda5a1661e54952bf002ebc94673974ab99e32034535322c9', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:21:14', '2020-01-17 08:21:14', '2021-01-17 13:51:14'),
('6e62a9d8c0b2ece6252aa8497f8dbe3bcf817364fa31d1526deff902e1f2abe250d0f801d0123385', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:08:51', '2020-01-17 08:08:51', '2021-01-17 13:38:51'),
('6eaa698d425965b26508a2deed97f433d4565a62bffd49c4ea3adc16d62013eb3f68b3a340e3a82d', 11, 1, 'authToken', '[]', 0, '2020-01-18 07:16:52', '2020-01-18 07:16:52', '2021-01-18 12:46:52'),
('6ff61566fe9f9b5a050a2b8b2ceca89cb274c011e4d158aa16976c90b8332b9485916fbcd79ad857', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:03:51', '2020-01-17 17:03:51', '2021-01-17 22:33:51'),
('70cbb63d543b107ceda4ec7ee9d3570313823ab3a61a7c66aeff3630d432abdeca786a2a0295363b', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:11:53', '2020-01-19 15:11:53', '2021-01-19 20:41:53'),
('7741e1cc82a486a3b9a24ed74d35a73376bd3fa6adc988a7c5b67efd46631cd5cdf9bf3fbaa3ae6f', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:24:16', '2020-01-19 15:24:16', '2021-01-19 20:54:16'),
('77bbde0c160a72f70ebb537b7c111107f8eb44984cdde4270d19a0d29435973fdd09b94309045d63', 24, 1, 'authToken', '[]', 0, '2020-01-18 07:37:43', '2020-01-18 07:37:43', '2021-01-18 13:07:43'),
('782a7d709ae7da5d5a130acf6cd41886e0b7e40a7aa4e4983ed7d1e25dd4584fbac78c04830e2cc7', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:36:39', '2020-01-17 13:36:39', '2021-01-17 19:06:39'),
('794d221ce4b4432d6d3756ec4785428d70d128615e8a6b7c5a99d85bc5009f082adc5ae43ca35100', 24, 1, 'authToken', '[]', 0, '2020-01-18 16:55:36', '2020-01-18 16:55:36', '2021-01-18 22:25:36'),
('79b49048d5a27deef45786a4175342ab420d76607bc7bd8a9828ae5fe290df3729ce235177723f66', 30, 1, 'authToken', '[]', 0, '2020-01-19 15:12:08', '2020-01-19 15:12:08', '2021-01-19 20:42:08'),
('7acbbb6151e1c351ecd475ff87d6e2bfac53b2281801dc4d9d5a1eab96d93dcb7d0f5bd2a409eaad', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:48:14', '2020-01-17 06:48:14', '2021-01-17 12:18:14'),
('7c09feb7f54e3002910833b51286853859f1d639c76207f4369dfadb5f8341a0dfaefdc45c0cc42b', 16, 1, 'authToken', '[]', 0, '2020-01-19 15:05:38', '2020-01-19 15:05:38', '2021-01-19 20:35:38'),
('7c1dd69f35d06a7b7f4b37c903a8fcc6c1b8517d29f5273652b027f68ba04799ee0b2d6760ddae19', 26, 1, 'authToken', '[]', 0, '2020-01-18 07:45:06', '2020-01-18 07:45:06', '2021-01-18 13:15:06'),
('7ca87aa66905d289992c61e0e49114fe916beb5c2e12d74a0a5f16e11272177f2a2b8614f51674e3', 12, 1, 'authToken', '[]', 0, '2020-01-18 07:20:39', '2020-01-18 07:20:39', '2021-01-18 12:50:39'),
('7d8afc0b2331b0bcc2152fcf0ca1bc4e14d7ab04d7e607a002eff7a59428c0fca4257180bbfff71c', 24, 1, 'authToken', '[]', 0, '2020-01-18 07:37:44', '2020-01-18 07:37:44', '2021-01-18 13:07:44'),
('80f4f900612d21cb329808b44807337efea6e0da17a539c1a23eaa19c6b049772ffc6fb229720439', 10, 1, 'authToken', '[]', 0, '2020-01-17 16:58:17', '2020-01-17 16:58:17', '2021-01-17 22:28:17'),
('8159500077ef0e9849fe5c83c6dbf5d65d0eb84a8d5fc8bfd05bde7d66ce31ec39c9dfd8803d5b2b', 33, 1, 'authToken', '[]', 0, '2020-01-29 14:24:59', '2020-01-29 14:24:59', '2021-01-29 19:54:59'),
('82cbe6eb4e9b275978f41be30c61fc2ba2f8073fc92f7d9c8a6f1a5f9899dd29cd8ff17fbd9c3c4c', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:22:09', '2020-01-17 12:22:09', '2021-01-17 17:52:09'),
('846e8fd883b27219172700013d031a5d442b681d6d41e0707c8c65f545c726510d18d970c81bbd99', 25, 1, 'authToken', '[]', 0, '2020-01-18 16:59:04', '2020-01-18 16:59:04', '2021-01-18 22:29:04'),
('85a1930f2afdd33b2dc1c3ecc67383b89dc58287a6a7ecbf47bdec76b522a49f7de9a346d7a97878', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:17:10', '2020-01-17 13:17:10', '2021-01-17 18:47:10'),
('85f0bf1f7545724060f553fa84bb37d00f023025282ae9d0be474048ea8071be0d3f53a3268db48b', 23, 1, 'authToken', '[]', 0, '2020-01-18 07:37:02', '2020-01-18 07:37:02', '2021-01-18 13:07:02'),
('8683ea36d652161ff97e415b3d2eb0df9fb333edeb3ab4386fb45b93afb2bbb751d46d0f01180c30', 15, 1, 'authToken', '[]', 0, '2020-01-18 07:24:21', '2020-01-18 07:24:21', '2021-01-18 12:54:21'),
('87faa32cd4f96eec84e0099203f4f9092caf336f064ccdb69a207005678bd66ad301e15adb462762', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:34:46', '2020-01-17 17:34:46', '2021-01-17 23:04:46'),
('892da244ac526447a5651b9aafe3e79009ad6028bb60ed6e2dda235681ebca6caaf4268a5762a59a', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:38:02', '2020-01-17 15:38:02', '2021-01-17 21:08:02'),
('8a3300c0eedd269b3ff84618035613be793ad3db0e1a91db8290f03913d634e2c6ba08a0e62f93b2', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:22:25', '2020-01-17 13:22:25', '2021-01-17 18:52:25'),
('8a42a63c1b41151a723c51afa5da2e9a07cabcc29e4f2be000e2400b23fe8bc7cd74f0faf35a0c8c', 21, 1, 'authToken', '[]', 0, '2020-01-18 07:34:50', '2020-01-18 07:34:50', '2021-01-18 13:04:50'),
('8aecfd2e6acac09415c25f0841354b39f3af5567db30eccacd156e80e95b3b6e437664d7c2376c11', 25, 1, 'authToken', '[]', 0, '2020-01-18 12:24:15', '2020-01-18 12:24:15', '2021-01-18 17:54:15'),
('8bf3499c3844340d19b36c4f9961ceb55765acd12ff5aade36bae40344d4d17a4b97d5c17db3fad8', 28, 1, 'authToken', '[]', 0, '2020-01-18 08:03:55', '2020-01-18 08:03:55', '2021-01-18 13:33:55'),
('8df3b9a0458d22eba8125bb5925001ebfd0d7343e8d3143b4330e74bb004b278ea2e6eed7b09d109', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:08:52', '2020-01-17 08:08:52', '2021-01-17 13:38:52'),
('90d9f0a4454d8789145e8c06311bb953e3bbe9bd5f75dc6be569e901c86933cb43a49b05984817a9', 24, 1, 'authToken', '[]', 0, '2020-01-18 16:54:50', '2020-01-18 16:54:50', '2021-01-18 22:24:50'),
('914ccdf9a1036ccc82a7c2a2acc99e25d0bc1a7fb49f2836e12bb57accefede5aa854220ff0c8e6d', 16, 1, 'authToken', '[]', 0, '2020-01-18 11:42:41', '2020-01-18 11:42:41', '2021-01-18 17:12:41'),
('9191d39211d8e8c7b388d116860fc0b80747ce291144f0fae53ae808bd464ef1615fd0739c0dd852', 10, 1, 'authToken', '[]', 0, '2020-01-17 18:18:54', '2020-01-17 18:18:54', '2021-01-17 23:48:54'),
('91b4e395896bfb6982bc218199674558b931937438c5fc22109db9eccbebac2b67ac07e6f00c8cb4', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:20:14', '2020-01-17 08:20:14', '2021-01-17 13:50:14'),
('9410d7f61fc4e3c614098da349c83a3f9ffd6a332b0bc961b22df220524f8a71b311f1768e5cd876', 23, 1, 'authToken', '[]', 0, '2020-01-18 07:37:01', '2020-01-18 07:37:01', '2021-01-18 13:07:01'),
('96eb9a1e4d0a763563328f95c563127f8f2e09edc019a36a71dbf70bf7aa744f2d9dde30050f7535', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:42:48', '2020-01-17 06:42:48', '2021-01-17 12:12:48'),
('97542dd73cf236142e299bfa5280313ba938b466f05be4ef467e8b6f81513ccac3d48acba543a0aa', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:31:18', '2020-01-17 15:31:18', '2021-01-17 21:01:18'),
('9a29a54f15f0c90f4015eba8fc6caca2a99cf8e54bcde497b16800b74b629235ea80770010d78884', 8, 1, 'authToken', '[]', 0, '2020-01-17 16:53:07', '2020-01-17 16:53:07', '2021-01-17 22:23:07'),
('9c99e0f64d625e0014c64e9c00f474ee276c1ab074eae0ad1d086845b570dbe8de372ec5b7aebe42', 16, 1, 'authToken', '[]', 0, '2020-01-18 07:24:57', '2020-01-18 07:24:57', '2021-01-18 12:54:57'),
('9dbaeda2e9aeac1316ddf2c00a52c01ccaf3d29810793d8770531ea331a244924c0c5ab7c945ab02', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:36:34', '2020-01-17 13:36:34', '2021-01-17 19:06:34'),
('9fca5084e428059ee202593258d73700eb3678904cbdd1dac07c584522d373e0a0887fc479da21c6', 2, 1, 'authToken', '[]', 0, '2020-01-17 16:08:23', '2020-01-17 16:08:23', '2021-01-17 21:38:23'),
('a0252caabcbe4274a43b4d1f0809281ea99812989e4523596b6fce36c37a057c47ef6bf5edb1f6b3', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:12:52', '2020-01-17 13:12:52', '2021-01-17 18:42:52'),
('a0e073e3b0ebbbb7aac0017a5455d262c5d3218a4238f4637a82e0bc6c548ab330539646d01c9379', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:45:40', '2020-01-17 06:45:40', '2021-01-17 12:15:40'),
('a1305bd85780ea95185a42a05c13571eefbccdcd57891df848c265ef26f64605a359dfbdc22f40be', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:17:42', '2020-01-17 13:17:42', '2021-01-17 18:47:42'),
('a25036da324341cc2849aeb3026f500a87c6670b219e9ff2786b80e8bf571f043ba9bf32c99d3a48', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:15:10', '2020-01-19 15:15:10', '2021-01-19 20:45:10'),
('a339d43140919350a9b9b5d2cb00dd62958e8fc9c105b89e7d49d4a032c50af4d9180f2c7b0d2047', 14, 1, 'authToken', '[]', 0, '2020-01-18 07:23:45', '2020-01-18 07:23:45', '2021-01-18 12:53:45'),
('a54b8ce4970bc911c639d2aee16ba92f3f68d18b6c525e2523f0ab5389e09cb9f09c333876578601', 10, 1, 'authToken', '[]', 0, '2020-01-18 07:57:05', '2020-01-18 07:57:05', '2021-01-18 13:27:05'),
('a5ed9921316f8fec8676d3fc07f7842bd6d0a9da60165e2518b5a30a5182089000a189be1d75bc4f', 9, 1, 'authToken', '[]', 0, '2020-01-17 16:54:36', '2020-01-17 16:54:36', '2021-01-17 22:24:36'),
('a8e4f050e2971a3e0f95883e4601de3c4ef283e4688ab02b69df1e4671b7fbb8c9c7e86c4cc69fef', 10, 1, 'authToken', '[]', 0, '2020-01-17 18:20:44', '2020-01-17 18:20:44', '2021-01-17 23:50:44'),
('af221b1df1bb13583455e3fa0deb080c8199be315c0e076fdd43e21bc1c1b68230e83a41a8907105', 26, 1, 'authToken', '[]', 0, '2020-01-18 07:47:15', '2020-01-18 07:47:15', '2021-01-18 13:17:15'),
('b00e175ca4b6860496c39c5bffafc8661641ac6d3d5bb60d0aa2c3aeada038ef47154ca79d10a25d', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:51:21', '2020-01-19 15:51:21', '2021-01-19 21:21:21'),
('b044fa72751537b7d30ae3f711304ebd9378520a977c44571a798bc93ec807cc547ee6cb089b7437', 12, 1, 'authToken', '[]', 0, '2020-01-18 07:20:39', '2020-01-18 07:20:39', '2021-01-18 12:50:39'),
('b091bf4df993715160b542e1cdd41f04404f55b5753aaea0419def19200ecdc94a0e3924852048fd', 24, 1, 'authToken', '[]', 0, '2020-01-20 23:53:50', '2020-01-20 23:53:50', '2021-01-21 05:23:50'),
('b41c0d8c6389627f0894a61b66f0966098fea786182e4452fa412edea8d277c98011129abae56061', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:45:01', '2020-01-17 15:45:01', '2021-01-17 21:15:01'),
('b440bc6aad1a11311b5dfc8fb8c5430b5a5f17c92c18f070e27dabf485c5904d398f50cd267f8e4f', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:37:45', '2020-01-17 13:37:45', '2021-01-17 19:07:45'),
('b909d2421bd33b572e6154883758ba1f64bedd537a848a02c8210f53c07005144f9722b03febb6dc', 24, 1, 'authToken', '[]', 0, '2020-01-19 12:47:10', '2020-01-19 12:47:10', '2021-01-19 18:17:10'),
('baf8b347199e4de11365fca62474d9b0f3c933265bfbb0e8085f3d2a8f547a4198f197ba8cfdaacd', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:05:03', '2020-01-17 17:05:03', '2021-01-17 22:35:03'),
('bfd1ae962226dca88c26de40ab9a236a19e431ea7d436d829eb41f8b07b56de0213cfd616b87a70e', 25, 1, 'authToken', '[]', 0, '2020-01-18 12:24:22', '2020-01-18 12:24:22', '2021-01-18 17:54:22'),
('bfe0907d6f2e2551359affe58eb516c3bf3cef21d1a1445d637fb2a94568c57e73bc26d9aafb6bce', 27, 1, 'authToken', '[]', 0, '2020-01-18 07:47:36', '2020-01-18 07:47:36', '2021-01-18 13:17:36'),
('c0a3b92268706659fb4ef30b4dc08ee1b8781809825a8b13029cd6a52e454b90fff06142874f28b5', 16, 1, 'authToken', '[]', 0, '2020-01-18 07:24:57', '2020-01-18 07:24:57', '2021-01-18 12:54:57'),
('c11954510388fa8fedf71af6b332591c7a12305fcb77cdf35f1934c994d6d08eaa119d882c58a30a', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:43:23', '2020-01-17 17:43:23', '2021-01-17 23:13:23'),
('c22a67d7b79c0e257164447ca0d46efb129dae2a6ab0e3db56de67b8538eb6596f5ab1b63f467129', 2, 1, 'authToken', '[]', 0, '2020-01-17 12:14:39', '2020-01-17 12:14:39', '2021-01-17 17:44:39'),
('c377dc428e2a63aebeb28ae195b9e6cd09eb91cbb3a767bf6f96a088b242d88aa92b9506045bb320', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:19:24', '2020-01-17 13:19:24', '2021-01-17 18:49:24'),
('c3f2b3c07e58f6ead199f15e3c2df77046f008adcfb1e21e2378a9871f216348e0e4f8a4821b47de', 16, 1, 'authToken', '[]', 0, '2020-01-18 12:24:37', '2020-01-18 12:24:37', '2021-01-18 17:54:37'),
('c94da1343aefecfa171b89c535d5ddfa8bd49802102ebeacc844f6030343dc4392faf697ca3b8d13', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:33:57', '2020-01-17 15:33:57', '2021-01-17 21:03:57'),
('c95b61dd140408a87e1d5d8260884a2e3a052e797f1050398a2c4b85dce2440dfb75cf8238d0a99e', 32, 1, 'authToken', '[]', 0, '2020-01-29 14:18:50', '2020-01-29 14:18:50', '2021-01-29 19:48:50'),
('c9d97288dc5069045cf8d0d3f1c897ae03128f6ae3e56181338c83cd0ef9ece3cf1df5f98f1b3542', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:34:09', '2020-01-17 15:34:09', '2021-01-17 21:04:09'),
('cbc2316db2a40f666fc0a17c533f8b5cf76d3e9ab5bdb225a01d92d427423dbd1b52d037a8063c2d', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:16:23', '2020-01-17 15:16:23', '2021-01-17 20:46:23'),
('cc08efd9a7e7ba365d4cd44c2e275817c2eccee620e338eca41f52abe9203a1cfa1ab9e7aa17341e', 13, 1, 'authToken', '[]', 0, '2020-01-18 07:23:08', '2020-01-18 07:23:08', '2021-01-18 12:53:08'),
('cdd5d20b5997ce80ec0104feac2467395710a48fb7671c8c3c67e4cfb57e6926a77d5dc7e9bb63c6', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:36:29', '2020-01-17 15:36:29', '2021-01-17 21:06:29'),
('d0bcb9ab5c0c82ad5bdc02b8e918e32ad60bbb26101d5ee4089bf476c42d168287e303708464b7ee', 10, 1, 'authToken', '[]', 0, '2020-01-17 17:01:41', '2020-01-17 17:01:41', '2021-01-17 22:31:41'),
('d235a18a31d34c7fc46833cec0bad72b5838bb3d0ddbf2cdeaff79230d8c485e3644a5ed07c18900', 10, 1, 'authToken', '[]', 0, '2020-01-17 18:14:54', '2020-01-17 18:14:54', '2021-01-17 23:44:54'),
('d23b3a11b35af0f4301aa9368cb47cba189484bf3f54d4ca65cd71699b69fa2881159e4817352e16', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:18:27', '2020-01-17 15:18:27', '2021-01-17 20:48:27'),
('d4f41da04c6ad1e76971b53e85420d76dffda685ee82f2cf94cd07aa3be34732677f5eb106f937ed', 10, 1, 'authToken', '[]', 0, '2020-01-18 04:10:41', '2020-01-18 04:10:41', '2021-01-18 09:40:41'),
('d523411ab6035d3b5c716c01dc5b5074fab54488e335a2065a4c3ec2a8349598da68d9733358fd7b', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:22:45', '2020-01-17 13:22:45', '2021-01-17 18:52:45'),
('d5f96a3804dfbce792a0af417f757bee0cabb1511c4f20bd4a2302a6a7d8b2dd0c2f8991fc548997', 4, 1, 'authToken', '[]', 0, '2020-01-17 16:43:10', '2020-01-17 16:43:10', '2021-01-17 22:13:10'),
('d8d4202d1f67d1567ec3f5243e45f2e73d14e4c045694b28f7b09a71c65bd3f83929dec8a85cff1d', 3, 1, 'authToken', '[]', 0, '2020-01-17 08:21:36', '2020-01-17 08:21:36', '2021-01-17 13:51:36'),
('dae05c17b45e40842fd25e3d8dca247e25c44e52df2e94a4ad5624b54b592ebe24a714412f584d35', 11, 1, 'authToken', '[]', 0, '2020-01-18 07:16:52', '2020-01-18 07:16:52', '2021-01-18 12:46:52'),
('e3d3c13495d528c60ea678e9a730d20810ce0bc85e13291147f09a363beced16187b0b51cb318398', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:48:29', '2020-01-17 13:48:29', '2021-01-17 19:18:29'),
('e4555b417f99e39eb2b72d8548960b37f2f285fddbdbdd7332966dc5e1c59f5769af968ed9cd9cfd', 2, 1, 'authToken', '[]', 0, '2020-01-17 06:33:10', '2020-01-17 06:33:10', '2021-01-17 12:03:10'),
('e564c8032f4af450b4231bac40a33f5c486da5095bd30b017bf4bd913ae706703312057a7a4e6e05', 25, 1, 'authToken', '[]', 0, '2020-01-18 07:38:23', '2020-01-18 07:38:23', '2021-01-18 13:08:23'),
('e6382a88c29997f259560136375f1866c430d4d830c4c2a7fc0e57c1608c819813ff0399fe1da889', 10, 1, 'authToken', '[]', 0, '2020-01-18 03:59:27', '2020-01-18 03:59:27', '2021-01-18 09:29:27'),
('e645e490e77304896dce93c57a3145de54f8503d8b45d208ee17a5e1fd52c3492e11935a22af2f81', 5, 1, 'authToken', '[]', 0, '2020-01-17 17:07:03', '2020-01-17 17:07:03', '2021-01-17 22:37:03'),
('e6da9ec85aaa9282533ebe0fbeab41470fd5d88930e5a7b1b350907dbdd25a4cdb8fe030e0330441', 31, 1, 'authToken', '[]', 0, '2020-01-19 15:46:45', '2020-01-19 15:46:45', '2021-01-19 21:16:45'),
('e70e32a5eefc8093e2054ae0b8e5720d7909c7244ffe51066af53fad430d2dfe3c64c20e92a9c02b', 2, 1, 'authToken', '[]', 0, '2020-01-17 15:38:31', '2020-01-17 15:38:31', '2021-01-17 21:08:31'),
('e83dc7572ce62968d98215989910dc352825db202a6671497af854a60ce308e9b4c162d58537767f', 2, 1, 'authToken', '[]', 0, '2020-01-17 08:23:24', '2020-01-17 08:23:24', '2021-01-17 13:53:24'),
('e84bfad7237dca6e0279601fdf34ee2fa7a7d5ed20762720380845c2967c0d0ceb98db51e518e5e3', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:17:16', '2020-01-17 13:17:16', '2021-01-17 18:47:16'),
('ede344b3938db1b6b8257ef8361c84a2095aa14b2b394862a2c0543d924c02a2b94cb526af7c3de4', 16, 1, 'authToken', '[]', 0, '2020-01-19 15:06:23', '2020-01-19 15:06:23', '2021-01-19 20:36:23'),
('f12ea3e40a3aaf292db705057cb5b6ba79a0b607affff3de5041d57adcffd1971f956c48b48c9484', 18, 1, 'authToken', '[]', 0, '2020-01-18 07:30:05', '2020-01-18 07:30:05', '2021-01-18 13:00:05'),
('f477a2ef3c767ba94ed2a8db96c41f1ec5855065acc32e729401d2547ed018ea637fb77faa90a15d', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:12:59', '2020-01-17 13:12:59', '2021-01-17 18:42:59'),
('f4b3c317acb08713af15f0427873a7596cd32e015e7b7718ea30708ed662b36a5c37441b08568ba9', 26, 1, 'authToken', '[]', 0, '2020-01-18 07:47:25', '2020-01-18 07:47:25', '2021-01-18 13:17:25'),
('f5371a23c87165dcaa0bc8024314d5a5f2a027798094b514fd65326d13778b31cc8ea8c226574ead', 10, 1, 'authToken', '[]', 0, '2020-01-17 16:56:08', '2020-01-17 16:56:08', '2021-01-17 22:26:08'),
('f57d5ce8e5cb249ca5e3719e2f1a780d6bbf7f3258d87bcb6253cd7f3e6dec0ed9305a1e41625f94', 24, 1, 'authToken', '[]', 0, '2020-01-19 15:41:43', '2020-01-19 15:41:43', '2021-01-19 21:11:43'),
('f6b1e289f3e403c2997f2ab1c9e2f2a9d7c8b3d83d251f26d708921caf89aac1e36be7c83029b4f0', 26, 1, 'authToken', '[]', 0, '2020-01-18 08:02:28', '2020-01-18 08:02:28', '2021-01-18 13:32:28'),
('f7253912232d626158b6604358e1905f1d03d7a75f16e95c417f811ae681b9d5577cce2a7f69bfca', 16, 1, 'authToken', '[]', 0, '2020-01-18 07:25:25', '2020-01-18 07:25:25', '2021-01-18 12:55:25'),
('f83188bb8b2700710849e0266dd888b4e17e220f18a76562879a40c0a6adf12e1c3ae4c34ceec1b5', 27, 1, 'authToken', '[]', 0, '2020-01-18 07:47:57', '2020-01-18 07:47:57', '2021-01-18 13:17:57'),
('fbf4e33294b9f744531e5eb1cef9b4b9600f32b956c2e9add2ccbbeb49bd4be94ad651bf364987d8', 2, 1, 'authToken', '[]', 0, '2020-01-17 16:48:09', '2020-01-17 16:48:09', '2021-01-17 22:18:09'),
('fdefd70fdd035988a02d540ab5f0193712ad99b3ba86da495280b5f10b52f64684406b0997351bc0', 2, 1, 'authToken', '[]', 0, '2020-01-17 13:20:46', '2020-01-17 13:20:46', '2021-01-17 18:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'YqHiuHdzm1unbFo0m7z77Y29JHgQxnEPIesRmpSj', 'http://localhost', 1, 0, 0, '2020-01-16 12:29:09', '2020-01-16 12:29:09'),
(2, NULL, 'Laravel Password Grant Client', 'd9jJKq3jHY4cupT30mtH4APOSs1j1zy4LvySDmld', 'http://localhost', 0, 1, 0, '2020-01-16 12:29:09', '2020-01-16 12:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-16 12:29:09', '2020-01-16 12:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tables`
--

CREATE TABLE `product_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tables`
--

INSERT INTO `product_tables` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vivo U10', 'img1.jpg', 25000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(2, 'Galaxy M30s', 'img2.jpg', 35000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(3, 'Vivo S30', 'img3.jpg', 10000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(4, 'Galaxy M50s', 'img4.jpg', 35000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(5, 'Galaxy Notes', 'img5.jpg', 41000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(6, 'Galaxy A30s', 'img6.jpg', 35000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(7, 'Samsung', 'img7.jpg', 31000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(8, 'Note 7M50s', 'img8.jpg', 35000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(9, 'Vivo YZ10', 'img2.jpg', 25000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `discount_code`, `used_count`, `total_count`, `percentage`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'C_USB02', '0', '10', '10', '2020-01-30', '2020-02-10', '2020-01-29 18:30:00', NULL),
(2, 'C_LPN45', '0', '5', '20', '2020-01-30', '2020-02-10', '2020-01-29 18:30:00', NULL),
(3, 'C_3DcAM01', '1', '5', '30', '2020-01-30', '2020-02-10', '2020-01-29 18:30:00', '2020-01-29 21:56:18'),
(4, 'C_wristWear03', '0', '5', '40', '2020-01-30', '2020-02-10', '2020-01-29 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(32, 'rahul', 'rahul12@gmail.com', NULL, '$2y$10$Q33TvSCzWjZON8sEQ7c0Z.YoaLQcmYwgugwh3ncdXTcgpVvrPB.Uq', NULL, '2020-01-29 14:18:50', '2020-01-29 14:18:50'),
(33, 'rahul', 'rahul1@gmail.com', NULL, '$2y$10$rXWBagyDOu3ie3y0ViQ.4.IPIntyIrNGo3b7NIK1WLd1eTB2Hpcja', NULL, '2020-01-29 14:24:59', '2020-01-29 14:24:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_users`
--
ALTER TABLE `local_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_tables`
--
ALTER TABLE `product_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_users`
--
ALTER TABLE `local_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tables`
--
ALTER TABLE `product_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
