/*
Navicat MySQL Data Transfer

Source Server         : freshman
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : schooltao

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-18 21:30:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `cart_time` datetime DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车详情';

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `collect_time` datetime DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `need_id` int(11) DEFAULT NULL,
  `comment_content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `comment_time` datetime DEFAULT NULL COMMENT '评论时间',
  `comment_like_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '卖家id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_old_price` int(11) DEFAULT NULL COMMENT '商品原价',
  `goods_new_price` int(11) DEFAULT NULL COMMENT '商品现卖完价',
  `goods_fresh` tinyint(2) DEFAULT NULL COMMENT '商品程度',
  `goods_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `goods_user_phone` int(17) DEFAULT NULL COMMENT '商家电话号码',
  `goods_user_name` varchar(10) DEFAULT NULL COMMENT '商家称呼',
  `goods_pics` varchar(1000) DEFAULT NULL COMMENT '图片地址',
  `goods_type` varchar(4) NOT NULL COMMENT '商品类别',
  `goods_time` datetime DEFAULT NULL COMMENT '上架时间',
  `goods_state` set('1','0') DEFAULT '1' COMMENT '0表示已下架，1表示正常售卖',
  `goods_view_num` int(11) DEFAULT NULL COMMENT '商品访问量',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for key
-- ----------------------------
DROP TABLE IF EXISTS `key`;
CREATE TABLE `key` (
  `key_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `key_content` varchar(255) DEFAULT NULL COMMENT '搜索关键字',
  `key_time` datetime DEFAULT NULL COMMENT '搜索时间',
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='搜索关键字表';

-- ----------------------------
-- Records of key
-- ----------------------------

-- ----------------------------
-- Table structure for need
-- ----------------------------
DROP TABLE IF EXISTS `need`;
CREATE TABLE `need` (
  `need_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `need_content` varchar(255) DEFAULT NULL COMMENT '需求描述',
  `need_pics` varchar(1000) DEFAULT NULL COMMENT '需求图片',
  `need_view_num` int(11) DEFAULT NULL COMMENT '浏览量',
  `need_time` datetime DEFAULT NULL COMMENT '求购发布时间',
  `need_comment_num` int(11) DEFAULT NULL COMMENT '求购评论数量',
  PRIMARY KEY (`need_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='求购表';

-- ----------------------------
-- Records of need
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '通知时间',
  `notice_time` datetime DEFAULT NULL COMMENT '通知时间',
  `notice_type` set('1','0') DEFAULT '' COMMENT '0代表系统公告，1代表用户通知',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知表';

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '买家用户id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `order_state` set('3','2','1','0') DEFAULT '' COMMENT '0表示待付款，1表示交易进行中，2表示交易完成，3表示交易取消',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for remain
-- ----------------------------
DROP TABLE IF EXISTS `remain`;
CREATE TABLE `remain` (
  `remain_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '留言用户',
  `remain_content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `remain_time` datetime DEFAULT NULL COMMENT '留言时间',
  `remain_to_id` int(11) DEFAULT NULL COMMENT '被留言用户',
  `remian_last_id` int(11) DEFAULT NULL COMMENT '父留言id',
  PRIMARY KEY (`remain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of remain
-- ----------------------------
INSERT INTO `remain` VALUES ('1', '0', null, null, null, null);

-- ----------------------------
-- Table structure for turn
-- ----------------------------
DROP TABLE IF EXISTS `turn`;
CREATE TABLE `turn` (
  `turn_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `turn_pic` varchar(100) DEFAULT NULL COMMENT '轮播图片',
  `turn_content` varchar(255) DEFAULT NULL COMMENT '轮播图片内容',
  `turn_time` datetime DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`turn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图片表';

-- ----------------------------
-- Records of turn
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL COMMENT '昵称',
  `user_password` varchar(32) DEFAULT NULL COMMENT '密码',
  `user_sex` set('1','0') DEFAULT '' COMMENT '男为0，女为1',
  `user_intro` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `user_avater` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `user_mibao` set('0','1','2','3','4') DEFAULT '' COMMENT '每个数字对应各个问题',
  `user_answer` varchar(50) DEFAULT NULL COMMENT '密保答案',
  `user_remain_num` int(11) DEFAULT NULL COMMENT '统计留言数量',
  `user_purchase_num` int(11) DEFAULT NULL COMMENT '统计购物车商品数量',
  `user_vip` set('0','1') DEFAULT '0' COMMENT '0表示普通用户，1表示vip用户',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, null, '', null, null, null, '', null, null, null, '0');
