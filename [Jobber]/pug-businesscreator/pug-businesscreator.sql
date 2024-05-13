CREATE TABLE IF NOT EXISTS `pug_businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(50) DEFAULT NULL, -- DONE
  `registers` text DEFAULT NULL, -- DONE
  `cookstations` text DEFAULT NULL, -- DONE
  `trays` text DEFAULT NULL, -- DONE
  `storage` text DEFAULT NULL, -- DONE
  `supplies` text DEFAULT NULL, -- DONE
  `seats` text DEFAULT NULL, -- DONE
  `trashcans` text DEFAULT NULL, -- DONE
  `blip` text DEFAULT NULL, -- DONE
  `duty` text DEFAULT NULL, -- DONE
  `bossmenu` text DEFAULT NULL, -- DONE
  `locker` text DEFAULT NULL, -- DONE
  `animations` text DEFAULT NULL, -- DONE
  `props` text DEFAULT NULL, -- DONE
  `peds` text DEFAULT NULL, -- DONE
  `zone` text DEFAULT NULL, -- DONE
  `whiteboard` text DEFAULT NULL, -- DONE
  `garage` text DEFAULT NULL, -- DONE
  `items` text DEFAULT NULL, -- DONE
  `createditems` text DEFAULT NULL, -- DONE
  `creator` text DEFAULT NULL, -- DONE
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
