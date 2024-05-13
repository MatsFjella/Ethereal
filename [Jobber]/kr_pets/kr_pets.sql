CREATE TABLE IF NOT EXISTS `kr_pets` (
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `sniffedItems` varchar(255) DEFAULT NULL,
  `bornAt` int(11) DEFAULT NULL,
  `stored` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `stored_pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;