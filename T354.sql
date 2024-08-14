/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t354`;
CREATE DATABASE IF NOT EXISTS `t354` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t354`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dangqianqingkuang`;
CREATE TABLE IF NOT EXISTS `dangqianqingkuang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `dangqianqingkuang_types` int DEFAULT NULL COMMENT '就业状态 Search111',
  `dangqianqingkuang_text` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='就业情况';

DELETE FROM `dangqianqingkuang`;
INSERT INTO `dangqianqingkuang` (`id`, `yonghu_id`, `dangqianqingkuang_types`, `dangqianqingkuang_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '备注1', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(2, 3, 2, '备注2', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(3, 1, 2, '备注3', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(4, 3, 1, '备注4', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(5, 2, 1, '备注5', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(6, 3, 1, '备注6', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(7, 2, 2, '备注7', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(8, 3, 1, '备注8', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(9, 1, 1, '备注9', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(10, 3, 1, '备注10', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(11, 1, 1, '备注11', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(12, 2, 1, '备注12', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(13, 2, 2, '备注13', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(14, 1, 2, '备注14', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(15, 1, 2, '123123123', '2023-03-21 07:28:46', '2023-03-21 07:28:46');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(20, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-21 03:53:20'),
	(21, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-21 03:53:20'),
	(22, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2023-03-21 03:53:20'),
	(23, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2023-03-21 03:53:20'),
	(24, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2023-03-21 03:53:20'),
	(25, 'zhuanye_types', '专业', 1, '专业1', NULL, NULL, '2023-03-21 03:53:20'),
	(26, 'zhuanye_types', '专业', 2, '专业2', NULL, NULL, '2023-03-21 03:53:20'),
	(27, 'zhuanye_types', '专业', 3, '专业3', NULL, NULL, '2023-03-21 03:53:20'),
	(28, 'xueyuan_types', '学院', 1, '学院1', NULL, NULL, '2023-03-21 03:53:20'),
	(29, 'xueyuan_types', '学院', 2, '学院2', NULL, NULL, '2023-03-21 03:53:20'),
	(30, 'xueyuan_types', '学院', 3, '学院3', NULL, NULL, '2023-03-21 03:53:20'),
	(31, 'gongsi_types', '企业类型', 1, '企业类型1', NULL, NULL, '2023-03-21 03:53:20'),
	(32, 'gongsi_types', '企业类型', 2, '企业类型2', NULL, NULL, '2023-03-21 03:53:20'),
	(33, 'gongsi_types', '企业类型', 3, '企业类型3', NULL, NULL, '2023-03-21 03:53:20'),
	(34, 'xuanjianghui_types', '宣讲会类型', 1, '宣讲会类型1', NULL, NULL, '2023-03-21 03:53:20'),
	(35, 'xuanjianghui_types', '宣讲会类型', 2, '宣讲会类型2', NULL, NULL, '2023-03-21 03:53:20'),
	(36, 'xuanjianghui_types', '宣讲会类型', 3, '宣讲会类型3', NULL, NULL, '2023-03-21 03:53:20'),
	(37, 'xianxia_types', '线下面试', 1, '是', NULL, NULL, '2023-03-21 03:53:20'),
	(38, 'xianxia_types', '线下面试', 2, '否', NULL, NULL, '2023-03-21 03:53:21'),
	(39, 'xuanjianghui_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-03-21 03:53:21'),
	(40, 'xuanjianghui_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2023-03-21 03:53:21'),
	(41, 'xuanjianghui_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2023-03-21 03:53:21'),
	(42, 'xuanjianghui_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-21 03:53:21'),
	(43, 'dangqianqingkuang_types', '就业状态', 1, '已就业', NULL, NULL, '2023-03-21 03:53:21'),
	(44, 'dangqianqingkuang_types', '就业状态', 2, '未就业', NULL, NULL, '2023-03-21 03:53:21'),
	(45, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-21 03:53:21'),
	(46, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-21 03:53:21');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `gongsi_id` int DEFAULT NULL COMMENT '企业',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `gongsi_id`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', NULL, 1, NULL, '发布内容1', 387, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(2, '帖子标题2', NULL, 3, NULL, '发布内容2', 114, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(3, '帖子标题3', NULL, 1, NULL, '发布内容3', 159, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(4, '帖子标题4', NULL, 2, NULL, '发布内容4', 195, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(5, '帖子标题5', NULL, 3, NULL, '发布内容5', 474, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(6, '帖子标题6', NULL, 1, NULL, '发布内容6', 280, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(7, '帖子标题7', NULL, 1, NULL, '发布内容7', 237, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(8, '帖子标题8', NULL, 3, NULL, '发布内容8', 422, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(9, '帖子标题9', NULL, 3, NULL, '发布内容9', 471, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(10, '帖子标题10', NULL, 1, NULL, '发布内容10', 422, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(11, '帖子标题11', NULL, 1, NULL, '发布内容11', 367, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(12, '帖子标题12', NULL, 3, NULL, '发布内容12', 7, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(13, '帖子标题13', NULL, 1, NULL, '发布内容13', 197, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(14, '帖子标题14', NULL, 3, NULL, '发布内容14', 208, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(15, NULL, NULL, 1, NULL, '123123', 14, 2, '2023-03-21 07:28:02', NULL, '2023-03-21 07:28:02'),
	(16, NULL, 1, NULL, NULL, '1213212', 14, 2, '2023-03-21 07:29:48', NULL, '2023-03-21 07:29:48'),
	(17, NULL, NULL, NULL, 1, '1111111111', 14, 2, '2023-03-21 07:32:07', NULL, '2023-03-21 07:32:07'),
	(18, NULL, NULL, 1, NULL, '111', 10, 2, '2024-08-09 03:14:08', NULL, '2024-08-09 03:14:08');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `gongsi_types` int DEFAULT NULL COMMENT '企业类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `gongsi_content` longtext COMMENT '企业简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='企业';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `gongsi_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '企业1', '123456', '企业名称1', 3, '17703786901', '1@qq.com', 'upload/gongsi1.jpg', '企业简介1', 1, '2023-03-21 03:53:52'),
	(2, '企业2', '123456', '企业名称2', 1, '17703786902', '2@qq.com', 'upload/gongsi2.jpg', '企业简介2', 1, '2023-03-21 03:53:52'),
	(3, '企业3', '123456', '企业名称3', 2, '17703786903', '3@qq.com', 'upload/gongsi3.jpg', '企业简介3', 1, '2023-03-21 03:53:52');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` longtext COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 3, 'upload/news1.jpg', '2023-03-21 03:53:52', '公告信息详情1', 1, '2023-03-21 03:53:52'),
	(2, '公告信息标题2', 1, 'upload/news2.jpg', '2023-03-21 03:53:52', '公告信息详情2', 1, '2023-03-21 03:53:52'),
	(3, '公告信息标题3', 2, 'upload/news3.jpg', '2023-03-21 03:53:52', '公告信息详情3', 1, '2023-03-21 03:53:52'),
	(4, '公告信息标题4', 1, 'upload/news4.jpg', '2023-03-21 03:53:52', '公告信息详情4', 1, '2023-03-21 03:53:52'),
	(5, '公告信息标题5', 2, 'upload/news5.jpg', '2023-03-21 03:53:52', '公告信息详情5', 1, '2023-03-21 03:53:52'),
	(6, '公告信息标题6', 3, 'upload/news6.jpg', '2023-03-21 03:53:52', '公告信息详情6', 1, '2023-03-21 03:53:52'),
	(7, '公告信息标题7', 3, 'upload/news7.jpg', '2023-03-21 03:53:52', '公告信息详情7', 1, '2023-03-21 03:53:52'),
	(8, '公告信息标题8', 3, 'upload/news8.jpg', '2023-03-21 03:53:52', '公告信息详情8', 1, '2023-03-21 03:53:52'),
	(9, '公告信息标题9', 1, 'upload/news9.jpg', '2023-03-21 03:53:52', '公告信息详情9', 1, '2023-03-21 03:53:52'),
	(10, '公告信息标题10', 1, 'upload/news10.jpg', '2023-03-21 03:53:52', '公告信息详情10', 1, '2023-03-21 03:53:52'),
	(11, '公告信息标题11', 3, 'upload/news11.jpg', '2023-03-21 03:53:52', '公告信息详情11', 1, '2023-03-21 03:53:52'),
	(12, '公告信息标题12', 2, 'upload/news12.jpg', '2023-03-21 03:53:52', '公告信息详情12', 1, '2023-03-21 03:53:52'),
	(13, '公告信息标题13', 2, 'upload/news13.jpg', '2023-03-21 03:53:52', '公告信息详情13', 1, '2023-03-21 03:53:52'),
	(14, '公告信息标题14', 2, 'upload/news14.jpg', '2023-03-21 03:53:52', '公告信息详情14', 1, '2023-03-21 03:53:52');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 4, '123', 'yonghu', '学生', 'pya4p8y482rwfgxojt4bxvtwyrarf63f', '2023-03-21 05:09:58', '2023-03-21 06:09:59'),
	(2, 1, 'a1', 'yonghu', '学生', 'xpty5dcq08u47w7rfmb5zcaw73ballmz', '2023-03-21 05:10:37', '2024-08-09 04:14:00'),
	(3, 1, 'admin', 'users', '管理员', 'av7r5x9448bwewu1wj7ui5i1z0a27hv4', '2023-03-21 05:15:29', '2024-08-09 04:12:32'),
	(4, 1, 'a1', 'gongsi', '企业', 'twhmchwxszjspz2ouo42skt1s6znan00', '2023-03-21 07:28:55', '2024-08-09 04:13:37');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-21 03:53:20');

DROP TABLE IF EXISTS `xuanjianghui`;
CREATE TABLE IF NOT EXISTS `xuanjianghui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '企业',
  `xuanjianghui_name` varchar(200) DEFAULT NULL COMMENT '宣讲会标题  Search111 ',
  `xuanjianghui_photo` varchar(200) DEFAULT NULL COMMENT '宣讲会封面',
  `xuanjianghui_daiyu` varchar(200) DEFAULT NULL COMMENT '企业资质',
  `xuanjianghui_types` int DEFAULT NULL COMMENT '宣讲会类型 Search111',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111',
  `xuanjianghui_gangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位 ',
  `xuanjianghui_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `xuanjianghui_time` timestamp NULL DEFAULT NULL COMMENT '宣讲时间',
  `xianxia_types` int DEFAULT NULL COMMENT '线下面试 Search111',
  `xuanjianghui_content` longtext COMMENT '宣讲会详情',
  `xuanjianghui_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111 ',
  `xuanjianghui_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='宣讲会';

