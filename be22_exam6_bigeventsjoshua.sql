-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Aug 2024 um 17:27
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be22_exam6_bigeventsjoshua`
--
CREATE DATABASE IF NOT EXISTS `be22_exam6_bigeventsjoshua` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be22_exam6_bigeventsjoshua`;

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
('DoctrineMigrations\\Version20240817123314', '2024-08-17 14:34:41', 104);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_description` varchar(1000) NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_capacity` decimal(10,0) NOT NULL,
  `event_email` varchar(255) NOT NULL,
  `event_phone` decimal(10,0) NOT NULL,
  `event_address` varchar(255) NOT NULL,
  `event_url` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_date`, `event_description`, `event_image`, `event_capacity`, `event_email`, `event_phone`, `event_address`, `event_url`, `event_type`) VALUES
(1, 'Tech Innovators Summit', '2024-09-15 09:00:00', 'El Tech Innovators Summit es el evento líder para visionarios y pioneros en el ámbito de la tecnología. Reúne a las mentes más brillantes de la industria para compartir conocimientos sobre las últimas tendencias, avances en inteligencia artificial, blockchain, y ciberseguridad. Con oradores de empresas tecnológicas de primer nivel, talleres prácticos y oportunidades de networking invaluables, este evento es una plataforma esencial para aquellos que buscan estar a la vanguardia de la innovación tecnológica.', 'img3.jpg', 500, 'summit@techinnovators.com', 5551234, '123 Tech Blvd, San Francisco, CA', 'https://techsummit.com', 'Conference'),
(2, 'Music & Arts Festival', '2024-08-20 14:00:00', 'El Music & Arts Festival es una celebración vibrante de la cultura, la música y las artes visuales. Este festival anual atrae a miles de personas con una alineación ecléctica de músicos internacionales, instalaciones de arte interactivo, y actuaciones en vivo. Los asistentes pueden disfrutar de una amplia gama de géneros musicales, desde indie rock hasta música electrónica, mientras exploran exposiciones de arte contemporáneo, talleres creativos y puestos de comida gourmet. Es un evento imperdible para amantes de la música y el arte en todas sus formas.', 'img2.jpg', 1000, 'info@musicartsfestival.com', 5555678, '456 Arts St, Austin, TX', 'https://musicartsfest.com', 'Festival'),
(3, 'Charity Fun Run', '2024-10-05 08:00:00', 'La Charity Fun Run es una carrera benéfica que combina el ejercicio con una causa noble. Participantes de todas las edades se reúnen para correr, trotar o caminar una ruta escénica de 5 kilómetros en apoyo a organizaciones locales de caridad. Este evento no solo promueve la salud y el bienestar, sino que también genera conciencia y fondos para proyectos comunitarios esenciales, como refugios para personas sin hogar y programas de educación infantil. Los corredores pueden disfrutar de estaciones de hidratación, entretenimiento en vivo y una ceremonia de premiación al final del día.', 'img10.jpg', 300, 'contact@charityrun.com', 5558765, '789 Running Rd, Denver, CO', 'https://charityrun.com', 'Sports'),
(4, 'Gourmet Food Expo', '2024-11-10 12:00:00', 'La Gourmet Food Expo es el destino ideal para los amantes de la gastronomía. Este evento anual reúne a chefs de renombre, críticos culinarios y entusiastas de la comida para explorar las últimas tendencias en la cocina gourmet. Los asistentes pueden deleitarse con demostraciones en vivo, degustaciones de productos exclusivos, y charlas inspiradoras sobre la evolución de la gastronomía. Desde cocina molecular hasta técnicas tradicionales, la expo ofrece una experiencia sensorial completa que no se encuentra en ningún otro lugar. Es un festín para los sentidos y una fuente inagotable de inspiración culinaria.', 'img12.jpg', 750, 'info@foodexpo.com', 5556789, '321 Culinary Ave, New York, NY', 'https://gourmetexpo.com', 'Sports'),
(5, 'International Film Festival', '2024-12-01 19:00:00', 'El International Film Festival es una celebración del cine global, donde se proyectan películas de todo el mundo que destacan por su narrativa, dirección y actuación. Este festival atrae a cineastas, críticos y aficionados al cine que buscan descubrir las mejores películas independientes y de autor. Con una programación que incluye desde documentales impactantes hasta dramas conmovedores, el festival ofrece una plataforma para el debate y la apreciación del arte cinematográfico. Además de las proyecciones, hay mesas redondas, sesiones de preguntas y respuestas con directores, y eventos de networking para profesionales de la industria.', 'img7.jpg', 1200, 'info@filmfestival.com', 5552345, '987 Cinema Ln, Los Angeles, CA', 'https://filmfestival.com', 'Festival'),
(6, 'Health & Wellness Retreat', '2024-09-30 08:00:00', 'El Health & Wellness Retreat es una experiencia transformadora dedicada al bienestar físico, mental y espiritual. Este retiro de una semana ofrece un escape del estrés diario con una combinación de actividades de bienestar, como yoga, meditación, y talleres de nutrición. Guiado por expertos en salud holística, los participantes aprenderán técnicas para equilibrar el cuerpo y la mente, mejorar su bienestar general y adoptar un estilo de vida más saludable. Situado en un entorno natural sereno, este retiro ofrece la oportunidad perfecta para recargar energías y redescubrir la paz interior.', 'img6.jpg', 150, 'info@wellnessretreat.com', 5553456, '654 Serenity Way, Sedona, AZ', 'https://wellnessretreat.com', 'Retreat'),
(7, 'Historical Reenactment Fair', '2024-10-12 10:00:00', 'La Historical Reenactment Fair es un evento donde la historia cobra vida. Este evento único reúne a entusiastas de la historia, recreadores y público en general para revivir momentos icónicos del pasado. Los asistentes pueden disfrutar de representaciones en vivo de batallas históricas, talleres de artesanía tradicional, y mercados que venden productos auténticos de épocas pasadas. Con un enfoque en la educación y el entretenimiento, la feria ofrece una oportunidad para aprender sobre la historia de una manera interactiva y divertida. Es un evento ideal para familias, estudiantes y cualquier persona interesada en la historia.', 'img1.jpg', 600, 'info@historyfair.com', 5554567, '321 History Ln, Boston, MA', 'https://historyfair.com', 'Fair'),
(8, 'Startup Pitch Night', '2024-11-20 18:00:00', 'Startup Pitch Night es el evento donde emprendedores prometedores presentan sus ideas de negocio a un panel de inversores y expertos de la industria. Con la oportunidad de recibir retroalimentación inmediata y asegurar financiamiento, esta noche es crucial para aquellos que buscan llevar sus startups al siguiente nivel. El evento también ofrece oportunidades de networking con otros fundadores, mentores y profesionales de la industria. Además de las presentaciones, los asistentes pueden disfrutar de charlas inspiradoras y paneles de discusión sobre el ecosistema emprendedor actual.', 'img11.jpg', 200, 'info@startuppitchnight.com', 5557890, '123 Startup St, Seattle, WA', 'https://startuppitchnight.com', 'Conference'),
(9, 'Artisan Craft Market', '2024-12-15 09:00:00', 'El Artisan Craft Market es un mercado vibrante que celebra la artesanía local y el arte hecho a mano. Los visitantes pueden explorar una amplia gama de productos únicos, desde joyería hecha a mano hasta cerámica, textiles y obras de arte. Este evento es una plataforma para que los artesanos locales exhiban y vendan sus creaciones, al mismo tiempo que los compradores encuentran piezas únicas que no se encuentran en tiendas convencionales. El mercado también ofrece talleres interactivos donde los asistentes pueden aprender sobre técnicas artesanales y crear sus propios productos.', 'img4.jpg', 500, 'info@craftmarket.com', 5559012, '789 Artisan Way, Portland, OR', 'https://craftmarket.com', 'Gala'),
(10, 'Winter Wonderland Gala', '2024-12-31 20:00:00', 'El Winter Wonderland Gala es una elegante celebración para despedir el año con estilo. Este evento de gala combina entretenimiento de primer nivel, una cena gourmet, y un ambiente festivo en un entorno mágico inspirado en un país de las maravillas invernal. Con actuaciones en vivo, un baile de medianoche y una subasta silenciosa en beneficio de una organización benéfica local, esta gala ofrece una noche inolvidable de glamour y generosidad. Es el evento perfecto para aquellos que desean celebrar el fin de año rodeados de amigos y familiares en un entorno lujoso.', 'img5.jpg', 400, 'info@wintergala.com', 5551239, '321 Gala Ave, Chicago, IL', 'https://wintergala.com', 'Gala');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
