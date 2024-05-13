ALTER TABLE `players` ADD `profilePicture` varchar(1000) DEFAULT NULL;
ALTER TABLE `players` ADD `invoiceDarkTheme` int(1) NOT NULL DEFAULT 1;

CREATE TABLE IF NOT EXISTS `zerio_invoices` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `uuid` varchar(64) NOT NULL,
    `receiver` varchar(255) NOT NULL,
    `receiverName` varchar(255) DEFAULT NULL,
    `senderName` varchar(255) DEFAULT NULL,
    `senderPlayer` varchar(255) NOT NULL,
    `senderJob` varchar(255) NOT NULL,
    `price` int(5) NOT NULL,
    `reason` varchar(1024) NOT NULL,
    `sendDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `dueDate` timestamp NULL,
    `type` varchar(32) NOT NULL,
    `isPaid` int(1) DEFAULT 0,
    `category` varchar(64) NOT NULL,
    `products` LONGTEXT NOT NULL DEFAULT '[]',
    UNIQUE (`id`, `uuid`)
);

CREATE TABLE IF NOT EXISTS `zerio_invoices_stats` (
    `id` int NOT NULL AUTO_INCREMENT,
    `jobName` varchar(64) NOT NULL,
    `data` LONGTEXT NOT NULL DEFAULT '{}',
    UNIQUE (`id`, `jobName`)
);

CREATE TABLE IF NOT EXISTS `zerio_invoices_admins` (
    `id` int NOT NULL AUTO_INCREMENT,
    `identifier` varchar(64) NOT NULL,
    `username` varchar(64) NOT NULL,

    `serverOverview` int(1) NOT NULL DEFAULT 0,
    `jobOverview` int(1) NOT NULL DEFAULT 0,
    `lookupInvoice` int(1) NOT NULL DEFAULT 0,
    `lookupPlayer` int(1) NOT NULL DEFAULT 0,
    `manageAdmins` int(1) NOT NULL DEFAULT 0,

    `isMasterAccount` int(1) NOT NULL DEFAULT 0,
    UNIQUE (`id`, `identifier`)
);

CREATE TABLE IF NOT EXISTS `zerio_invoices_logs` (
    `id` int NOT NULL AUTO_INCREMENT,

    `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    `text` varchar(256) NOT NULL,
    
    UNIQUE (`id`)
);