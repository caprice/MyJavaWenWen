-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema javaww
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ javaww;
USE javaww;

--
-- Table structure for table `javaww`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL auto_increment,
  `adminname` varchar(255) default NULL,
  `adminpwd` varchar(255) default NULL,
  `adminlevel` int(11) default NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`,`adminname`,`adminpwd`,`adminlevel`) VALUES 
 (1,'severus','severus',1),
 (2,'jerry','jerry',2),
 (3,'tom','tom',3),
 (4,'herry','herry',4),
 (5,'snap','snap',5);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `javaww`.`answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `aid` int(11) NOT NULL auto_increment,
  `quesans` varchar(255) default NULL,
  `anstime` datetime default NULL,
  `status` int(11) default NULL,
  `qid` int(11) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`aid`),
  KEY `FK752F2BDEB0AD58B6` (`qid`),
  KEY `FK752F2BDE8D53E775` (`userid`),
  CONSTRAINT `FK752F2BDE8D53E775` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK752F2BDEB0AD58B6` FOREIGN KEY (`qid`) REFERENCES `question` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`answer`
--

/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` (`aid`,`quesans`,`anstime`,`status`,`qid`,`userid`) VALUES 
 (1,'一种应用服务器 我学EJB时用过！！！										','2009-07-14 10:28:51',1,4,1),
 (2,'JSP Java Server Face 的缩写 做界面用！										','2009-07-15 10:30:33',1,3,1),
 (3,'还行吧 小项目用的少 一般用于大项目！										','2009-07-15 10:39:55',1,2,3),
 (4,'对不起 该答案已被删除！','2009-07-15 10:43:36',2,2,2),
 (5,'冬眠										','2009-07-15 16:11:05',1,10,2);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


--
-- Table structure for table `javaww`.`item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` int(11) NOT NULL auto_increment,
  `itemname` varchar(255) default NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`itemid`,`itemname`) VALUES 
 (1,'Java开发'),
 (2,'Java EE'),
 (3,'JavaEE 服务器'),
 (4,'数据库'),
 (5,'常见开源框架'),
 (6,'UML');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Table structure for table `javaww`.`question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `offerscore` int(11) default NULL,
  `status` int(11) default NULL,
  `questiontime` datetime default NULL,
  `clickcount` int(11) default NULL,
  `acceptflag` int(11) default NULL,
  `itemid` int(11) default NULL,
  `userid` int(11) default NULL,
  `subid` int(11) default NULL,
  PRIMARY KEY  (`qid`),
  KEY `FKBE5CA00678E25405` (`itemid`),
  KEY `FKBE5CA00623060CA` (`subid`),
  KEY `FKBE5CA0068D53E775` (`userid`),
  CONSTRAINT `FKBE5CA00623060CA` FOREIGN KEY (`subid`) REFERENCES `subitem` (`subid`),
  CONSTRAINT `FKBE5CA00678E25405` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`),
  CONSTRAINT `FKBE5CA0068D53E775` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`question`
--

/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`qid`,`title`,`content`,`offerscore`,`status`,`questiontime`,`clickcount`,`acceptflag`,`itemid`,`userid`,`subid`) VALUES 
 (1,'oracle如何分页？','oracle如何分页？												',10,1,'2009-07-13 14:32:47',2,2,4,1,8),
 (2,'spring用的多吗？','spring用的多吗？												',2,2,'2009-07-13 14:38:35',5,1,5,1,12),
 (3,'JSF是什么？','	JSF是什么？	JSF是什么？	JSF是什么？	JSF是什么？											',10,2,'2009-07-14 09:20:36',1,1,2,2,5),
 (4,'JBOSS是什么？','JBOSS是什么？JBOSS是什么？JBOSS是什么？JBOSS是什么？JBOSS是什么？JBOSS是什么？												',11,2,'2009-07-14 09:22:07',1,1,3,3,7),
 (5,'string与stringBuffer的区别？','string与stringBuffer的区别？												',1,1,'2009-07-15 14:24:18',0,2,1,1,1),
 (6,'servlet生命周期？','servlet生命周期？',2,1,'2009-07-15 15:32:56',0,2,2,1,2),
 (7,'sleep和wait的区别？','sleep和wait的区别？												',2,1,'2009-07-15 15:34:10',0,2,1,1,1),
 (8,'JavaScript如何制作标签？','JavaScript如何制作标签？												',1,1,'2009-07-15 15:35:05',0,2,2,1,3),
 (9,'对不起 该问题已被删除！','对不起 该问题已被删除！',1,1,'2009-07-15 15:35:56',0,2,6,1,14);
