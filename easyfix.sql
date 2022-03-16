-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 10. 11:59
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
(1, 'Nincs megkezdve', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(2, 'Folyamatban van', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(3, 'Kész', '2022-03-09 12:06:13', '2022-03-09 12:06:13');

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
(1, 'A', 3, 2, '42', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(2, 'B', 0, 21, '37', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(3, 'B', 1, 1, '16', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(4, 'A', 3, 4, '24', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(5, 'A', 2, 9, '22', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(6, 'B', 2, 6, '6', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(7, 'B', 3, 20, '50', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(8, 'B', 2, 14, '35', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(9, 'A', 2, 8, '28', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(10, 'B', 3, 13, '21', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(11, 'A', 1, 19, '22', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(12, 'A', 3, 21, '38', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(13, 'B', 3, 17, '8', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(14, 'B', 1, 23, '1', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(15, 'B', 0, 16, '3', '2022-03-09 12:06:13', '2022-03-09 12:06:13');

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
(1, 'Placeat quia dicta aut beatae accusantium inventore culpa dolor. Optio provident facere aut possimus. Magnam quas consectetur officia exercitationem. Eum repellat qui incidunt consequatur ut ut.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 8, 15, 1),
(2, 'Suscipit ut reprehenderit doloremque itaque. Nam iure in est error tempora sit omnis aliquid. Dolores dolores aliquam est deserunt dolor rerum quis. Maxime officia et ex temporibus.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 10, 4, 1),
(3, 'A nobis et veniam voluptate et. A debitis voluptatem repellendus eum occaecati et. Itaque voluptate voluptatem debitis aut quia aut sit reiciendis.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 4, 2, 3),
(4, 'Voluptas odio aliquam qui vitae explicabo. Hic eveniet nostrum praesentium est. Id fugit pariatur adipisci optio saepe velit itaque.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 6, 15, 2),
(5, 'Facere sed fugiat nam. Magnam consequuntur ut impedit voluptatem architecto iste enim. Aspernatur doloremque recusandae rerum beatae est dolorem rem nisi.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 9, 14, 2),
(6, 'Ipsa molestias minus vel consequatur odio enim. Voluptate voluptas ipsam neque magni consequuntur laudantium autem. Minus rerum nostrum ad deleniti repellendus.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 6, 2, 2),
(7, 'Qui placeat voluptas iusto aut quis ab ab ad. Ut dolorum dignissimos et. Neque sed illum molestias aut cupiditate odio officia. Quis cumque voluptatum amet.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 10, 4, 1),
(8, 'Accusantium maxime quaerat minus sit soluta illum. Id repellat ea cum aut minima ullam libero. Voluptatem est enim ab vel. Placeat non laboriosam consequatur ipsum.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 10, 15, 3),
(9, 'Repudiandae sit quia facere libero laborum recusandae ut vitae. Et et debitis veritatis enim. Aut eveniet est rerum aut.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 1, 9, 3),
(10, 'At sed aut consequatur debitis quia nam. Debitis cupiditate velit est tempore molestiae. Est laboriosam aspernatur libero amet iste.', '2022-03-09 12:06:13', '2022-03-09 12:06:13', 4, 6, 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_01_104322_create_gepeks_table', 1),
(6, '2022_03_01_113409_create_allapots_table', 1),
(7, '2022_03_01_114221_create_hibajelents_table', 1);

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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gilda Larson', 'skiles.jeramie@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'LIzgoycnok', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(2, 'Ms. Natalia Cronin', 'ashley.kerluke@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', '2jJtEmAO9f', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(3, 'Dr. Cedrick Schowalter', 'toy.elisha@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'JtyuMZNKJc', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(4, 'Miss Edythe Hegmann', 'kzieme@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'l19VolCOhW', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(5, 'Percival Bruen', 'gaetano20@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'iu5OanGBcC', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(6, 'Kamryn Ernser', 'kuhic.wilfredo@example.org', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'kJljF4ER1P', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(7, 'Adolph Gibson', 'thora.greenfelder@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'RvyLddDpf8', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(8, 'Miss Brooke Kreiger', 'cziemann@example.org', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'M8NCaigp1B', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(9, 'Heath Wisozk', 'melyssa.wiegand@example.com', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'rcUzBsVM5r', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(10, 'Susan Jast', 'kaela.connelly@example.net', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Basic User', 'C4oxaCoKap', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(11, 'Otha Swift DDS', 'daisha69@example.org', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin', 'PWYmcBgizc', '2022-03-09 12:06:13', '2022-03-09 12:06:13'),
(12, 'Lamar Stracke', 'ally39@example.net', '2022-03-09 12:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin', 'l7FkN3SiMn', '2022-03-09 12:06:13', '2022-03-09 12:06:13');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
