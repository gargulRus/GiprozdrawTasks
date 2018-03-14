-- --------------------------------------------------------
-- Хост:                         192.168.62.231
-- Версия сервера:               5.7.18-0ubuntu0.16.04.1 - (Ubuntu)
-- ОС Сервера:                   Linux
-- HeidiSQL Версия:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных giprotable
CREATE DATABASE IF NOT EXISTS `giprotable` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `giprotable`;


-- Дамп структуры для таблица giprotable.maintable
CREATE TABLE IF NOT EXISTS `maintable` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '0',
  `jan` char(50) DEFAULT NULL,
  `feb` char(50) DEFAULT NULL,
  `march` char(50) DEFAULT NULL,
  `aipril` char(50) DEFAULT NULL,
  `may` char(50) DEFAULT NULL,
  `june` char(50) DEFAULT NULL,
  `july` char(50) DEFAULT NULL,
  `august` char(50) DEFAULT NULL,
  `sept` char(50) DEFAULT NULL,
  `okt` char(50) DEFAULT NULL,
  `novemb` char(50) DEFAULT NULL,
  `decemb` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы giprotable.maintable: ~5 rows (приблизительно)
DELETE FROM `maintable`;
/*!40000 ALTER TABLE `maintable` DISABLE KEYS */;
INSERT INTO `maintable` (`id`, `name`, `jan`, `feb`, `march`, `aipril`, `may`, `june`, `july`, `august`, `sept`, `okt`, `novemb`, `decemb`) VALUES
	(1, 'Севастополь (псих)', 'ВОП 31.01', 'Изыск. 28.02', '"П" 15.03', 'Эксп(вх)31.04', '', '', '', '"РД" 31.08', '', '', '', ''),
	(2, 'Ховрино(поликл)', 'Согл. "П" 21.01', 'Эксп(вх) 01.02', '', '', '', '', '', 'РД 21.08', '"РД"+"П" 11.09', '', '', ''),
	(16, 'Качуг(поликл)', NULL, 'Эксп(экол) 02.02', 'Эксп(вх) 01.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 'Тула (ПЦ)', NULL, 'Эксп(вх) 12.02', 'ГГЭ(вх) 01.03', NULL, '"П"+"РД" 21.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'Боткинская', NULL, NULL, 'Эксп(вых) 20.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'Сочи (ПЦ)', NULL, 'Корр. "П"+"РД" 16.02', 'Эксп(вых) 16.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'Тулун (туберкул.)', NULL, 'Эксп(вых) 11.02', NULL, '"РД" 17.04', NULL, 'Эксп(вых) смет 16.06', NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'Ставрополь(хирург)', NULL, NULL, 'Эксп(вх) 12.03', NULL, NULL, '"РД" 30.06', NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'Севастополь(онко)', NULL, 'Эксп(вх) 06.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'Тропарево(поликл)', NULL, NULL, 'Эксп(вых) 05.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'Балашиха', NULL, 'Эксп(вых) 28.02', '"П"+"РД" 12.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'Ставрополь(кардиол)', NULL, 'Изыск. 20.02', NULL, 'Эксп(вх) 15.04', NULL, 'Эксп(вых) 04.06', NULL, '"РД" 06.08', NULL, NULL, NULL, NULL),
	(26, 'Свободный(роддом)', NULL, NULL, 'Эксп(вых) техн. 01.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 'Альтравита', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'Емельяново(поликл)', NULL, NULL, 'Эксп(вх) 02.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 'Челябинск(поликл)', NULL, NULL, 'Эксп(вых) 10.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 'Калининград(онко)', 'ГГЭ(вх) сметы 26.01', NULL, 'ГГЭ(вых) сметы 22.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'Норильск(ПЦ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'Улан-Удэ(ПЦ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'Гатчина(ПЦ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'Петрозаводск(ПЦ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 'Псков(ПЦ)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 'Дон', NULL, '"РД" 20.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'Тыва(больн)', NULL, NULL, 'Изыск 15.03', NULL, NULL, 'Эксп(вх) 28.06', NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'Ставрополь(детская)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'Севастополь(инф)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'Никол. на Амуре(леч.корп.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'Комс. на Амуре(детская)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'Комс. на Амуре(онко)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'Хабаровск(поликл)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'Подольск(детский)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'Пермь-научный центр', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'Якутия(онко)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'Чебоксары(инф)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `maintable` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
