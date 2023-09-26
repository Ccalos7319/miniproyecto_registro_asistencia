-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 16:23:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `asistencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `direccion`, `correo`, `telefono`, `edad`, `asistencia`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Jakob Green', 'Barton', '3369 Dare Cove\nWest Betteshire, MA 14065', 'stanton.jaquan@hotmail.com', '+1 (424) 287-3323', 51, 'F', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(2, 'Mr. Gerson Koepp DDS', 'Feeney', '8176 Ernser Wall Suite 064\nNew Elroyview, NJ 30190', 'bernier.ned@yahoo.com', '(929) 666-7494', 30, 'F', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(3, 'Mr. Randal Will', 'Beahan', '41960 Auer Key Apt. 281\nLake Kenyon, IL 73374', 'claire.effertz@bauch.info', '+1 (256) 923-4696', 27, 'T', '2023-09-25 17:16:51', '2023-09-25 19:07:30'),
(4, 'Abdul O\'Reilly', 'Hoppe', '13279 Creola Mill Apt. 752\nRoderickborough, SD 84309-7951', 'hessel.octavia@murazik.com', '1-762-335-9096', 38, 'T', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(5, 'Khalid Kohler', 'Boyer', '9348 Bogan Skyway\nTitoburgh, NJ 34079-7961', 'vhickle@gmail.com', '+1 (364) 445-1210', 54, 'A', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(6, 'Jimmie Greenfelder', 'Kris', '5038 Mckenzie Mountain Suite 960\nNorth Rebekaport, GA 17902-6030', 'pfannerstill.jerald@gmail.com', '484-560-6064', 39, 'A', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(7, 'Edmund Mosciski', 'Keeling', '85542 Stracke Underpass Suite 701\nKentonfort, CT 60450', 'qschultz@armstrong.info', '(830) 899-6120', 51, 'A', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(8, 'Dorothy Quitzon', 'Carter', '4037 Kuhlman Square Suite 855\nSouth Hailie, HI 97899-2677', 'brenda.abernathy@yahoo.com', '+1.478.379.4574', 48, 'T', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(9, 'Conor Turner III', 'Koss', '3202 Frieda Plaza Apt. 675\nPort Ryann, TN 52656-8597', 'reese08@gmail.com', '678.525.9359', 18, 'A', '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(10, 'Layne Ryan', 'DuBuque', '425 Schaefer Crest Suite 152\nKodymouth, WY 25078-7819', 'walsh.arvilla@hotmail.com', '+1 (351) 600-5005', 40, 'F', '2023-09-25 17:16:51', '2023-09-25 17:16:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'matematica', NULL, NULL),
(2, 'algebra', NULL, NULL),
(3, 'trigonometria', NULL, NULL),
(4, 'lenguaje', NULL, NULL),
(5, 'fisica', NULL, NULL),
(7, 'programacionWeb', NULL, NULL),
(8, 'laravel', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellido`, `direccion`, `correo`, `telefono`, `edad`, `created_at`, `updated_at`) VALUES
(1, 'Erwin Treutel', 'Herzog', '308 Margot Station Apt. 054\nElinorborough, AR 09763-8872', 'vleuschke@waelchi.com', '(828) 292-4293', 30, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(2, 'Miss Alison Kuhic', 'Bosco', '67380 Hill Skyway Suite 715\nNew Gabriel, VA 80260-9140', 'connor.bahringer@hotmail.com', '+1 (341) 226-4290', 51, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(3, 'Cruz Leffler Jr.', 'Lueilwitz', '830 Martina Park\nLake Polly, OH 62312', 'wellington29@yahoo.com', '858-449-1091', 28, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(4, 'Cayla Schowalter', 'Waelchi', '3490 Boyer Plaza Suite 690\nMurphyburgh, VT 85898-1246', 'stella08@yahoo.com', '+1.650.955.5747', 28, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(5, 'Jovani Windler', 'Bradtke', '9210 Tristin Groves\nPort Georgette, NY 20135', 'hmante@hotmail.com', '270.590.1723', 32, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(6, 'Prof. Verla Bahringer DDS', 'Gibson', '451 Crist Coves\nKassulkeland, SC 75342', 'hdare@cronin.com', '+17064882603', 29, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(7, 'Prof. Zora Schulist DDS', 'Little', '46110 Yasmine Fords\nGeovannymouth, MT 19256', 'zkessler@gmail.com', '+1 (775) 879-5265', 34, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(8, 'Mrs. Christiana Buckridge', 'Graham', '3856 Onie Flat Suite 594\nDellabury, WI 32234-4455', 'lstanton@koelpin.info', '812-382-0077', 50, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(9, 'Araceli Rolfson', 'White', '644 Price Via\nNorth Dedrickfurt, MS 38871', 'jamir59@hotmail.com', '949-800-2232', 46, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(10, 'Irving Pollich Sr.', 'Turcotte', '50199 Mosciski Via\nNew Damon, MI 92567-8678', 'rrohan@gmail.com', '478.744.4054', 51, '2023-09-25 17:12:39', '2023-09-25 17:12:39'),
(11, 'Marcelina Bogan', 'Spencer', '1495 Trystan Camp Apt. 030\nSatterfieldfurt, MA 19427-2830', 'jrolfson@gmail.com', '(931) 636-2269', 40, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(12, 'Elvera Emard V', 'Reilly', '638 Wiegand Forge Suite 036\nDockstad, ND 24864-7601', 'kenya94@walter.com', '828-851-5334', 28, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(13, 'Prof. Gudrun Johnson', 'Leannon', '47783 Kavon Locks\nLoraborough, MT 83370-1848', 'chuels@kozey.com', '712.978.0218', 50, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(14, 'Rene Runolfsdottir', 'Torp', '503 Shanelle Village\nNew Jean, IN 59748', 'leda82@thompson.com', '(520) 941-5421', 23, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(15, 'Verner Crooks', 'Willms', '876 Sonya Courts Apt. 037\nMorissetteport, DE 25597-7102', 'lucious48@hotmail.com', '947.677.1618', 20, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(16, 'Jaiden Stroman I', 'Ebert', '94316 Hector Island Apt. 265\nKeeblerview, GA 34874-3526', 'boyd57@gmail.com', '1-818-324-6206', 25, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(17, 'Flavio DuBuque', 'Conroy', '938 Armand Stream Suite 157\nLake Darrell, IA 25635-8945', 'sammy92@trantow.com', '+1 (320) 334-7586', 30, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(18, 'Freddie Kutch IV', 'Mitchell', '755 Deborah Isle Suite 220\nSouth Susanna, WI 52087', 'adan.metz@kreiger.com', '234.213.8974', 28, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(19, 'Lauryn Hand Sr.', 'Lubowitz', '793 Hills Walks Suite 743\nHandberg, NE 20858-7521', 'murazik.arlo@champlin.com', '(936) 983-2569', 54, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(20, 'Gregorio Durgan MD', 'Powlowski', '723 Purdy Ports Apt. 048\nWest Kristyshire, TX 18934', 'logan.yost@purdy.info', '+1-757-969-0053', 23, '2023-09-25 17:16:51', '2023-09-25 17:16:51'),
(21, 'Manuel', 'Huayamarez', 'Juan pablo vizcardo y Guzman N-8', 'mlvh3129@yahoo.com', '969084450', 40, '2023-09-25 19:04:14', '2023-09-25 19:04:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_25_115010_create_docentes_table', 1),
(6, '2023_09_25_115130_create_alumnos_table', 1),
(7, '2023_09_25_115154_create_cursos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
