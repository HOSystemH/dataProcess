/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.15 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`) values 
(1,'45dbe9f6-2','7279878a-b'),
(2,'27d0dbc6-8','30524745-3'),
(3,'e7d4cf91-f','0cc957f1-e'),
(4,'8e0dc160-4','6ad06401-f'),
(5,'86bd9b8b-1','92529a43-3'),
(6,'ea04e5ff-e','4b4aa9e6-c'),
(7,'fcb4d040-b','db97c0d9-3'),
(8,'d0b68a2b-4','6c8c0dee-0'),
(9,'2cbca012-a','4906a940-e'),
(10,'4337a81d-2','1837f328-d'),
(11,'1e9db426-2','10cc2a8b-b'),
(12,'656a3582-4','2f4752bd-c'),
(13,'25f5a304-8','354e453b-5'),
(14,'14d33b46-9','e0293d91-4'),
(15,'1f294c12-e','d996a843-f'),
(16,'deaabfd3-1','44d29fbb-4'),
(17,'dce36e1f-5','d87bcbbb-c'),
(18,'cb16bef5-b','64fcf58b-6'),
(19,'9967999b-c','de3ef1c1-7'),
(20,'127620b1-d','2741f759-b'),
(21,'469578cc-d','b8f34e4b-e'),
(22,'0e7b09ad-f','2e68f767-5'),
(23,'3a0487ca-9','3123eaff-e'),
(24,'292b159e-5','39a055d9-6'),
(25,'d47f8858-1','028c5c23-9'),
(26,'3ad88808-0','c900b342-3'),
(27,'b8647446-4','e5069982-a'),
(28,'2efc37d8-9','b62452b2-f'),
(29,'b53e6c08-f','06d6a1a5-e'),
(30,'1a54372f-c','048601aa-1'),
(31,'0814a828-d','eb449c28-4'),
(32,'7d0abd7b-a','f13b0c4c-f'),
(33,'732a0295-9','c2935d5d-7'),
(34,'46479322-3','e62c82ce-d'),
(35,'17551e88-c','d301dbc3-6'),
(36,'4dc4163f-5','e33d5ba3-5'),
(37,'53449eb8-a','6e6eae3f-f'),
(38,'1acfd25e-2','e8d7e9f6-e'),
(39,'7380dc7e-2','2a475e29-d'),
(40,'79b499fa-a','248d0889-c'),
(41,'a8aeab29-6','4c40dde4-8'),
(42,'2a3ddb3a-8','e6aeabb2-a'),
(43,'93048ede-0','3880a22d-d'),
(44,'1d268de3-e','8dfb4b23-d'),
(45,'43e80a48-4','107fcfaf-3'),
(46,'9739a380-1','b90021cd-0'),
(47,'0dc3e6e6-8','888cee8c-8'),
(48,'d7258052-e','a4220474-c'),
(49,'d8b228bd-5','ef981dab-b'),
(50,'1540b0eb-8','db426f3c-5'),
(51,'4e9a79b2-a','06320692-1'),
(52,'b2774995-7','c5c9b00b-7'),
(53,'98e59d48-7','bb9b0769-9'),
(54,'24960480-9','331421de-5'),
(55,'fa14570a-2','7289c1b5-7'),
(56,'e3f987d5-6','e16b77ba-2'),
(57,'b7f33699-f','21a3d460-9'),
(58,'75dafa07-7','2679af0f-8'),
(59,'42680304-8','cf8cf7d0-f'),
(60,'e61bf19d-a','7a1fd4e6-b'),
(61,'094f7986-d','a0880532-0'),
(62,'58a2f379-1','8b1420d6-6'),
(63,'2b3fd20f-6','e676b49c-6'),
(64,'be92515a-f','3b6546a9-8'),
(65,'965b51c7-5','c71e37cf-5'),
(66,'600570ca-6','1f15844e-4'),
(67,'859ef732-c','1a9e8b05-f'),
(68,'2d790667-0','7ddc2f6b-7'),
(69,'d1bc5923-5','763fd5fb-0'),
(70,'12ace025-9','a44c2792-9'),
(71,'44a417db-4','825d066d-1'),
(72,'7cf101cb-b','4ddcc83e-a'),
(73,'4c2367e9-3','94b75df3-e'),
(74,'d3e45f98-d','8fd42c9c-1'),
(75,'d483f7a0-9','e8e2de5f-1'),
(76,'e13fa067-0','b941230f-6'),
(77,'2c1a7cf2-b','fc489429-d'),
(78,'a7f3b104-2','b5f68b87-8'),
(79,'ba689765-a','c6b04733-f'),
(80,'a17b6b9a-2','6a5a7a17-f'),
(81,'e3f1afa0-d','34e31c99-8'),
(82,'ea29e70d-1','954653ea-8'),
(83,'96bae6cc-f','de9a31ca-a'),
(84,'7e55df7d-7','eaa073dc-b'),
(85,'8d25c170-0','c7f720bd-b'),
(86,'a320dfa6-2','d0786df2-a'),
(87,'47f1a419-6','61c1283e-4'),
(88,'ff646c0d-6','cca2be5d-b'),
(89,'d4541a39-4','23933dda-5'),
(90,'248f0c13-7','3a23563d-0'),
(91,'9e695652-9','546b83ca-e'),
(92,'0bb07f8e-4','b0e9881a-6'),
(93,'c82be128-1','e7b860c5-1'),
(94,'1e0f8a3b-9','94f280f7-2'),
(95,'f05a42a4-2','b922fb57-e'),
(96,'82a5a6e9-d','f3211596-f'),
(97,'666aa086-5','1ebc34c7-e'),
(98,'d72ed7b9-0','48d23857-f'),
(99,'52a5982d-6','5de3cbf2-a'),
(100,'4f36048b-1','964682ae-d');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
