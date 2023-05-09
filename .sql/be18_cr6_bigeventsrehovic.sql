-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Apr 2023 um 14:45
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be18_cr6_bigeventsrehovic`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414145220', '2023-04-14 16:53:38', 64);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(2047) NOT NULL,
  `image` varchar(2047) NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `location` varchar(2047) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `type` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `contact_email`, `contact_phone`, `location`, `url`, `type`) VALUES
(1, 'Anniversary', '2023-06-07 20:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet ornare massa, eu lacinia lectus placerat et. Praesent elementum rhoncus feugiat. In pulvinar, odio vitae ultricies tempus, velit urna tempus ipsum, in mattis nisl nulla sed erat. Ut aliquet sodales tellus in imperdiet. Cras egestas felis pellentesque justo volutpat, ornare viverra ex aliquam. Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662__340.jpg', 123, 'anniversary@email.com', '+43 123 123 12', 'Stephansplatz 1, 1010 Wien', NULL, 'music'),
(2, 'Joe\'s Party', '2023-04-13 14:00:00', 'Aliquam laoreet ornare massa, eu lacinia lectus placerat et. Praesent elementum rhoncus feugiat. In pulvinar, odio vitae ultricies tempus, velit urna tempus ipsum, in mattis nisl nulla sed erat. Ut aliquet sodales tellus in imperdiet. Cras egestas felis pellentesque justo volutpat, ornare viverra ex aliquam. Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2017/04/10/16/55/live-music-2219036__340.jpg', 33, 'joe.doe@gmail.com', '+43 456 456 45', 'somewhere 1, 1234 XYZ', NULL, 'music'),
(3, 'Festival', '2024-10-06 00:00:00', 'Praesent elementum rhoncus feugiat. In pulvinar, odio vitae ultricies tempus, velit urna tempus ipsum, in mattis nisl nulla sed erat. Ut aliquet sodales tellus in imperdiet. Cras egestas felis pellentesque justo volutpat, ornare viverra ex aliquam. Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2020/01/15/17/38/fireworks-4768501__340.jpg', 56, 'festival@festival.com', '+43 123 456 78', 'festivallocation 2, 1233 XYZ', NULL, 'music'),
(4, '詩', '2023-04-20 08:00:00', 'Ut aliquet sodales tellus in imperdiet. Cras egestas felis pellentesque justo volutpat, ornare viverra ex aliquam. Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2020/02/27/14/05/planner-4884740__340.jpg', 66, 'sample@mail.com', '+8144-244-4752', '17-1, Toranomon 3-chome, Minato-ku, Tokyo', NULL, 'poetry'),
(5, 'Art Gallery', '2024-03-07 10:00:00', 'Cras egestas felis pellentesque justo volutpat, ornare viverra ex aliquam. Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2022/06/12/22/48/gradient-7258997__340.png', 63, 'art@gallery.com', '+8170-393-1991', '173-1039, amikoani-mura Kitaakita-gun, Akita', NULL, 'art'),
(6, 'Colors', '2024-08-06 08:00:00', 'Integer risus mauris, hendrerit at leo ut, tempor auctor nunc. Donec lacinia placerat euismod. Donec faucibus nisi nec ipsum faucibus, id tortor.', 'https://cdn.pixabay.com/photo/2017/08/07/21/56/people-2608316__340.jpg', 512, 'color@gmail.com', '0664 385 22 62', 'Lendplatz 79,  4550 Hehenberg', NULL, 'expression'),
(7, 'test', '2018-01-01 00:00:00', 'test', 'https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495__340.jpg', 553, 'test', 'test', 'test', NULL, 'expression'),
(8, 'test2', '2018-01-01 00:00:00', 'test2', 'https://cdn.pixabay.com/photo/2017/11/24/10/43/ticket-2974645__340.jpg', 53, 'test2', 'test2', 'test2', NULL, 'art'),
(10, 'test3', '2018-01-01 00:00:00', 'test3', 'https://cdn.pixabay.com/photo/2014/04/05/11/39/concert-316464__340.jpg', 456, 'test3', 'test3', 'test3', NULL, 'music'),
(11, 'test4', '2018-01-01 00:00:00', 'test4', 'https://cdn.pixabay.com/photo/2016/11/22/19/15/hand-1850120__340.jpg', 645, 'test4', 'test4', 'test4', NULL, 'music'),
(12, 'test5', '2018-01-01 00:00:00', 'test5', 'https://cdn.pixabay.com/photo/2016/08/16/09/53/international-conference-1597531__340.jpg', 45, 'test5', 'test5', 'test5', NULL, NULL),
(13, 'test6', '2026-01-01 00:00:00', 'test6', 'https://cdn.pixabay.com/photo/2019/07/15/21/05/fantasy-4340432__340.jpg', 2147483647, 'test6', 'test6', 'test6', NULL, 'sports');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
