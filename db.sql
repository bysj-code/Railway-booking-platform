/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tieludingpiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tieludingpiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tieludingpiao`;

/*Table structure for table `checi` */

DROP TABLE IF EXISTS `checi`;

CREATE TABLE `checi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `checi_name` varchar(200) DEFAULT NULL COMMENT '车次标题 Search111 ',
  `checi_photo` varchar(200) DEFAULT NULL COMMENT '火车照片',
  `checi_types` int(11) DEFAULT NULL COMMENT '火车类型 Search111',
  `checi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `checi_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `checi_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `checi_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `section_number` int(11) DEFAULT NULL COMMENT '车厢',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `checi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `checi_content` longtext COMMENT '经停站、到达时间详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车次信息';

/*Data for the table `checi` */

insert  into `checi`(`id`,`checi_name`,`checi_photo`,`checi_types`,`checi_new_money`,`checi_chufadi`,`checi_mudidi`,`checi_time`,`section_number`,`zuowei_number`,`shangxia_types`,`checi_delete`,`checi_content`,`create_time`) values (1,'车次标题1','upload/checi1.jpg',2,'241.99','出发地1','目的地1','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情1','2023-04-10 11:34:01'),(2,'车次标题2','upload/checi2.jpg',2,'293.73','出发地2','目的地2','2023-04-10 11:34:01',1,20,1,1,'经停站、到达时间详情2','2023-04-10 11:34:01'),(3,'车次标题3','upload/checi3.jpg',1,'454.04','出发地3','目的地3','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情3','2023-04-10 11:34:01'),(4,'车次标题4','upload/checi4.jpg',2,'294.68','出发地4','目的地4','2023-04-10 11:34:01',2,20,1,1,'经停站、到达时间详情4','2023-04-10 11:34:01'),(5,'车次标题5','upload/checi5.jpg',2,'359.02','出发地5','目的地5','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情5','2023-04-10 11:34:01'),(6,'车次标题6','upload/checi6.jpg',1,'184.93','出发地6','目的地6','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情6','2023-04-10 11:34:01'),(7,'车次标题7','upload/checi7.jpg',1,'314.30','出发地7','目的地7','2023-04-10 11:34:01',2,20,1,1,'经停站、到达时间详情7','2023-04-10 11:34:01'),(8,'车次标题8','upload/checi1.jpg',1,'283.06','出发地8','目的地8','2023-04-10 11:34:01',2,20,1,1,'经停站、到达时间详情8','2023-04-10 11:34:01'),(9,'车次标题9','upload/checi2.jpg',3,'149.27','出发地9','目的地9','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情9','2023-04-10 11:34:01'),(10,'车次标题10','upload/checi3.jpg',3,'421.89','出发地10','目的地10','2023-04-10 11:34:01',1,20,1,1,'经停站、到达时间详情10','2023-04-10 11:34:01'),(11,'车次标题11','upload/checi4.jpg',3,'359.75','出发地11','目的地11','2023-04-10 11:34:01',2,20,1,1,'经停站、到达时间详情11','2023-04-10 11:34:01'),(12,'车次标题12','upload/checi5.jpg',1,'417.03','出发地12','目的地12','2023-04-10 11:34:01',3,20,1,1,'经停站、到达时间详情12','2023-04-10 11:34:01'),(13,'车次标题13','upload/checi6.jpg',1,'174.00','出发地13','目的地13','2023-04-10 11:34:01',1,20,1,1,'经停站、到达时间详情13','2023-04-10 11:34:01'),(14,'车次标题14','upload/checi7.jpg',2,'44.82','出发地14','目的地14','2023-04-10 11:34:01',1,20,1,1,'经停站、到达时间详情14','2023-04-10 11:34:01');

/*Table structure for table `checi_collection` */

DROP TABLE IF EXISTS `checi_collection`;

CREATE TABLE `checi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `checi_id` int(11) DEFAULT NULL COMMENT '车次',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `checi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='车次收藏';

/*Data for the table `checi_collection` */

insert  into `checi_collection`(`id`,`checi_id`,`yonghu_id`,`checi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(2,2,2,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(3,3,2,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(4,4,1,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(5,5,3,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(6,6,1,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(9,9,2,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(10,10,3,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(13,13,3,1,'2023-04-10 11:34:01','2023-04-10 11:34:01'),(14,14,2,1,'2023-04-10 11:34:01','2023-04-10 11:34:01');

/*Table structure for table `checi_commentback` */

DROP TABLE IF EXISTS `checi_commentback`;

CREATE TABLE `checi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `checi_id` int(11) DEFAULT NULL COMMENT '车次',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `checi_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='车次评价';

/*Data for the table `checi_commentback` */

insert  into `checi_commentback`(`id`,`checi_id`,`yonghu_id`,`checi_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-10 11:34:01','回复信息1','2023-04-10 11:34:01','2023-04-10 11:34:01'),(2,2,3,'评价内容2','2023-04-10 11:34:01','回复信息2','2023-04-10 11:34:01','2023-04-10 11:34:01'),(3,3,3,'评价内容3','2023-04-10 11:34:01','回复信息3','2023-04-10 11:34:01','2023-04-10 11:34:01'),(4,4,2,'评价内容4','2023-04-10 11:34:01','回复信息4','2023-04-10 11:34:01','2023-04-10 11:34:01'),(5,5,1,'评价内容5','2023-04-10 11:34:01','回复信息5','2023-04-10 11:34:01','2023-04-10 11:34:01'),(6,6,1,'评价内容6','2023-04-10 11:34:01','回复信息6','2023-04-10 11:34:01','2023-04-10 11:34:01'),(7,7,3,'评价内容7','2023-04-10 11:34:01','回复信息7','2023-04-10 11:34:01','2023-04-10 11:34:01'),(8,8,1,'评价内容8','2023-04-10 11:34:01','回复信息8','2023-04-10 11:34:01','2023-04-10 11:34:01'),(9,9,3,'评价内容9','2023-04-10 11:34:01','回复信息9','2023-04-10 11:34:01','2023-04-10 11:34:01'),(10,10,3,'评价内容10','2023-04-10 11:34:01','回复信息10','2023-04-10 11:34:01','2023-04-10 11:34:01'),(11,11,2,'评价内容11','2023-04-10 11:34:01','回复信息11','2023-04-10 11:34:01','2023-04-10 11:34:01'),(12,12,1,'评价内容12','2023-04-10 11:34:01','回复信息12','2023-04-10 11:34:01','2023-04-10 11:34:01'),(13,13,3,'评价内容13','2023-04-10 11:34:01','回复信息13','2023-04-10 11:34:01','2023-04-10 11:34:01'),(14,14,1,'评价内容14','2023-04-10 11:34:01','回复信息14','2023-04-10 11:34:01','2023-04-10 11:34:01'),(15,14,1,'9999912312312asdasdasd','2023-04-10 13:28:08',NULL,NULL,'2023-04-10 13:28:08');

/*Table structure for table `checi_order` */

DROP TABLE IF EXISTS `checi_order`;

CREATE TABLE `checi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `checi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `checi_id` int(11) DEFAULT NULL COMMENT '车次',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `checi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `checi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `buy_section_number` int(11) DEFAULT NULL COMMENT '车厢',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购票订单';

/*Data for the table `checi_order` */

insert  into `checi_order`(`id`,`checi_order_uuid_number`,`checi_id`,`yonghu_id`,`checi_order_true_price`,`checi_order_types`,`buy_section_number`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1681103363710',14,1,'89.64',105,NULL,'17,18','2023-04-10','2023-04-10 13:09:24','2023-04-10 13:09:24'),(2,'1681104480710',6,1,'554.79',102,NULL,'1,2,3','2023-04-10','2023-04-10 13:28:01','2023-04-10 13:28:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (103,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-10 11:33:48'),(104,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-10 11:33:48'),(105,'checi_types','火车类型',1,'火车类型1',NULL,NULL,'2023-04-10 11:33:48'),(106,'checi_types','火车类型',2,'火车类型2',NULL,NULL,'2023-04-10 11:33:48'),(107,'checi_types','火车类型',3,'火车类型3',NULL,NULL,'2023-04-10 11:33:48'),(108,'checi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-10 11:33:48'),(109,'checi_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-10 11:33:48'),(110,'checi_order_types','订单类型',102,'退款',NULL,NULL,'2023-04-10 11:33:48'),(111,'checi_order_types','订单类型',103,'可取票',NULL,NULL,'2023-04-10 11:33:48'),(112,'checi_order_types','订单类型',104,'已取票',NULL,NULL,'2023-04-10 11:33:48'),(113,'checi_order_types','订单类型',105,'已评论',NULL,NULL,'2023-04-10 11:33:48'),(114,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-10 11:33:48'),(115,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-10 11:33:48'),(116,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-10 11:33:48'),(117,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-10 11:33:48'),(118,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-10 11:33:48'),(119,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-10 11:33:48'),(120,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-10 11:33:48');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',230,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(2,'帖子标题2',3,NULL,'发布内容2',41,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(3,'帖子标题3',2,NULL,'发布内容3',200,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(4,'帖子标题4',1,NULL,'发布内容4',497,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(5,'帖子标题5',1,NULL,'发布内容5',495,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(6,'帖子标题6',2,NULL,'发布内容6',389,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(7,'帖子标题7',2,NULL,'发布内容7',379,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(8,'帖子标题8',1,NULL,'发布内容8',69,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(9,'帖子标题9',1,NULL,'发布内容9',129,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(10,'帖子标题10',1,NULL,'发布内容10',242,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(11,'帖子标题11',3,NULL,'发布内容11',50,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(12,'帖子标题12',2,NULL,'发布内容12',400,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(13,'帖子标题13',2,NULL,'发布内容13',237,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(14,'帖子标题14',2,NULL,'发布内容14',161,1,'2023-04-10 11:34:01','2023-04-10 11:34:01','2023-04-10 11:34:01'),(15,NULL,NULL,1,'123',14,2,'2023-04-10 13:26:14',NULL,'2023-04-10 13:26:14'),(16,NULL,1,NULL,'333333333333333',14,2,'2023-04-10 13:30:04',NULL,'2023-04-10 13:30:04');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-10 11:34:01','公告详情1','2023-04-10 11:34:01'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-10 11:34:01','公告详情2','2023-04-10 11:34:01'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-10 11:34:01','公告详情3','2023-04-10 11:34:01'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-10 11:34:01','公告详情4','2023-04-10 11:34:01'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-10 11:34:01','公告详情5','2023-04-10 11:34:01'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-10 11:34:01','公告详情6','2023-04-10 11:34:01'),(7,'公告标题7',2,'upload/news7.jpg','2023-04-10 11:34:01','公告详情7','2023-04-10 11:34:01'),(8,'公告标题8',3,'upload/news8.jpg','2023-04-10 11:34:01','公告详情8','2023-04-10 11:34:01'),(9,'公告标题9',1,'upload/news9.jpg','2023-04-10 11:34:01','公告详情9','2023-04-10 11:34:01'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-10 11:34:01','公告详情10','2023-04-10 11:34:01'),(11,'公告标题11',3,'upload/news11.jpg','2023-04-10 11:34:01','公告详情11','2023-04-10 11:34:01'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-10 11:34:01','公告详情12','2023-04-10 11:34:01'),(13,'公告标题13',3,'upload/news13.jpg','2023-04-10 11:34:01','公告详情13','2023-04-10 11:34:01'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-10 11:34:01','公告详情14','2023-04-10 11:34:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','13db9s4trrbw4g78ml1kf8ynuo04tilp','2023-04-10 13:03:41','2023-04-10 14:29:48'),(2,1,'admin','users','管理员','6mbgtxk43gjs1w6ekjj61yr324tg6dvh','2023-04-10 13:23:09','2023-04-10 14:31:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-10 11:33:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001',1,'836.35',1,'2023-04-10 11:34:01'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002',1,'513.40',1,'2023-04-10 11:34:01'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003',2,'169.61',1,'2023-04-10 11:34:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