DELETE FROM `xuanjianghui`;
INSERT INTO `xuanjianghui` (`id`, `gongsi_id`, `xuanjianghui_name`, `xuanjianghui_photo`, `xuanjianghui_daiyu`, `xuanjianghui_types`, `zhuanye_types`, `xuanjianghui_gangwei`, `xuanjianghui_renshu_number`, `xuanjianghui_time`, `xianxia_types`, `xuanjianghui_content`, `xuanjianghui_yesno_types`, `xuanjianghui_yesno_text`, `create_time`) VALUES
	(1, 2, '宣讲会标题1', 'upload/xuanjianghui1.jpg', '企业资质1', 2, 1, '招聘岗位1', 195, '2023-03-21 03:53:52', 2, '宣讲会详情1', 2, '同意', '2023-03-21 03:53:52'),
	(2, 3, '宣讲会标题2', 'upload/xuanjianghui2.jpg', '企业资质2', 1, 1, '招聘岗位2', 464, '2023-03-21 03:53:52', 2, '宣讲会详情2', 2, '同意', '2023-03-21 03:53:52'),
	(3, 2, '宣讲会标题3', 'upload/xuanjianghui3.jpg', '企业资质3', 2, 3, '招聘岗位3', 232, '2023-03-21 03:53:52', 2, '宣讲会详情3', 2, '同意', '2023-03-21 03:53:52'),
	(4, 1, '宣讲会标题4', 'upload/xuanjianghui4.jpg', '企业资质4', 3, 3, '招聘岗位4', 74, '2023-03-21 03:53:52', 2, '宣讲会详情4', 2, '同意', '2023-03-21 03:53:52'),
	(5, 2, '宣讲会标题5', 'upload/xuanjianghui5.jpg', '企业资质5', 2, 3, '招聘岗位5', 322, '2023-03-21 03:53:52', 1, '宣讲会详情5', 2, '同意', '2023-03-21 03:53:52'),
	(6, 3, '宣讲会标题6', 'upload/xuanjianghui6.jpg', '企业资质6', 1, 2, '招聘岗位6', 68, '2023-03-21 03:53:52', 2, '宣讲会详情6', 2, '同意', '2023-03-21 03:53:52'),
	(7, 2, '宣讲会标题7', 'upload/xuanjianghui7.jpg', '企业资质7', 1, 3, '招聘岗位7', 201, '2023-03-21 03:53:52', 2, '宣讲会详情7', 2, '同意', '2023-03-21 03:53:52'),
	(8, 2, '宣讲会标题8', 'upload/xuanjianghui1.jpg', '企业资质8', 3, 3, '招聘岗位8', 172, '2023-03-21 03:53:52', 2, '宣讲会详情8', 2, '同意', '2023-03-21 03:53:52'),
	(9, 3, '宣讲会标题9', 'upload/xuanjianghui2.jpg', '企业资质9', 2, 3, '招聘岗位9', 473, '2023-03-21 03:53:52', 1, '宣讲会详情9', 1, NULL, '2023-03-21 03:53:52'),
	(10, 1, '宣讲会标题10', 'upload/xuanjianghui3.jpg', '企业资质10', 3, 3, '招聘岗位10', 51, '2023-03-21 03:53:52', 1, '宣讲会详情10', 1, NULL, '2023-03-21 03:53:52'),
	(11, 1, '宣讲会标题11', 'upload/xuanjianghui4.jpg', '企业资质11', 2, 2, '招聘岗位11', 64, '2023-03-21 03:53:52', 1, '宣讲会详情11', 1, NULL, '2023-03-21 03:53:52'),
	(12, 3, '宣讲会标题12', 'upload/xuanjianghui5.jpg', '企业资质12', 3, 2, '招聘岗位12', 158, '2023-03-21 03:53:52', 1, '宣讲会详情12', 1, NULL, '2023-03-21 03:53:52'),
	(13, 2, '宣讲会标题13', 'upload/xuanjianghui6.jpg', '企业资质13', 2, 1, '招聘岗位13', 19, '2023-03-21 03:53:52', 1, '宣讲会详情13', 1, NULL, '2023-03-21 03:53:52'),
	(14, 2, '宣讲会标题14', 'upload/xuanjianghui7.jpg', '企业资质14', 1, 3, '招聘岗位14', 495, '2023-03-21 03:53:52', 2, '宣讲会详情14', 1, NULL, '2023-03-21 03:53:52'),
	(15, 1, '申请宣讲会1111', '/upload/1679383756491.jpg', '123', 3, 3, '123', 123, '2023-03-22 16:00:00', 1, '<p>123</p>', 2, '12', '2023-03-21 07:29:26');

