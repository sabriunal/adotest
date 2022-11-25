SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adotest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `app_content`
--

CREATE TABLE `app_content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `content_title` varchar(256) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `content_image` varchar(256) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `content_cat` int(11) DEFAULT NULL,
  `content_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci
PARTITION BY HASH (`content_id`)
PARTITIONS 10;

--
-- Tablo döküm verisi `app_content`
--

INSERT INTO `app_content` (`content_id`, `content_title`, `content_image`, `content_cat`, `content_time`) VALUES
(191, 'Lorem 191', 'IMAGE_g 3', 101, '2022-10-15 17:44:19'),
(162, 'Lorem 162', 'IMAGE_g 4', 101, '2022-09-22 23:00:54'),
(15, 'Lorem 15', 'IMAGE_g 5', 101, '2022-07-13 05:40:24');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `app_content`
--
ALTER TABLE `app_content`
  ADD UNIQUE KEY `content_id` (`content_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `app_content`
--
ALTER TABLE `app_content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
