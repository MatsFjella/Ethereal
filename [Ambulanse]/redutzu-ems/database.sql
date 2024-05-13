ALTER TABLE `players`
ADD `ems_image` mediumtext DEFAULT NULL;

CREATE TABLE IF NOT EXISTS `ems_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `ems_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `ems_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `players` mediumtext DEFAULT NULL,
  `doctors` mediumtext DEFAULT NULL,
  `invoices` mediumtext DEFAULT NULL,
  `images` mediumtext DEFAULT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;

-- This is optional

INSERT INTO `ems_invoices` (`id`, `name`, `amount`, `createdAt`) VALUES
(NULL, 'Breast Surgery', 5000, NULL),
(NULL, 'Thoracic Surgery', 4000, NULL),
(NULL, 'Gynecological Surgery', 8000, NULL),
(NULL, 'Urological Surgery', 7500, NULL),
(NULL, 'Colorectal Surgery', 3700, NULL),
(NULL, 'Gallbladder removal', 9000, NULL),
(NULL, 'Hysterectomies', 2000, NULL),
(NULL, 'Myomectomies', 3000, NULL),
(NULL, 'Spinal Surgery', 10000, NULL),
(NULL, 'Shoulder Surgery', 8000, NULL),
(NULL, 'Arthroscopic Surgery', 9300, NULL);

INSERT INTO `ems_codes` (`id`, `code`, `name`, `createdAt`) VALUES
(NULL, '1-100', 'Dead Person', NULL),
(NULL, '1-110', 'Injured Person', NULL),
(NULL, '1-120', 'Dead Officer', NULL),
(NULL, '1-130', 'Injured Officer', NULL),
(NULL, '1-140', 'Car crash', NULL),
(NULL, '1-150', 'Motocycle crash', NULL),
(NULL, '1-160', 'Plane crash', NULL),
(NULL, '1-170', 'Boat crash', NULL),
(NULL, '1-180', 'Burn injury', NULL),
(NULL, '1-190', 'Suicide', NULL),
(NULL, '1-200', 'Suicide attempt', NULL);