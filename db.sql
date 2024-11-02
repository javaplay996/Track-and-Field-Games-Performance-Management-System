/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4o4c3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4o4c3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4o4c3`;

/*Table structure for table `bisaibaoming` */

DROP TABLE IF EXISTS `bisaibaoming`;

CREATE TABLE `bisaibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `shifoubaoming` varchar(200) DEFAULT NULL COMMENT '是否报名',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='比赛报名';

/*Data for the table `bisaibaoming` */

insert  into `bisaibaoming`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`bisaixiangmu`,`shifoubaoming`,`baomingshijian`,`wenjian`,`duiyuanzhanghao`,`duiyuanxingming`,`sfsh`,`shhf`) values (61,'2021-03-24 19:15:10','编号1','比赛名称1','比赛项目1','是','2021-03-24','','队员账号1','队员姓名1','是',''),(62,'2021-03-24 19:15:10','编号2','比赛名称2','比赛项目2','是','2021-03-24','','队员账号2','队员姓名2','是',''),(63,'2021-03-24 19:15:10','编号3','比赛名称3','比赛项目3','是','2021-03-24','','队员账号3','队员姓名3','是',''),(64,'2021-03-24 19:15:10','编号4','比赛名称4','比赛项目4','是','2021-03-24','','队员账号4','队员姓名4','是',''),(65,'2021-03-24 19:15:10','编号5','比赛名称5','比赛项目5','是','2021-03-24','','队员账号5','队员姓名5','是',''),(66,'2021-03-24 19:15:10','编号6','比赛名称6','比赛项目6','是','2021-03-24','','队员账号6','队员姓名6','是','');

/*Table structure for table `bisaixiangmu` */

DROP TABLE IF EXISTS `bisaixiangmu`;

CREATE TABLE `bisaixiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='比赛项目';

/*Data for the table `bisaixiangmu` */

insert  into `bisaixiangmu`(`id`,`addtime`,`bisaixiangmu`) values (51,'2021-03-24 19:15:10','比赛项目1'),(52,'2021-03-24 19:15:10','比赛项目2'),(53,'2021-03-24 19:15:10','比赛项目3'),(54,'2021-03-24 19:15:10','比赛项目4'),(55,'2021-03-24 19:15:10','比赛项目5'),(56,'2021-03-24 19:15:10','比赛项目6');

/*Table structure for table `bisaixinxi` */

DROP TABLE IF EXISTS `bisaixinxi`;

CREATE TABLE `bisaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `bisaishijian` datetime DEFAULT NULL COMMENT '比赛时间',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `bisaiyaoqiu` varchar(200) DEFAULT NULL COMMENT '比赛要求',
  `bisaineirong` longtext COMMENT '比赛内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='比赛信息';

/*Data for the table `bisaixinxi` */

insert  into `bisaixinxi`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`bisaixiangmu`,`tupian`,`bisaishijian`,`wenjian`,`bisaididian`,`bisaiyaoqiu`,`bisaineirong`) values (41,'2021-03-24 19:15:10','编号1','比赛名称1','比赛项目1','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian1.jpg','2021-03-24 19:15:10','','比赛地点1','比赛要求1','比赛内容1'),(42,'2021-03-24 19:15:10','编号2','比赛名称2','比赛项目2','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian2.jpg','2021-03-24 19:15:10','','比赛地点2','比赛要求2','比赛内容2'),(43,'2021-03-24 19:15:10','编号3','比赛名称3','比赛项目3','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian3.jpg','2021-03-24 19:15:10','','比赛地点3','比赛要求3','比赛内容3'),(44,'2021-03-24 19:15:10','编号4','比赛名称4','比赛项目4','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian4.jpg','2021-03-24 19:15:10','','比赛地点4','比赛要求4','比赛内容4'),(45,'2021-03-24 19:15:10','编号5','比赛名称5','比赛项目5','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian5.jpg','2021-03-24 19:15:10','','比赛地点5','比赛要求5','比赛内容5'),(46,'2021-03-24 19:15:10','编号6','比赛名称6','比赛项目6','http://localhost:8080/ssm4o4c3/upload/bisaixinxi_tupian6.jpg','2021-03-24 19:15:10','','比赛地点6','比赛要求6','比赛内容6');

/*Table structure for table `caipanyuan` */

