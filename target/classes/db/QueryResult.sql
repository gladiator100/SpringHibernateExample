# Host: localhost  (Version 5.7.17-log)
# Date: 2018-01-05 16:18:32
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "restaurant"
#

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `id` int(10) NOT NULL,
  `rest_code` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "restaurant"
#

GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%' WITH GRANT OPTION;

INSERT INTO `restaurant` VALUES (1,'1','Chipotale','Exton'),(2,'2','Wawa','Malvern'),(3,'WG','Wagmen','KOP'),(4,'Panera ','Panera Bread','Horsham'),(5,'CH','Chickfile','Chester Springs'),(6,'CHIL','Chilies','Downington'),(7,'OG','Olive Garden','Lansdale');
