
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET CHARACTER SET 'utf8' */;

# Host: localhost    Database: bookstore
# ------------------------------------------------------
# Server version 5.0.19-nt

DROP DATABASE IF EXISTS `olshop`;
CREATE DATABASE `olshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `olshop`;

#
# Table structure for table bookinfo
#

CREATE TABLE `productinfo` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(128) NOT NULL default '',
  `typeid` int(10) NOT NULL default '1',
  `intro` text,
  `marketprice` double NOT NULL default '0.00',
  `sellprice` double NOT NULL default '0.00',
  `transprice` double NOT NULL default '0.00',
  `sellcount` int NOT NULL default '0',
  `picture` varchar(128) default NULL,
  `date` varchar(32) NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



#
# Table structure for table order
#

CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `userid` int(10) unsigned NOT NULL default '0',
  `number` int(10) unsigned NOT NULL default '0',
  `recipients` varchar(128)  default '',
  `address` varchar(256)  default '',
  `postcode` varchar(6)  default '',
  `tel` varchar(20)  default '' ,
  `orderdate` varchar(30)   default '0000-00-00 00:00:00',
  `status` int(3)  default 0,
  `cart` boolean default true,
  `transprice` int(10),
  `transport`  varchar(20),
  `payway` varchar(20),
  PRIMARY KEY  (`id`),
  KEY `FK_order_1` (`pid`),
  KEY `FK_order_2` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#状态：0；未付款  1：已付款，等待发货  2：已发货   3：交易成功




#
# Table structure for table userinfo
#

CREATE TABLE `userinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(15) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `address` varchar(100) default NULL,
  `postcode` varchar(6) default NULL,
  `power` int(3) default 0,
  `tel` varchar(32) ,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table userinfo
#

INSERT INTO `userinfo` (`id`,`username`,`pwd`,`email`,`address`,`postcode`,`power`) VALUES (1,'user','123','user@sohu.com','sdf','102209',0);
INSERT INTO `userinfo` (`id`,`username`,`pwd`,`email`,`address`,`postcode`,`power`) VALUES (2,'admin','123','user@sohu.com','sdf','102209',1);

#
#  Foreign keys for table order
#

ALTER TABLE `order`
ADD FOREIGN KEY (`pid`) REFERENCES `productinfo` (`pid`),
  ADD FOREIGN KEY (`userid`) REFERENCES `userinfo` (`id`);







/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