DROP TABLE IF EXISTS `caipanyuan`;

CREATE TABLE `caipanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584667231 DEFAULT CHARSET=utf8 COMMENT='裁判员';

/*Data for the table `caipanyuan` */

insert  into `caipanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (21,'2021-03-24 19:15:10','裁判员1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian1.jpg'),(22,'2021-03-24 19:15:10','裁判员2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian2.jpg'),(23,'2021-03-24 19:15:10','裁判员3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian3.jpg'),(24,'2021-03-24 19:15:10','裁判员4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian4.jpg'),(25,'2021-03-24 19:15:10','裁判员5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian5.jpg'),(26,'2021-03-24 19:15:10','裁判员6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm4o4c3/upload/caipanyuan_zhaopian6.jpg'),(1616584667230,'2021-03-24 19:17:47','22','22','阿萨水电费',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4o4c3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm4o4c3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4o4c3/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `duiyuan` */

DROP TABLE IF EXISTS `duiyuan`;

CREATE TABLE `duiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duiyuanzhanghao` varchar(200) NOT NULL COMMENT '队员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duiyuanzhanghao` (`duiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584658282 DEFAULT CHARSET=utf8 COMMENT='队员';

/*Data for the table `duiyuan` */

insert  into `duiyuan`(`id`,`addtime`,`duiyuanzhanghao`,`mima`,`duiyuanxingming`,`nianling`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (31,'2021-03-24 19:15:10','队员1','123456','队员姓名1',1,'男','13823888881','773890001@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian1.jpg'),(32,'2021-03-24 19:15:10','队员2','123456','队员姓名2',2,'男','13823888882','773890002@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian2.jpg'),(33,'2021-03-24 19:15:10','队员3','123456','队员姓名3',3,'男','13823888883','773890003@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian3.jpg'),(34,'2021-03-24 19:15:10','队员4','123456','队员姓名4',4,'男','13823888884','773890004@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian4.jpg'),(35,'2021-03-24 19:15:10','队员5','123456','队员姓名5',5,'男','13823888885','773890005@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian5.jpg'),(36,'2021-03-24 19:15:10','队员6','123456','队员姓名6',6,'男','13823888886','773890006@qq.com','http://localhost:8080/ssm4o4c3/upload/duiyuan_zhaopian6.jpg'),(1616584658281,'2021-03-24 19:17:38','11','11','11阿萨',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584842605 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-03-24 19:15:10','标题1','简介1','http://localhost:8080/ssm4o4c3/upload/news_picture1.jpg','内容1'),(122,'2021-03-24 19:15:10','标题2','简介2','http://localhost:8080/ssm4o4c3/upload/news_picture2.jpg','内容2'),(123,'2021-03-24 19:15:10','标题3','简介3','http://localhost:8080/ssm4o4c3/upload/news_picture3.jpg','内容3'),(124,'2021-03-24 19:15:10','标题4','简介4','http://localhost:8080/ssm4o4c3/upload/news_picture4.jpg','内容4'),(125,'2021-03-24 19:15:10','标题5','简介5','http://localhost:8080/ssm4o4c3/upload/news_picture5.jpg','内容5'),(126,'2021-03-24 19:15:10','标题6','简介6','http://localhost:8080/ssm4o4c3/upload/news_picture6.jpg','内容6'),(1616584842604,'2021-03-24 19:20:41','水电费','地方','http://localhost:8080/ssm4o4c3/upload/1616584834848.png','<p>水电费水电费</p><p><img src=\"http://localhost:8080/ssm4o4c3/upload/1616584840226.jpg\"></p>');

/*Table structure for table `qiquanxinxi` */

DROP TABLE IF EXISTS `qiquanxinxi`;

CREATE TABLE `qiquanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `shifouqiquan` varchar(200) DEFAULT NULL COMMENT '是否弃权',
  `qiquanyuanyin` longtext COMMENT '弃权原因',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='弃权信息';

/*Data for the table `qiquanxinxi` */

insert  into `qiquanxinxi`(`id`,`addtime`,`duiyuanzhanghao`,`duiyuanxingming`,`bisaimingcheng`,`bisaixiangmu`,`shifouqiquan`,`qiquanyuanyin`,`tijiaoriqi`,`sfsh`,`shhf`) values (71,'2021-03-24 19:15:10','队员账号1','队员姓名1','比赛名称1','比赛项目1','是','弃权原因1','2021-03-24','是',''),(72,'2021-03-24 19:15:10','队员账号2','队员姓名2','比赛名称2','比赛项目2','是','弃权原因2','2021-03-24','是',''),(73,'2021-03-24 19:15:10','队员账号3','队员姓名3','比赛名称3','比赛项目3','是','弃权原因3','2021-03-24','是',''),(74,'2021-03-24 19:15:10','队员账号4','队员姓名4','比赛名称4','比赛项目4','是','弃权原因4','2021-03-24','是',''),(75,'2021-03-24 19:15:10','队员账号5','队员姓名5','比赛名称5','比赛项目5','是','弃权原因5','2021-03-24','是',''),(76,'2021-03-24 19:15:10','队员账号6','队员姓名6','比赛名称6','比赛项目6','是','弃权原因6','2021-03-24','是','');

/*Table structure for table `saiqianbianpai` */

DROP TABLE IF EXISTS `saiqianbianpai`;

CREATE TABLE `saiqianbianpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比塞名称',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `haomabianzhi` varchar(200) DEFAULT NULL COMMENT '号码编制',
  `saicishezhi` varchar(200) DEFAULT NULL COMMENT '赛次设置',
  `saiqianfenzu` varchar(200) DEFAULT NULL COMMENT '赛前分组',
  `bianpaishijian` date DEFAULT NULL COMMENT '编排时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584691594 DEFAULT CHARSET=utf8 COMMENT='赛前编排';

/*Data for the table `saiqianbianpai` */

insert  into `saiqianbianpai`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`bisaixiangmu`,`duiyuanzhanghao`,`duiyuanxingming`,`haomabianzhi`,`saicishezhi`,`saiqianfenzu`,`bianpaishijian`,`zhanghao`,`xingming`) values (91,'2021-03-24 19:15:10','编号1','比塞名称1','比赛项目1','队员账号1','队员姓名1','号码编制1','赛次设置1','赛前分组1','2021-03-24','账号1','姓名1'),(92,'2021-03-24 19:15:10','编号2','比塞名称2','比赛项目2','队员账号2','队员姓名2','号码编制2','赛次设置2','赛前分组2','2021-03-24','账号2','姓名2'),(93,'2021-03-24 19:15:10','编号3','比塞名称3','比赛项目3','队员账号3','队员姓名3','号码编制3','赛次设置3','赛前分组3','2021-03-24','账号3','姓名3'),(94,'2021-03-24 19:15:10','编号4','比塞名称4','比赛项目4','队员账号4','队员姓名4','号码编制4','赛次设置4','赛前分组4','2021-03-24','账号4','姓名4'),(95,'2021-03-24 19:15:10','编号5','比塞名称5','比赛项目5','队员账号5','队员姓名5','号码编制5','赛次设置5','赛前分组5','2021-03-24','账号5','姓名5'),(96,'2021-03-24 19:15:10','编号6','比塞名称6','比赛项目6','队员账号6','队员姓名6','号码编制6','赛次设置6','赛前分组6','2021-03-24','账号6','姓名6'),(1616584691593,'2021-03-24 19:18:11','编号6','比赛名称6','比赛项目6','11','11阿萨','2313','1312','12312','2021-03-24','22','阿萨水电费');

/*Table structure for table `saiqiantongzhi` */

DROP TABLE IF EXISTS `saiqiantongzhi`;

CREATE TABLE `saiqiantongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhibiaoti` varchar(200) DEFAULT NULL COMMENT '通知标题',
  `jianjie` longtext COMMENT '简介',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `tongzhineirong` longtext COMMENT '通知内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='赛前通知';

/*Data for the table `saiqiantongzhi` */

insert  into `saiqiantongzhi`(`id`,`addtime`,`tongzhibiaoti`,`jianjie`,`fengmian`,`tongzhineirong`,`faburen`,`fabushijian`) values (11,'2021-03-24 19:15:10','通知标题1','简介1','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian1.jpg','通知内容1','发布人1','2021-03-24'),(12,'2021-03-24 19:15:10','通知标题2','简介2','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian2.jpg','通知内容2','发布人2','2021-03-24'),(13,'2021-03-24 19:15:10','通知标题3','简介3','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian3.jpg','通知内容3','发布人3','2021-03-24'),(14,'2021-03-24 19:15:10','通知标题4','简介4','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian4.jpg','通知内容4','发布人4','2021-03-24'),(15,'2021-03-24 19:15:10','通知标题5','简介5','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian5.jpg','通知内容5','发布人5','2021-03-24'),(16,'2021-03-24 19:15:10','通知标题6','简介6','http://localhost:8080/ssm4o4c3/upload/saiqiantongzhi_fengmian6.jpg','通知内容6','发布人6','2021-03-24');

/*Table structure for table `saishichengji` */

DROP TABLE IF EXISTS `saishichengji`;

CREATE TABLE `saishichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `saishichengji` varchar(200) DEFAULT NULL COMMENT '赛事成绩',
  `saishipaiming` varchar(200) DEFAULT NULL COMMENT '赛事排名',
  `dedaojiangxiang` varchar(200) DEFAULT NULL COMMENT '得到奖项',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584784295 DEFAULT CHARSET=utf8 COMMENT='赛事成绩';

/*Data for the table `saishichengji` */

insert  into `saishichengji`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`jieshushijian`,`duiyuanzhanghao`,`duiyuanxingming`,`saishichengji`,`saishipaiming`,`dedaojiangxiang`,`dengjishijian`,`zhanghao`,`xingming`) values (111,'2021-03-24 19:15:10','编号1','比赛名称1','2021-03-24 19:15:10','队员账号1','队员姓名1','赛事成绩1','赛事排名1','得到奖项1','2021-03-24 19:15:10','账号1','姓名1'),(112,'2021-03-24 19:15:10','编号2','比赛名称2','2021-03-24 19:15:10','队员账号2','队员姓名2','赛事成绩2','赛事排名2','得到奖项2','2021-03-24 19:15:10','账号2','姓名2'),(113,'2021-03-24 19:15:10','编号3','比赛名称3','2021-03-24 19:15:10','队员账号3','队员姓名3','赛事成绩3','赛事排名3','得到奖项3','2021-03-24 19:15:10','账号3','姓名3'),(114,'2021-03-24 19:15:10','编号4','比赛名称4','2021-03-24 19:15:10','队员账号4','队员姓名4','赛事成绩4','赛事排名4','得到奖项4','2021-03-24 19:15:10','账号4','姓名4'),(115,'2021-03-24 19:15:10','编号5','比赛名称5','2021-03-24 19:15:10','队员账号5','队员姓名5','赛事成绩5','赛事排名5','得到奖项5','2021-03-24 19:15:10','账号5','姓名5'),(116,'2021-03-24 19:15:10','编号6','比赛名称6','2021-03-24 19:15:10','队员账号6','队员姓名6','赛事成绩6','赛事排名6','得到奖项6','2021-03-24 19:15:10','账号6','姓名6'),(1616584784294,'2021-03-24 19:19:43','编号4','比赛名称4','2021-03-25 01:00:00','11','11阿萨','50','12','水电费地方','2021-03-24 00:00:00','22','阿萨水电费');

/*Table structure for table `saizhongxinxi` */

DROP TABLE IF EXISTS `saizhongxinxi`;

CREATE TABLE `saizhongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `yuanhaomabianzhi` varchar(200) DEFAULT NULL COMMENT '原号码编制',
  `xinhaomabianzhi` varchar(200) DEFAULT NULL COMMENT '新号码编制',
  `yuansaici` varchar(200) DEFAULT NULL COMMENT '原赛次',
  `xinsaici` varchar(200) DEFAULT NULL COMMENT '新赛次',
  `yuanfenzu` varchar(200) DEFAULT NULL COMMENT '原分组',
  `xinfenzu` varchar(200) DEFAULT NULL COMMENT '新分组',
  `genggaishijian` datetime DEFAULT NULL COMMENT '更改时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616584739170 DEFAULT CHARSET=utf8 COMMENT='赛中信息';

/*Data for the table `saizhongxinxi` */

insert  into `saizhongxinxi`(`id`,`addtime`,`bianhao`,`bisaimingcheng`,`bisaixiangmu`,`leixing`,`duiyuanzhanghao`,`duiyuanxingming`,`yuanhaomabianzhi`,`xinhaomabianzhi`,`yuansaici`,`xinsaici`,`yuanfenzu`,`xinfenzu`,`genggaishijian`,`beizhu`,`zhanghao`,`xingming`) values (101,'2021-03-24 19:15:10','编号1','比赛名称1','比赛项目1','改名','队员账号1','队员姓名1','原号码编制1','新号码编制1','原赛次1','新赛次1','原分组1','新分组1','2021-03-24 19:15:10','备注1','账号1','姓名1'),(102,'2021-03-24 19:15:10','编号2','比赛名称2','比赛项目2','改名','队员账号2','队员姓名2','原号码编制2','新号码编制2','原赛次2','新赛次2','原分组2','新分组2','2021-03-24 19:15:10','备注2','账号2','姓名2'),(103,'2021-03-24 19:15:10','编号3','比赛名称3','比赛项目3','改名','队员账号3','队员姓名3','原号码编制3','新号码编制3','原赛次3','新赛次3','原分组3','新分组3','2021-03-24 19:15:10','备注3','账号3','姓名3'),(104,'2021-03-24 19:15:10','编号4','比赛名称4','比赛项目4','改名','队员账号4','队员姓名4','原号码编制4','新号码编制4','原赛次4','新赛次4','原分组4','新分组4','2021-03-24 19:15:10','备注4','账号4','姓名4'),(105,'2021-03-24 19:15:10','编号5','比赛名称5','比赛项目5','改名','队员账号5','队员姓名5','原号码编制5','新号码编制5','原赛次5','新赛次5','原分组5','新分组5','2021-03-24 19:15:10','备注5','账号5','姓名5'),(106,'2021-03-24 19:15:10','编号6','比赛名称6','比赛项目6','改名','队员账号6','队员姓名6','原号码编制6','新号码编制6','原赛次6','新赛次6','原分组6','新分组6','2021-03-24 19:15:10','备注6','账号6','姓名6'),(1616584725899,'2021-03-24 19:18:45','编号2','比赛名称2','比赛项目2','增加','队员4','队员姓名4','','','','','','',NULL,'','22','阿萨水电费'),(1616584739169,'2021-03-24 19:18:58','编号3','比赛名称3','比赛项目3','该项','队员2','队员姓名2','阿道夫','地方','第三方','第三方第三方','水电费','水电费','2021-03-24 09:09:10','水电费','22','阿萨水电费');

/*Table structure for table `teshuduiyuan` */

DROP TABLE IF EXISTS `teshuduiyuan`;

CREATE TABLE `teshuduiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `duiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '队员账号',
  `duiyuanxingming` varchar(200) DEFAULT NULL COMMENT '队员姓名',
  `yuanyin` longtext COMMENT '原因',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='特殊队员';

/*Data for the table `teshuduiyuan` */

insert  into `teshuduiyuan`(`id`,`addtime`,`mingcheng`,`duiyuanzhanghao`,`duiyuanxingming`,`yuanyin`,`dengjiriqi`,`beizhu`) values (81,'2021-03-24 19:15:10','名称1','队员账号1','队员姓名1','原因1','2021-03-24','备注1'),(82,'2021-03-24 19:15:10','名称2','队员账号2','队员姓名2','原因2','2021-03-24','备注2'),(83,'2021-03-24 19:15:10','名称3','队员账号3','队员姓名3','原因3','2021-03-24','备注3'),(84,'2021-03-24 19:15:10','名称4','队员账号4','队员姓名4','原因4','2021-03-24','备注4'),(85,'2021-03-24 19:15:10','名称5','队员账号5','队员姓名5','原因5','2021-03-24','备注5'),(86,'2021-03-24 19:15:10','名称6','队员账号6','队员姓名6','原因6','2021-03-24','备注6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616584667230,'22','caipanyuan','裁判员','uprymmi1a2zdywn14zzeqr69p1og50rd','2021-03-24 19:17:55','2021-03-24 20:17:55'),(2,1616584658281,'11','duiyuan','队员','p2mbqqxwv6u8t8gmayff06wewdk7r61u','2021-03-24 19:20:04','2021-03-24 20:21:26'),(3,1,'abo','users','管理员','a1vjm1dd4o61fed879bg8io9zlkyf09n','2021-03-24 19:20:24','2021-03-24 20:20:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-24 19:15:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
