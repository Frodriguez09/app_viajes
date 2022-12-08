-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-12-2022 a las 02:46:37
-- Versión del servidor: 8.0.27
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajes_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
CREATE TABLE IF NOT EXISTS `admin_activations` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `forbidden`, `language`, `deleted_at`, `created_at`, `updated_at`, `last_login_at`) VALUES
(1, 'Fernando', 'Rodriguez', 'administrator@brackets.sk', '$2y$10$lM/9SbEji5E0lemE1zdKo.UA2kPN9FcBTO.KM9rakH7GxtaPfXnxS', '31FAnjHisb7g46RFsEkkFuMIFvS8JSRKuFkdQdhp7hz97QVpbZZ4obEaLD6E', 1, 0, 'en', NULL, '2022-12-06 07:06:26', '2022-12-08 09:22:19', '2022-12-08 09:22:19'),
(2, 'Fernando', 'Rodriguez', 'frodriguez@gmail.com', '$2y$10$qZfLqMCbpbTYRXXKiuy7iufji10F5mvwLA/r5W5HhBDCCkvW60nwq', 'XewPReBU1LjBZ5akmyMXj2epDPOlId1kiau4RJWbqFrDWXJ5gXTw2Q81GmiZ', 1, 0, 'en', NULL, '2022-12-08 09:23:21', '2022-12-08 09:33:28', '2022-12-08 09:33:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

DROP TABLE IF EXISTS `lugares`;
CREATE TABLE IF NOT EXISTS `lugares` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` double NOT NULL,
  `logitud` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id`, `nombre`, `latitud`, `logitud`, `created_at`, `updated_at`) VALUES
