-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 06. 13:38
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `easyfix`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allapots`
--

CREATE TABLE `allapots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allapot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `allapots`
--

INSERT INTO `allapots` (`id`, `allapot`, `created_at`, `updated_at`) VALUES
(1, 'Nincs megkezdve', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(2, 'Folyamatban van', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(3, 'Kész', '2022-04-05 08:17:02', '2022-04-05 08:17:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
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
-- Tábla szerkezet ehhez a táblához `gepeks`
--

CREATE TABLE `gepeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `epulet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emelet` int(11) NOT NULL,
  `terem` int(11) NOT NULL,
  `gep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gepeks`
--

INSERT INTO `gepeks` (`id`, `epulet`, `emelet`, `terem`, `gep`, `created_at`, `updated_at`) VALUES
(1, 'A', 3, 21, '13', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(2, 'B', 1, 9, '26', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(3, 'A', 0, 5, '33', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(4, 'A', 3, 9, '47', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(5, 'B', 2, 14, '25', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(6, 'A', 3, 4, '49', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(7, 'B', 2, 21, '26', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(8, 'B', 0, 12, '3', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(9, 'A', 0, 9, '16', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(10, 'A', 1, 17, '28', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(11, 'B', 3, 1, '10', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(12, 'A', 1, 1, '50', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(13, 'A', 2, 17, '5', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(14, 'B', 2, 14, '42', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(15, 'A', 2, 7, '49', '2022-04-05 08:17:02', '2022-04-05 08:17:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hibajelents`
--

CREATE TABLE `hibajelents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hiba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gepek_id` bigint(20) UNSIGNED NOT NULL,
  `allapot_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `hibajelents`
--

INSERT INTO `hibajelents` (`id`, `hiba`, `created_at`, `updated_at`, `user_id`, `gepek_id`, `allapot_id`) VALUES
(1, 'Temporibus cumque voluptatem et placeat. Aut ea consequatur aut nihil voluptatem aut. Velit et eius aperiam soluta. Natus cum occaecati aut odio.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 5, 11, 2),
(2, 'Perspiciatis animi cumque rerum sunt. Perferendis impedit molestiae cum iste asperiores. Et dolore aut sed ut quam et facere. Mollitia voluptatum quam eveniet illo.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 1, 7, 3),
(3, 'Nemo sed non aut blanditiis. Ducimus sunt et perferendis in dolore debitis. Commodi explicabo et molestias qui in tenetur.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 9, 15, 1),
(4, 'Cumque aut consectetur numquam et omnis. Cupiditate possimus ducimus occaecati dolore. Commodi ad placeat esse voluptas eos. Eum deleniti repellat voluptas nihil qui non.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 10, 2, 1),
(5, 'Molestiae et sed rerum et voluptatem fugit. Voluptate omnis occaecati rerum. Tempora voluptatem saepe perferendis voluptas. Ex praesentium quidem eum debitis qui numquam.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 9, 11, 3),
(6, 'Cum consectetur id pariatur. Beatae voluptate rerum veritatis molestiae odio veniam consequatur quia. Quia et officiis quia voluptas recusandae et et.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 3, 2, 3),
(7, 'Est accusamus labore aut quis ut. Earum iusto numquam ullam repellendus et consequatur eveniet. Aut qui qui et esse architecto.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 8, 8, 1),
(8, 'Qui error dolore veniam harum. Vitae laboriosam voluptate ipsa architecto qui quia. Aliquam culpa sed ut voluptate facilis sed. Sunt non sunt mollitia non velit.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 9, 3, 2),
(9, 'Dolores quia aut quasi ad. Ipsa facilis repudiandae ullam sit non. Natus ut possimus rerum.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 7, 6, 2),
(10, 'Nihil vel doloremque suscipit labore. Accusantium aut minus itaque.', '2022-04-05 08:17:02', '2022-04-05 08:17:02', 10, 9, 2),
(11, 'Swineulear Bastard', '2022-04-06 08:01:39', '2022-04-06 08:02:02', 13, 10, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2022_03_01_104322_create_gepeks_table', 1),
(20, '2022_03_01_113409_create_allapots_table', 1),
(21, '2022_03_01_114221_create_hibajelents_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Basic User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Christiana Ratke', 'block.everardo@example.com', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'V4LmpFeAve', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(2, 'Bettye Jacobson', 'rwolff@example.net', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'FHH3H8bTvv', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(3, 'Miss Viola Kub DDS', 'alfreda66@example.net', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'fkO2SDGX3g', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(4, 'Newton O\'Hara', 'otto36@example.com', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'N9QvePRo4s', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(5, 'Ericka Collier', 'kareem26@example.org', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', '26HuZan7zd', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(6, 'Angela Jerde', 'cbraun@example.com', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'oKbCyQWYZ4', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(7, 'Mrs. Joana Bode', 'everett10@example.net', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'NxNJ4dEYfk', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(8, 'Harrison Maggio', 'irving.zboncak@example.com', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'x3vvmC0oCq', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(9, 'Antonette Huels', 'pasquale83@example.org', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'SbuAOpcHnV', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(10, 'Bret Nolan', 'sammie.predovic@example.net', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'wfv0FGeESf', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(11, 'Monroe Bernhard', 'izabella.kuphal@example.net', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin', 'FzBLrSfCrV', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(12, 'Michelle Gusikowski', 'freddie.sporer@example.org', '2022-04-05 08:17:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin', '1ZBmWe0aGh', '2022-04-05 08:17:02', '2022-04-05 08:17:02'),
(13, 'Lakatos Winetu', 'swineularbastard@gmail.com', NULL, '$2y$10$CS/oFT8aEAfMymh9j2ON.uTpLKV3ZyZprsD5oJTjDPqNl39eSQrUm', 'Admin', NULL, '2022-04-05 08:18:58', '2022-04-05 08:18:58');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allapots`
--
ALTER TABLE `allapots`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `gepeks`
--
ALTER TABLE `gepeks`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hibajelents`
--
ALTER TABLE `hibajelents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hibajelents_user_id_foreign` (`user_id`),
  ADD KEY `hibajelents_gepek_id_foreign` (`gepek_id`),
  ADD KEY `hibajelents_allapot_id_foreign` (`allapot_id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allapots`
--
ALTER TABLE `allapots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gepeks`
--
ALTER TABLE `gepeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `hibajelents`
--
ALTER TABLE `hibajelents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `hibajelents`
--
ALTER TABLE `hibajelents`
  ADD CONSTRAINT `hibajelents_allapot_id_foreign` FOREIGN KEY (`allapot_id`) REFERENCES `allapots` (`id`),
  ADD CONSTRAINT `hibajelents_gepek_id_foreign` FOREIGN KEY (`gepek_id`) REFERENCES `gepeks` (`id`),
  ADD CONSTRAINT `hibajelents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