INSERT INTO `question` (`qid`,`title`,`content`,`offerscore`,`status`,`questiontime`,`clickcount`,`acceptflag`,`itemid`,`userid`,`subid`) VALUES 
 (10,'hibernate单词是什么意思？','hibernate单词是什么意思？												',1,2,'2009-07-15 15:36:54',1,1,5,3,11),
 (11,'Spring中的aop是什么意思？','Spring中的aop是什么意思？												',1,1,'2009-07-15 15:37:33',0,2,5,3,12),
 (12,'List map set的区别？','List map set的区别？												',1,1,'2009-07-15 15:38:12',0,2,1,3,1),
 (13,'jdo是什么？','jdo是什么？												',1,1,'2009-07-15 15:40:30',0,2,2,4,2),
 (14,'ejb用的多吗？','ejb用的多吗？												',1,1,'2009-07-15 15:40:59',0,2,2,4,4),
 (15,'weblogic用的多吗？','weblogic用的多吗？												',1,1,'2009-07-15 15:41:28',0,2,2,4,2),
 (16,'oracle如何构建存储过程？','oracle如何构建存储过程？												',1,1,'2009-07-15 15:43:04',0,2,4,2,8);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


--
-- Table structure for table `javaww`.`subitem`
--

DROP TABLE IF EXISTS `subitem`;
CREATE TABLE `subitem` (
  `subid` int(11) NOT NULL auto_increment,
  `subname` varchar(255) default NULL,
  `itemid` int(11) default NULL,
  PRIMARY KEY  (`subid`),
  KEY `FKF3D4255378E25405` (`itemid`),
  CONSTRAINT `FKF3D4255378E25405` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`subitem`
--

/*!40000 ALTER TABLE `subitem` DISABLE KEYS */;
INSERT INTO `subitem` (`subid`,`subname`,`itemid`) VALUES 
 (1,'Java SE',1),
 (2,'JSP/Servlet',2),
 (3,'Html/JavaScript/CSS',2),
 (4,'EJB 3.0',2),
 (5,'JSF',2),
 (6,'TomCat',3),
 (7,'JBOSS',3),
 (8,'Oracle',4),
 (9,'MySQL',4),
 (10,'Struts',5),
 (11,'Hibernate',5),
 (12,'Spring',5),
 (13,'Struts 2',5),
 (14,'UML',6);
/*!40000 ALTER TABLE `subitem` ENABLE KEYS */;


--
-- Table structure for table `javaww`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `userpwd` varchar(255) default NULL,
  `userques` varchar(255) default NULL,
  `userans` varchar(255) default NULL,
  `usermail` varchar(255) default NULL,
  `integral` int(11) default NULL,
  `grade` int(11) default NULL,
  `sex` varchar(255) default NULL,
  `realname` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `javaww`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`,`username`,`userpwd`,`userques`,`userans`,`usermail`,`integral`,`grade`,`sex`,`realname`) VALUES 
 (1,'severus','severus','用户名','severus','seveuszh@gmail.com',1015,3,'男','张树凯'),
 (2,'fuqiang','fuqiang','name','fuqiang','fuqiang843012@163.com',93,1,'男','付强'),
 (3,'liujie','liujie','name','liujie','liujie@gmail.com',33,1,'男','刘杰'),
 (4,'liuyang','liuyang','name','liuyang','user@gmail.com',23,1,'男','刘洋'),
 (5,'renzhiqiang','renzhiqiang','name','renzhiqiang','user@gmail.com',26,1,'男','任志强'),
 (6,'zhouyang','zhouyang','name','zhouyang','user@gmail.com',64,1,'男','周扬');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