(1, 'SLRC', 32.28, 114.46, '2022-12-06 07:06:44', '2022-12-07 10:46:07'),
(3, 'Hawaii', 123.43, 56.78, '2022-12-07 10:54:15', '2022-12-07 10:54:15'),
(4, 'China', 123.12, 78.54, '2022-12-08 09:26:49', '2022-12-08 09:27:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'Brackets\\AdminAuth\\Models\\AdminUser', 1, 'd2c5fc0b-cd0a-4e22-8acc-33f07590ee87', 'avatar', 'MagIHZOvc5sytRyBTbBiMQmytSnvznnMONIz2N4p', 'MagIHZOvc5sytRyBTbBiMQmytSnvznnMONIz2N4p.jpg', 'image/jpeg', 'media', 'media', 94601, '[]', '{\"name\": \"72212121_10219897967823919_6746985527108435968_o.jpg\", \"width\": 957, \"height\": 960, \"file_name\": \"72212121_10219897967823919_6746985527108435968_o.jpg\"}', '{\"thumb_75\": true, \"thumb_150\": true, \"thumb_200\": true}', '[]', 1, '2022-12-07 09:07:45', '2022-12-07 09:07:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_activations_table', 1),
(4, '2017_08_24_000000_create_admin_activations_table', 1),
(5, '2017_08_24_000000_create_admin_password_resets_table', 1),
(6, '2017_08_24_000000_create_admin_users_table', 1),
(7, '2018_07_18_000000_create_wysiwyg_media_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table', 1),
(11, '2022_12_03_011749_create_media_table', 1),
(12, '2022_12_03_011749_create_permission_tables', 1),
(13, '2022_12_03_011749_create_translations_table', 1),
(14, '2022_12_03_011754_fill_default_admin_user_and_permissions', 1),
(15, '2022_12_05_222807_create_lugares_table', 1),
(16, '2022_12_05_223205_create_viajes_table', 1),
(17, '2022_12_05_225656_fill_permissions_for_lugare', 1),
(18, '2022_12_05_225710_fill_permissions_for_viaje', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 1),
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(2, 'admin.translation.index', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(3, 'admin.translation.edit', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(4, 'admin.translation.rescan', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(5, 'admin.admin-user.index', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(6, 'admin.admin-user.create', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(7, 'admin.admin-user.edit', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(8, 'admin.admin-user.delete', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(9, 'admin.upload', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(10, 'admin.admin-user.impersonal-login', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26'),
(11, 'admin.lugare', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(12, 'admin.lugare.index', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(13, 'admin.lugare.create', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(14, 'admin.lugare.show', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(15, 'admin.lugare.edit', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(16, 'admin.lugare.delete', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(17, 'admin.lugare.bulk-delete', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(18, 'admin.viaje', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(19, 'admin.viaje.index', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(20, 'admin.viaje.create', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(21, 'admin.viaje.show', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(22, 'admin.viaje.edit', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(23, 'admin.viaje.delete', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27'),
(24, 'admin.viaje.bulk-delete', 'admin', '2022-12-06 07:06:27', '2022-12-06 07:06:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2022-12-06 07:06:26', '2022-12-06 07:06:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `namespace`, `group`, `key`, `text`, `metadata`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brackets/admin-ui', 'admin', 'operation.succeeded', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(2, 'brackets/admin-ui', 'admin', 'operation.failed', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(3, 'brackets/admin-ui', 'admin', 'operation.not_allowed', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(4, '*', 'admin', 'admin-user.columns.activated', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(5, '*', 'admin', 'admin-user.columns.email', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(6, '*', 'admin', 'admin-user.columns.first_name', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(7, '*', 'admin', 'admin-user.columns.forbidden', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(8, '*', 'admin', 'admin-user.columns.language', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(9, 'brackets/admin-ui', 'admin', 'forms.select_an_option', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(10, '*', 'admin', 'admin-user.columns.last_name', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(11, '*', 'admin', 'admin-user.columns.password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(12, '*', 'admin', 'admin-user.columns.password_repeat', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(13, '*', 'admin', 'admin-user.columns.roles', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(14, 'brackets/admin-ui', 'admin', 'forms.select_options', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(15, '*', 'admin', 'admin-user.actions.create', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(16, 'brackets/admin-ui', 'admin', 'btn.save', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(17, '*', 'admin', 'admin-user.actions.edit', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(18, '*', 'admin', 'admin-user.actions.index', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(19, 'brackets/admin-ui', 'admin', 'placeholder.search', '{\"en\": \"Buscar\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:13:14', NULL),
(20, 'brackets/admin-ui', 'admin', 'btn.search', '{\"en\": \"Buscar\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:13:20', NULL),
(21, '*', 'admin', 'admin-user.columns.id', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(22, '*', 'admin', 'admin-user.columns.last_login_at', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(23, 'brackets/admin-ui', 'admin', 'btn.edit', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(24, 'brackets/admin-ui', 'admin', 'btn.delete', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(25, 'brackets/admin-ui', 'admin', 'pagination.overview', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(26, 'brackets/admin-ui', 'admin', 'index.no_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(27, 'brackets/admin-ui', 'admin', 'index.try_changing_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(28, 'brackets/admin-ui', 'admin', 'btn.new', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(29, 'brackets/admin-ui', 'admin', 'profile_dropdown.account', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(30, 'brackets/admin-auth', 'admin', 'profile_dropdown.profile', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(31, 'brackets/admin-auth', 'admin', 'profile_dropdown.password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(32, 'brackets/admin-auth', 'admin', 'profile_dropdown.logout', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(33, 'brackets/admin-ui', 'admin', 'sidebar.content', '{\"en\": \"Opciones\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:11:17', NULL),
(34, '*', 'admin', 'lugare.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(35, '*', 'admin', 'viaje.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(36, 'brackets/admin-ui', 'admin', 'sidebar.settings', '{\"en\": \"Configuracion\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:12:43', NULL),
(37, '*', 'admin', 'lugare.columns.latitud', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(38, '*', 'admin', 'lugare.columns.logitud', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(39, '*', 'admin', 'lugare.columns.nombre', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(40, '*', 'admin', 'lugare.actions.create', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(41, '*', 'admin', 'lugare.actions.edit', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(42, '*', 'admin', 'lugare.actions.index', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(43, '*', 'admin', 'lugare.columns.id', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(44, 'brackets/admin-ui', 'admin', 'listing.selected_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(45, 'brackets/admin-ui', 'admin', 'listing.check_all_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(46, 'brackets/admin-ui', 'admin', 'listing.uncheck_all_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(47, '*', 'admin', 'admin-user.actions.edit_password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(48, '*', 'admin', 'admin-user.actions.edit_profile', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(49, '*', 'admin', 'viaje.columns.id_lugar', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(50, '*', 'admin', 'viaje.columns.nombre', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(51, '*', 'admin', 'viaje.columns.notas', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(52, '*', 'admin', 'viaje.actions.create', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(53, '*', 'admin', 'viaje.actions.edit', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(54, '*', 'admin', 'viaje.actions.index', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(55, '*', 'admin', 'viaje.columns.id', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(56, 'brackets/admin-auth', 'admin', 'activation_form.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(57, 'brackets/admin-auth', 'admin', 'activation_form.note', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(58, 'brackets/admin-auth', 'admin', 'auth_global.email', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(59, 'brackets/admin-auth', 'admin', 'activation_form.button', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(60, 'brackets/admin-auth', 'admin', 'login.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(61, 'brackets/admin-auth', 'admin', 'login.sign_in_text', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(62, 'brackets/admin-auth', 'admin', 'auth_global.password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(63, 'brackets/admin-auth', 'admin', 'login.button', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(64, 'brackets/admin-auth', 'admin', 'login.forgot_password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(65, 'brackets/admin-auth', 'admin', 'forgot_password.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(66, 'brackets/admin-auth', 'admin', 'forgot_password.note', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(67, 'brackets/admin-auth', 'admin', 'forgot_password.button', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(68, 'brackets/admin-auth', 'admin', 'password_reset.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(69, 'brackets/admin-auth', 'admin', 'password_reset.note', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(70, 'brackets/admin-auth', 'admin', 'auth_global.password_confirm', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(71, 'brackets/admin-auth', 'admin', 'password_reset.button', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(72, 'brackets/admin-auth', 'activations', 'email.line', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(73, 'brackets/admin-auth', 'activations', 'email.action', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(74, 'brackets/admin-auth', 'activations', 'email.notRequested', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(75, 'brackets/admin-auth', 'admin', 'activations.activated', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(76, 'brackets/admin-auth', 'admin', 'activations.invalid_request', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(77, 'brackets/admin-auth', 'admin', 'activations.disabled', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(78, 'brackets/admin-auth', 'admin', 'activations.sent', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(79, 'brackets/admin-auth', 'admin', 'passwords.sent', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(80, 'brackets/admin-auth', 'admin', 'passwords.reset', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(81, 'brackets/admin-auth', 'admin', 'passwords.invalid_token', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(82, 'brackets/admin-auth', 'admin', 'passwords.invalid_user', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(83, 'brackets/admin-auth', 'admin', 'passwords.invalid_password', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(84, 'brackets/admin-auth', 'resets', 'email.line', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(85, 'brackets/admin-auth', 'resets', 'email.action', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(86, 'brackets/admin-auth', 'resets', 'email.notRequested', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(87, '*', 'auth', 'failed', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(88, '*', 'auth', 'throttle', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(89, 'brackets/admin-translations', 'admin', 'title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(90, 'brackets/admin-translations', 'admin', 'index.all_groups', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(91, 'brackets/admin-translations', 'admin', 'index.edit', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(92, 'brackets/admin-translations', 'admin', 'index.default_text', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(93, 'brackets/admin-translations', 'admin', 'index.translation', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(94, 'brackets/admin-translations', 'admin', 'index.translation_for_language', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(95, 'brackets/admin-translations', 'admin', 'import.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(96, 'brackets/admin-translations', 'admin', 'import.notice', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(97, 'brackets/admin-translations', 'admin', 'import.upload_file', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(98, 'brackets/admin-translations', 'admin', 'import.choose_file', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(99, 'brackets/admin-translations', 'admin', 'import.language_to_import', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(100, 'brackets/admin-translations', 'admin', 'fields.select_language', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(101, 'brackets/admin-translations', 'admin', 'import.do_not_override', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(102, 'brackets/admin-translations', 'admin', 'import.conflict_notice_we_have_found', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(103, 'brackets/admin-translations', 'admin', 'import.conflict_notice_translations_to_be_imported', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(104, 'brackets/admin-translations', 'admin', 'import.conflict_notice_differ', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(105, 'brackets/admin-translations', 'admin', 'fields.group', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(106, 'brackets/admin-translations', 'admin', 'fields.default', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(107, 'brackets/admin-translations', 'admin', 'fields.current_value', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(108, 'brackets/admin-translations', 'admin', 'fields.imported_value', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(109, 'brackets/admin-translations', 'admin', 'import.sucesfully_notice', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(110, 'brackets/admin-translations', 'admin', 'import.sucesfully_notice_update', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(111, 'brackets/admin-translations', 'admin', 'index.export', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(112, 'brackets/admin-translations', 'admin', 'export.notice', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(113, 'brackets/admin-translations', 'admin', 'export.language_to_export', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(114, 'brackets/admin-translations', 'admin', 'btn.export', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(115, 'brackets/admin-translations', 'admin', 'index.title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(116, 'brackets/admin-translations', 'admin', 'btn.import', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(117, 'brackets/admin-translations', 'admin', 'btn.re_scan', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(118, 'brackets/admin-translations', 'admin', 'fields.created_at', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(119, 'brackets/admin-translations', 'admin', 'index.no_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(120, 'brackets/admin-translations', 'admin', 'index.try_changing_items', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(121, 'brackets/admin-ui', 'admin', 'media_uploader.max_number_of_files', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(122, 'brackets/admin-ui', 'admin', 'media_uploader.max_size_pre_file', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(123, 'brackets/admin-ui', 'admin', 'media_uploader.private_title', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(124, 'brackets/admin-ui', 'admin', 'page_title_suffix', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(125, 'brackets/admin-ui', 'admin', 'footer.powered_by', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(126, '*', '*', 'Manage access', '{\"en\": \"Administrativo\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:11:44', NULL),
(127, '*', '*', 'Translations', '{\"en\": \"Cambios\"}', NULL, '2022-12-07 09:10:52', '2022-12-07 09:12:12', NULL),
(128, '*', '*', 'Configuration', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL),
(129, '*', '*', 'Close', '[]', NULL, '2022-12-07 09:10:52', '2022-12-07 09:10:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

DROP TABLE IF EXISTS `viajes`;
CREATE TABLE IF NOT EXISTS `viajes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_lugar` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `viajes_id_lugar_foreign` (`id_lugar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `nombre`, `notas`, `id_lugar`, `created_at`, `updated_at`) VALUES
(1, 'Frutal', 'Venta de nachos con queso', 1, '2022-12-07 07:52:37', '2022-12-07 09:08:33'),
(3, 'Hotel', 'El hotel estaba comodo', 3, '2022-12-07 10:54:37', '2022-12-07 10:54:37'),
(4, 'Muralla', 'Esta bien extenso', 4, '2022-12-08 09:28:01', '2022-12-08 09:28:01'),
(5, 'Templo', 'Habia muchos chinos', 4, '2022-12-08 09:34:59', '2022-12-08 09:36:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
CREATE TABLE IF NOT EXISTS `wysiwyg_media` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int UNSIGNED DEFAULT NULL,
  `wysiwygable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_id_lugar_foreign` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