DROP TABLE IF EXISTS `xuanjianghui_collection`;
CREATE TABLE IF NOT EXISTS `xuanjianghui_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanjianghui_id` int DEFAULT NULL COMMENT '宣讲会',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `xuanjianghui_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='宣讲会收藏';

DELETE FROM `xuanjianghui_collection`;
INSERT INTO `xuanjianghui_collection` (`id`, `xuanjianghui_id`, `yonghu_id`, `xuanjianghui_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(2, 2, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(3, 3, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(4, 4, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(5, 5, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(6, 6, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(9, 9, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(10, 10, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(11, 11, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(12, 12, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(13, 13, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(14, 14, 3, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(16, 8, 1, 1, '2023-03-21 07:28:35', '2023-03-21 07:28:35');

DROP TABLE IF EXISTS `xuanjianghui_yuyue`;
CREATE TABLE IF NOT EXISTS `xuanjianghui_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanjianghui_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `xuanjianghui_id` int DEFAULT NULL COMMENT '宣讲会',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='宣讲会报名';

DELETE FROM `xuanjianghui_yuyue`;
INSERT INTO `xuanjianghui_yuyue` (`id`, `xuanjianghui_yuyue_uuid_number`, `xuanjianghui_id`, `yonghu_id`, `insert_time`, `create_time`) VALUES
	(1, '1679370832132', 1, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(2, '1679370832100', 2, 1, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(3, '1679370832076', 3, 3, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(4, '1679370832111', 4, 3, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(5, '1679370832123', 5, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(6, '1679370832141', 6, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(7, '1679370832130', 7, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(8, '1679370832124', 8, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(10, '1679370832139', 10, 3, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(11, '1679370832109', 11, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(12, '1679370832089', 12, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(13, '1679370832099', 13, 2, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(14, '1679370832045', 14, 3, '2023-03-21 03:53:52', '2023-03-21 03:53:52'),
	(19, '1679383666214', 7, 1, '2023-03-21 07:27:46', '2023-03-21 07:27:46'),
	(21, '1723173267132', 8, 1, '2024-08-09 03:14:27', '2024-08-09 03:14:27');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `xueyuan_types`, `zhuanye_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', 'upload/yonghu1.jpg', '17703786901', '410224199010102001', '1@qq.com', 2, 2, 2, 1, '2023-03-21 03:53:52'),
	(2, '学生2', '123456', '学生姓名2', 'upload/yonghu2.jpg', '17703786902', '410224199010102002', '2@qq.com', 1, 1, 1, 1, '2023-03-21 03:53:52'),
	(3, '学生3', '123456', '学生姓名3', 'upload/yonghu3.jpg', '17703786903', '410224199010102003', '3@qq.com', 1, 3, 3, 1, '2023-03-21 03:53:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
