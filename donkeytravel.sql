-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 apr 2023 om 11:14
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donkeytravel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` date NOT NULL,
  `donkey_adventure_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `booking`
--

INSERT INTO `booking` (`id`, `date`, `time`, `donkey_adventure_id`, `user_id`) VALUES
(1, '2023-04-15', '2023-04-15', 1, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230331080509', '2023-03-31 10:05:39', 55),
('DoctrineMigrations\\Version20230331080734', '2023-03-31 10:07:42', 35),
('DoctrineMigrations\\Version20230331080928', '2023-03-31 10:09:40', 33),
('DoctrineMigrations\\Version20230331081305', '2023-03-31 10:13:27', 84),
('DoctrineMigrations\\Version20230331081555', '2023-03-31 10:16:04', 33),
('DoctrineMigrations\\Version20230331081855', '2023-03-31 10:19:02', 176),
('DoctrineMigrations\\Version20230331082350', '2023-03-31 10:23:57', 180),
('DoctrineMigrations\\Version20230331082609', '2023-03-31 10:26:16', 168),
('DoctrineMigrations\\Version20230331082857', '2023-03-31 10:29:09', 198),
('DoctrineMigrations\\Version20230331083035', '2023-03-31 10:30:41', 166),
('DoctrineMigrations\\Version20230331083153', '2023-03-31 10:31:59', 150),
('DoctrineMigrations\\Version20230331094519', '2023-03-31 11:45:24', 72),
('DoctrineMigrations\\Version20230331094624', '2023-03-31 11:46:29', 82);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `donkey_adventure`
--

CREATE TABLE `donkey_adventure` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_location` varchar(255) NOT NULL,
  `end_location` varchar(255) NOT NULL,
  `days` date NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `donkey_adventure`
--

INSERT INTO `donkey_adventure` (`id`, `name`, `start_location`, `end_location`, `days`, `description`) VALUES
(1, 'Route 1', 'Start Locatie: Lorem Ipsum', 'Eind Locatie: Lorem Ipsum', '2023-04-03', 'Lorem Ipsum'),
(2, 'Route 2', 'Start Locatie: Lorem Ipsum', 'Eind Locatie: Lorem Ipsum', '2023-04-02', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `betaald` varchar(255) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order_row`
--

CREATE TABLE `order_row` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `order_property_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,10) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`) VALUES
(3, 'klaas@mail.com', '$2y$13$Ss4jc1psGwKd4swKcyZsoeC3FOJayFwhBjCowjgC3JtMtiZTQqsrG', '[\"ROLE_KLANT\"]'),
(4, 'medewerker@mail.com', '$2y$13$Ss4jc1psGwKd4swKcyZsoeC3FOJayFwhBjCowjgC3JtMtiZTQqsrG', '[\"ROLE_ADMIN\"]'),
(5, 'awd@mail.com', '$2y$13$E7glF5o0QP78UnOm2nS7PeJdXNa1aqtAAIoBNUS1SYwDzDJ7ZpyoK', '[]');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E00CEDDE2D63E894` (`donkey_adventure_id`),
  ADD KEY `IDX_E00CEDDEA76ED395` (`user_id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `donkey_adventure`
--
ALTER TABLE `donkey_adventure`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexen voor tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F52993983301C60` (`booking_id`);

--
-- Indexen voor tabel `order_row`
--
ALTER TABLE `order_row`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C76BB9BB4F206C6A` (`order_property_id`),
  ADD KEY `IDX_C76BB9BB4584665A` (`product_id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04ADB1E7706E` (`restaurant_id`);

--
-- Indexen voor tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `donkey_adventure`
--
ALTER TABLE `donkey_adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `order_row`
--
ALTER TABLE `order_row`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_E00CEDDE2D63E894` FOREIGN KEY (`donkey_adventure_id`) REFERENCES `donkey_adventure` (`id`),
  ADD CONSTRAINT `FK_E00CEDDEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F52993983301C60` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`);

--
-- Beperkingen voor tabel `order_row`
--
ALTER TABLE `order_row`
  ADD CONSTRAINT `FK_C76BB9BB4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_C76BB9BB4F206C6A` FOREIGN KEY (`order_property_id`) REFERENCES `order` (`id`);

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04ADB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
