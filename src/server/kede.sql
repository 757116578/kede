/*
 Navicat Premium Data Transfer

 Source Server         : keshi
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : kede

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 19/10/2019 21:20:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) NULL DEFAULT NULL,
  `num` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (3, 11, 7);
INSERT INTO `cart` VALUES (4, 12, 3);

-- ----------------------------
-- Table structure for floor1
-- ----------------------------
DROP TABLE IF EXISTS `floor1`;
CREATE TABLE `floor1`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hmid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hmid1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hr1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Lsrc1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of floor1
-- ----------------------------
INSERT INTO `floor1` VALUES ('1F 透明隐形眼镜', '精选', '[\"博士伦\",\"强生\",\"视康\",\"强生\",\"库博\",\"海昌\",\"卫康\",\"蔡司\",\"菲士康\"]', '热门', '[\"日抛\",\"月抛\",\"半年抛\",\"首次佩戴\",\"硅水凝胶\"]', '[\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left2.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\"]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top1.jpg\",\"n\":\"强生舒日日抛30片装 \",\"p1\":\"￥208\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top2.jpg\",\"n\":\"博士伦清朗日抛30片装\",\"p1\":\"￥139\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_top3.jpg\",\"n\":\"库博Biofinity佰视明月抛3片装\",\"p1\":\"￥99\",\"p2\":\"￥159\"}]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_1.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biofinity佰视明月抛3片装\",\"p3\":\"卓越透氧\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_2.jpg\",\"p1\":\"￥48.00\",\"p2\":\"库博EDGE III XT欧柯莱视半年抛2片装\",\"p3\":\" 初戴者首选\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_3.jpg\",\"p1\":\"￥89.00\",\"p2\":\"博士伦清朗舒适月抛6片装\",\"p3\":\"舒适易戴 轻松好自在\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_4.jpg\",\"p1\":\"￥35.00\",\"p2\":\"海昌水润季抛2片装\",\"p3\":\"锁水保湿 轻薄舒适\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20190530/1f_5.jpg\",\"p1\":\"￥79.00\",\"p2\":\"库博欧柯视日抛30片装 \",\"p3\":\"水润透氧 滋润保湿\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_7.jpg\",\"p1\":\"￥42.00\",\"p2\":\"卫康魅Blue金装年抛\",\"p3\":\"金装金品质\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_8.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biomedics倍明视日抛30片装\",\"p3\":\"低边缘设计\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_9.jpg\",\"p1\":\"￥149.00\",\"p2\":\"米如日抛30片装\",\"p3\":\"源自日本 轻薄突破\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_10g.jpg\",\"p1\":\"￥79.00\",\"p2\":\"爱尔康视康水润天天抛30片装\",\"p3\":\"高性价比日抛\"}]');
INSERT INTO `floor1` VALUES ('2F 透明隐形眼镜', '精选', '[\"博士伦\",\"强生\",\"视康\",\"强生\",\"库博\",\"海昌\",\"卫康\",\"蔡司\",\"菲士康\"]', '热门', '[\"日抛\",\"月抛\",\"半年抛\",\"首次佩戴\",\"硅水凝胶\"]', '[\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left2.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\"]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top1.jpg\",\"n\":\"强生舒日日抛30片装 \",\"p1\":\"￥208\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top2.jpg\",\"n\":\"博士伦清朗日抛30片装\",\"p1\":\"￥139\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_top3.jpg\",\"n\":\"库博Biofinity佰视明月抛3片装\",\"p1\":\"￥99\",\"p2\":\"￥159\"}]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_1.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biofinity佰视明月抛3片装\",\"p3\":\"卓越透氧\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_2.jpg\",\"p1\":\"￥48.00\",\"p2\":\"库博EDGE III XT欧柯莱视半年抛2片装\",\"p3\":\" 初戴者首选\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_3.jpg\",\"p1\":\"￥89.00\",\"p2\":\"博士伦清朗舒适月抛6片装\",\"p3\":\"舒适易戴 轻松好自在\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_4.jpg\",\"p1\":\"￥35.00\",\"p2\":\"海昌水润季抛2片装\",\"p3\":\"锁水保湿 轻薄舒适\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20190530/1f_5.jpg\",\"p1\":\"￥79.00\",\"p2\":\"库博欧柯视日抛30片装 \",\"p3\":\"水润透氧 滋润保湿\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_7.jpg\",\"p1\":\"￥42.00\",\"p2\":\"卫康魅Blue金装年抛\",\"p3\":\"金装金品质\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_8.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biomedics倍明视日抛30片装\",\"p3\":\"低边缘设计\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_9.jpg\",\"p1\":\"￥149.00\",\"p2\":\"米如日抛30片装\",\"p3\":\"源自日本 轻薄突破\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_10g.jpg\",\"p1\":\"￥79.00\",\"p2\":\"爱尔康视康水润天天抛30片装\",\"p3\":\"高性价比日抛\"}]');
INSERT INTO `floor1` VALUES ('3F 透明隐形眼镜', '精选', '[\"博士伦\",\"强生\",\"视康\",\"强生\",\"库博\",\"海昌\",\"卫康\",\"蔡司\",\"菲士康\"]', '热门', '[\"日抛\",\"月抛\",\"半年抛\",\"首次佩戴\",\"硅水凝胶\"]', '[\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left2.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\"]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top1.jpg\",\"n\":\"强生舒日日抛30片装 \",\"p1\":\"￥208\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top2.jpg\",\"n\":\"博士伦清朗日抛30片装\",\"p1\":\"￥139\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_top3.jpg\",\"n\":\"库博Biofinity佰视明月抛3片装\",\"p1\":\"￥99\",\"p2\":\"￥159\"}]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_1.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biofinity佰视明月抛3片装\",\"p3\":\"卓越透氧\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_2.jpg\",\"p1\":\"￥48.00\",\"p2\":\"库博EDGE III XT欧柯莱视半年抛2片装\",\"p3\":\" 初戴者首选\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_3.jpg\",\"p1\":\"￥89.00\",\"p2\":\"博士伦清朗舒适月抛6片装\",\"p3\":\"舒适易戴 轻松好自在\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_4.jpg\",\"p1\":\"￥35.00\",\"p2\":\"海昌水润季抛2片装\",\"p3\":\"锁水保湿 轻薄舒适\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20190530/1f_5.jpg\",\"p1\":\"￥79.00\",\"p2\":\"库博欧柯视日抛30片装 \",\"p3\":\"水润透氧 滋润保湿\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_7.jpg\",\"p1\":\"￥42.00\",\"p2\":\"卫康魅Blue金装年抛\",\"p3\":\"金装金品质\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_8.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biomedics倍明视日抛30片装\",\"p3\":\"低边缘设计\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_9.jpg\",\"p1\":\"￥149.00\",\"p2\":\"米如日抛30片装\",\"p3\":\"源自日本 轻薄突破\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_10g.jpg\",\"p1\":\"￥79.00\",\"p2\":\"爱尔康视康水润天天抛30片装\",\"p3\":\"高性价比日抛\"}]');
INSERT INTO `floor1` VALUES ('4F 透明隐形眼镜', '精选', '[\"博士伦\",\"强生\",\"视康\",\"强生\",\"库博\",\"海昌\",\"卫康\",\"蔡司\",\"菲士康\"]', '热门', '[\"日抛\",\"月抛\",\"半年抛\",\"首次佩戴\",\"硅水凝胶\"]', '[\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left2.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\"]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top1.jpg\",\"n\":\"强生舒日日抛30片装 \",\"p1\":\"￥208\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top2.jpg\",\"n\":\"博士伦清朗日抛30片装\",\"p1\":\"￥139\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_top3.jpg\",\"n\":\"库博Biofinity佰视明月抛3片装\",\"p1\":\"￥99\",\"p2\":\"￥159\"}]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_1.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biofinity佰视明月抛3片装\",\"p3\":\"卓越透氧\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_2.jpg\",\"p1\":\"￥48.00\",\"p2\":\"库博EDGE III XT欧柯莱视半年抛2片装\",\"p3\":\" 初戴者首选\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_3.jpg\",\"p1\":\"￥89.00\",\"p2\":\"博士伦清朗舒适月抛6片装\",\"p3\":\"舒适易戴 轻松好自在\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_4.jpg\",\"p1\":\"￥35.00\",\"p2\":\"海昌水润季抛2片装\",\"p3\":\"锁水保湿 轻薄舒适\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20190530/1f_5.jpg\",\"p1\":\"￥79.00\",\"p2\":\"库博欧柯视日抛30片装 \",\"p3\":\"水润透氧 滋润保湿\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_7.jpg\",\"p1\":\"￥42.00\",\"p2\":\"卫康魅Blue金装年抛\",\"p3\":\"金装金品质\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_8.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biomedics倍明视日抛30片装\",\"p3\":\"低边缘设计\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_9.jpg\",\"p1\":\"￥149.00\",\"p2\":\"米如日抛30片装\",\"p3\":\"源自日本 轻薄突破\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_10g.jpg\",\"p1\":\"￥79.00\",\"p2\":\"爱尔康视康水润天天抛30片装\",\"p3\":\"高性价比日抛\"}]');
INSERT INTO `floor1` VALUES ('5F 透明隐形眼镜', '精选', '[\"博士伦\",\"强生\",\"视康\",\"强生\",\"库博\",\"海昌\",\"卫康\",\"蔡司\",\"菲士康\"]', '热门', '[\"日抛\",\"月抛\",\"半年抛\",\"首次佩戴\",\"硅水凝胶\"]', '[\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left2.jpg\",\"https://pic.keede.com/Images/index_scb/20190621/1f_left1.jpg\"]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top1.jpg\",\"n\":\"强生舒日日抛30片装 \",\"p1\":\"￥208\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20160413/1f_top2.jpg\",\"n\":\"博士伦清朗日抛30片装\",\"p1\":\"￥139\",\"p2\":\"￥249\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_top3.jpg\",\"n\":\"库博Biofinity佰视明月抛3片装\",\"p1\":\"￥99\",\"p2\":\"￥159\"}]', '[{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_1.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biofinity佰视明月抛3片装\",\"p3\":\"卓越透氧\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_2.jpg\",\"p1\":\"￥48.00\",\"p2\":\"库博EDGE III XT欧柯莱视半年抛2片装\",\"p3\":\" 初戴者首选\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_3.jpg\",\"p1\":\"￥89.00\",\"p2\":\"博士伦清朗舒适月抛6片装\",\"p3\":\"舒适易戴 轻松好自在\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_4.jpg\",\"p1\":\"￥35.00\",\"p2\":\"海昌水润季抛2片装\",\"p3\":\"锁水保湿 轻薄舒适\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20190530/1f_5.jpg\",\"p1\":\"￥79.00\",\"p2\":\"库博欧柯视日抛30片装 \",\"p3\":\"水润透氧 滋润保湿\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_6.jpg\",\"p1\":\"￥78.00\",\"p2\":\"强生润眸两周抛6片装\",\"p3\":\"远离敏感，呵护双眸\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_7.jpg\",\"p1\":\"￥42.00\",\"p2\":\"卫康魅Blue金装年抛\",\"p3\":\"金装金品质\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_8.jpg\",\"p1\":\"￥99.00\",\"p2\":\"库博Biomedics倍明视日抛30片装\",\"p3\":\"低边缘设计\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_9.jpg\",\"p1\":\"￥149.00\",\"p2\":\"米如日抛30片装\",\"p3\":\"源自日本 轻薄突破\"},{\"s\":\"https://pic.keede.com/Images/index_scb/20180627/1f_10g.jpg\",\"p1\":\"￥79.00\",\"p2\":\"爱尔康视康水润天天抛30片装\",\"p3\":\"高性价比日抛\"}]');

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao`  (
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/26aa5602-b1ae-4e78-9b11-a2327006d42f-218-218.jpg', '￥168.00', '168元包邮！美若康沐氧硅水凝胶10片装3盒套装。', '组合商品不可叠加用券，敬请见谅。', '有637条评论', '1');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/b6537c94-2fc7-4d33-bde1-612d97e17276-218-218.jpg', '￥100.00', '库博佰视明硅水凝胶月抛3片装+爱尔康傲滴120ml', '', '有13351条评论', '2');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5ec960c0-047a-423d-8847-52f0abbc2fd8-218-218.jpg', '￥300.00', '视康舒视氧月抛6片装*2+乐明护理液300ml*2+60ml*2', '', '有28835条评论', '3');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ec05587c-d9f4-4ad1-8fe2-a9383aa0c54f-218-218.jpg', '￥108.00', '库博清氧清硅水凝胶日抛隐形眼镜30片装', '库博硅水凝胶日抛清新上市，高透氧，高水润，升级新体验', '有308条评论', '4');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/7331f612-3a06-4805-96e3-243e653eddba-218-218.jpg', '￥109.00', '视康舒视氧水活泉(月抛)隐形眼镜3片装', '', '有0条评论', '5');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/597e993f-f655-4899-8d34-22b1372d340a-218-218.jpg', '￥79.00', '库博欧柯视日抛隐形眼镜30片装', '水润透氧，滋润体验', '有7387条评论', '6');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/2e96dc43-edc2-4004-9327-cda268008c84-218-218.jpg', '￥89.00', '库博Biomedics倍明视日抛隐形眼镜30片装', '镜片低边缘设计，减少眼睑摩擦，为您带来方便、自然、舒适的配戴体验！', '有8405条评论', '7');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5c163f3e-65d2-4598-a90f-0f813a920d2c-218-218.jpg', '￥108.00', '爱尔康视康舒视氧硅水凝胶月抛隐形眼镜6片装（新老包装随机发货）', '6片与3片装*2随机发，近7倍透氧 更长舒适配戴。非球面镜片设计，贴合眼球更舒适。', '有24083条评论', '8');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/16ee767f-7453-4ef6-b1ae-e1bda8a1f676-218-218.jpg', '￥179.00', '爱尔康视康水润日夜型硅水凝胶月抛隐形眼镜3片装（新老包装随机发）', '眼睛不干涩，透氧更水润~', '有6288条评论', '9');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/bea3ccbf-a7d2-4317-bbce-cbcb946afe58-218-218.jpg', '￥66.00', '爱尔康视康水润天天抛日抛隐形眼镜30片装', '独有眨眼保湿专利科技，镜片内部添加水润因子，全天佩戴不干涩', '有8127条评论', '10');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/d8ea862d-6b40-4586-b42b-f7da4e0b010b-218-218.jpg', '￥139.00', '博士伦清朗一日水润高清日抛隐形眼镜30片装', '博士伦经典畅销日抛，采用非离子材质，不易吸附蛋白质沉淀，如水般持久水润，透氧舒适。', '有13779条评论', '11');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/10850ab2-cc17-40ac-b828-94eccdd25585-218-218.jpg', '￥58.00', '库博倍明视倍新月抛隐形眼镜6片装', '新品上线，月抛高性价比，有效抗紫外线，全天自然舒适', '有1130条评论', '12');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/727ab510-0d5e-41ef-9418-1058b2de95da-218-218.jpg', '￥159.00', '库博Biofinity佰视明硅水凝胶月抛隐形眼镜3片装', '第三代硅水凝胶镜片，卓越透氧，镜片更柔软更富有弹性。', '有9688条评论', '13');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/f0d33bbb-ff97-45d2-bcde-1d33dfec445a-218-218.jpg', '￥36.00', '视康舒视氧(月抛)隐形眼镜1片装', '5倍高透氧 更长舒适配戴。非球面镜片设计，贴合眼球更舒适。', '有2条评论', '14');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/9b6c3719-0701-4067-8e79-131ec8be47aa-218-218.jpg', '￥105.00', '爱尔康视康多水润天天抛日抛隐形眼镜30片', '眼科级眨眼保湿技术，添加三重水润因子，配戴更水润舒适~~~', '有5510条评论', '15');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5cd79247-fce2-4ff5-98f1-8d6d2a374d65-218-218.jpg', '￥79.00', '博士伦清朗舒适月抛隐形眼镜6片装（新老包装随机发货）', '新手入门型镜片，非离子材质，不易吸附蛋白质沉淀，轻松易配戴，每月抛弃舒适健康。', '有18028条评论', '16');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3cbc8115-b6b1-4a31-8c38-dcde49f8c663-218-218.jpg', '￥41.00', '博士伦清朗舒适月抛隐形眼镜2片装', '采用健康非离子材料，有效抵抗蛋白质沉淀，高含水高透氧，让你的眼睛每天都清晰自然。', '有3642条评论', '17');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/4b576c18-034a-4855-a52e-8bf771335248-218-218.jpg', '￥149.00', '博士伦纯视2代硅水凝胶月抛隐形眼镜3片装', '创新硅水凝胶材质，5倍高透氧，带来更持久舒适的配戴体验。', '有1364条评论', '18');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/681fa1bd-2d01-4e6a-bad9-57ef92aa36e4-218-218.jpg', '￥56.00', '博士伦清朗金装半年抛隐形眼镜1片装（原装进口）', '科学技术成型，易摘戴，长效高清，角膜更健康。', '有3058条评论', '19');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/036874c4-ca6e-4db7-b216-d1fb0860c7fd-218-218.jpg', '￥98.00', '博士伦air薄透隐形眼镜半年抛2片装', '0.035mm薄如蝉翼，双眸呼吸通透，无感水润', '有599条评论', '20');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/27dbbcb7-2429-43a5-a8a7-c97659b7c4ac-218-218.jpg', '￥92.00', '博士伦清朗半年抛隐形眼镜2片装（原装进口）', '原装进口高品质保障，好轻薄、好舒适、好透氧！', '有12474条评论', '21');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/a06c78a2-ff79-48ba-b3eb-d3258aadaaab-218-218.jpg', '￥218.00', '博士伦里程年抛隐形眼镜1片装', '博士伦科技突破的里程碑产品， 全球年戴型隐形眼镜的领导品牌', '有4300条评论', '22');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/d0145c31-6ac8-4f59-af29-cc04982ea0b0-218-218.jpg', '￥55.00', '博士伦清朗舒适月抛隐形眼镜3片装（新老包装随机发货）', '新手入门型镜片，非离子材质，不易吸附蛋白质沉淀，轻松易配戴，每月抛弃舒适健康。', '有5373条评论', '23');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/97370a28-66c1-462a-9c4e-3d0da332b4cc-218-218.jpg', '￥98.00', '博士伦air薄巧隐形眼镜半年抛2片装', '13.4mm小直径隐形眼镜，小巧易配戴，长时水润', '有599条评论', '24');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5858e7df-01c0-48b8-b477-8dd5d6ee2c0a-218-218.jpg', '￥99.00', '库博Proclear宝睛润日抛隐形眼镜30片装', '先进TC Technology技术，锁水保湿长达12小时，轻微不适和眼部干涩的配戴者适用 。', '有5558条评论', '25');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5210eb80-5ebf-4ea9-a514-eb9f0ddf1028-218-218.jpg', '￥60.00', '博士伦清朗季抛隐形眼镜2片装', '圆润边缘设计，促进泪液循环，保持眼睛表面湿润。', '有2926条评论', '26');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ce495c71-552b-455c-82e1-b9206d887e7b-218-218.jpg', '￥138.00', '博士伦里程易适年抛隐形眼镜1片装', '采用先进抛光工艺，边缘圆滑抛光设计，佩戴更加健康舒适。', '有2382条评论', '27');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3886bf6d-3dd1-4dde-9647-94e5b6574e7c-218-218.jpg', '￥38.00', '博士伦清朗一日水润高清日抛隐形眼镜5片装', '博士伦经典畅销日抛，采用非离子材质，不易吸附蛋白质沉淀，如水般持久水润，透氧舒适。', '有13418条评论', '28');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3be038e0-6b77-4ac9-b8fe-aab3fe7479f0-218-218.jpg', '￥68.00', '博士伦清朗半年抛隐形眼镜2片装（新老包装随机发货）', '畅销多年经典款，0.035mm创新型的薄透体验，给双眸无感般的舒适自在，镜片柔韧防破损，初戴也适宜。', '有72238条评论', '29');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/1d70fe2e-71e3-48ec-85ca-0ac387bdeab7-218-218.jpg', '￥138.00', '博士伦博乐纯日抛隐形眼镜10片装', '78%含水量进口高端日抛，戴如未戴，裸眼般水润舒适。', '有41条评论', '30');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ed4dcd26-def2-4a23-8f4f-3f9b060bd62a-218-218.jpg', '￥368.00', '强生安视优舒日日抛1DM-90P隐形眼镜90片装（效期2020年2月）', '90片实惠大包装上线，超强锁水，全天水润舒适', '有412条评论', '31');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/4f8f69f9-8127-4bd4-af6e-4312f952efaa-218-218.jpg', '￥78.00', '强生安视优润眸两周抛隐形眼镜6片装', '舒澈升级全新双周抛，越短越健康，刷新双眸舒适度', '有8886条评论', '32');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/26aa5602-b1ae-4e78-9b11-a2327006d42f-218-218.jpg', '￥168.00', '168元包邮！美若康沐氧硅水凝胶10片装3盒套装。', '组合商品不可叠加用券，敬请见谅。', '有637条评论', '33');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/b6537c94-2fc7-4d33-bde1-612d97e17276-218-218.jpg', '￥100.00', '库博佰视明硅水凝胶月抛3片装+爱尔康傲滴120ml', '', '有13351条评论', '34');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5ec960c0-047a-423d-8847-52f0abbc2fd8-218-218.jpg', '￥300.00', '视康舒视氧月抛6片装*2+乐明护理液300ml*2+60ml*2', '', '有28835条评论', '35');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ec05587c-d9f4-4ad1-8fe2-a9383aa0c54f-218-218.jpg', '￥108.00', '库博清氧清硅水凝胶日抛隐形眼镜30片装', '库博硅水凝胶日抛清新上市，高透氧，高水润，升级新体验', '有308条评论', '36');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/7331f612-3a06-4805-96e3-243e653eddba-218-218.jpg', '￥109.00', '视康舒视氧水活泉(月抛)隐形眼镜3片装', '', '有0条评论', '37');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/597e993f-f655-4899-8d34-22b1372d340a-218-218.jpg', '￥79.00', '库博欧柯视日抛隐形眼镜30片装', '水润透氧，滋润体验', '有7387条评论', '38');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/2e96dc43-edc2-4004-9327-cda268008c84-218-218.jpg', '￥89.00', '库博Biomedics倍明视日抛隐形眼镜30片装', '镜片低边缘设计，减少眼睑摩擦，为您带来方便、自然、舒适的配戴体验！', '有8405条评论', '39');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5c163f3e-65d2-4598-a90f-0f813a920d2c-218-218.jpg', '￥108.00', '爱尔康视康舒视氧硅水凝胶月抛隐形眼镜6片装（新老包装随机发货）', '6片与3片装*2随机发，近7倍透氧 更长舒适配戴。非球面镜片设计，贴合眼球更舒适。', '有24083条评论', '40');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/16ee767f-7453-4ef6-b1ae-e1bda8a1f676-218-218.jpg', '￥179.00', '爱尔康视康水润日夜型硅水凝胶月抛隐形眼镜3片装（新老包装随机发）', '眼睛不干涩，透氧更水润~', '有6288条评论', '41');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/bea3ccbf-a7d2-4317-bbce-cbcb946afe58-218-218.jpg', '￥66.00', '爱尔康视康水润天天抛日抛隐形眼镜30片装', '独有眨眼保湿专利科技，镜片内部添加水润因子，全天佩戴不干涩', '有8127条评论', '42');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/d8ea862d-6b40-4586-b42b-f7da4e0b010b-218-218.jpg', '￥139.00', '博士伦清朗一日水润高清日抛隐形眼镜30片装', '博士伦经典畅销日抛，采用非离子材质，不易吸附蛋白质沉淀，如水般持久水润，透氧舒适。', '有13779条评论', '43');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/10850ab2-cc17-40ac-b828-94eccdd25585-218-218.jpg', '￥58.00', '库博倍明视倍新月抛隐形眼镜6片装', '新品上线，月抛高性价比，有效抗紫外线，全天自然舒适', '有1130条评论', '44');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/727ab510-0d5e-41ef-9418-1058b2de95da-218-218.jpg', '￥159.00', '库博Biofinity佰视明硅水凝胶月抛隐形眼镜3片装', '第三代硅水凝胶镜片，卓越透氧，镜片更柔软更富有弹性。', '有9688条评论', '45');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/f0d33bbb-ff97-45d2-bcde-1d33dfec445a-218-218.jpg', '￥36.00', '视康舒视氧(月抛)隐形眼镜1片装', '5倍高透氧 更长舒适配戴。非球面镜片设计，贴合眼球更舒适。', '有2条评论', '46');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/9b6c3719-0701-4067-8e79-131ec8be47aa-218-218.jpg', '￥105.00', '爱尔康视康多水润天天抛日抛隐形眼镜30片', '眼科级眨眼保湿技术，添加三重水润因子，配戴更水润舒适~~~', '有5510条评论', '47');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5cd79247-fce2-4ff5-98f1-8d6d2a374d65-218-218.jpg', '￥79.00', '博士伦清朗舒适月抛隐形眼镜6片装（新老包装随机发货）', '新手入门型镜片，非离子材质，不易吸附蛋白质沉淀，轻松易配戴，每月抛弃舒适健康。', '有18028条评论', '48');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3cbc8115-b6b1-4a31-8c38-dcde49f8c663-218-218.jpg', '￥41.00', '博士伦清朗舒适月抛隐形眼镜2片装', '采用健康非离子材料，有效抵抗蛋白质沉淀，高含水高透氧，让你的眼睛每天都清晰自然。', '有3642条评论', '49');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/4b576c18-034a-4855-a52e-8bf771335248-218-218.jpg', '￥149.00', '博士伦纯视2代硅水凝胶月抛隐形眼镜3片装', '创新硅水凝胶材质，5倍高透氧，带来更持久舒适的配戴体验。', '有1364条评论', '50');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/681fa1bd-2d01-4e6a-bad9-57ef92aa36e4-218-218.jpg', '￥56.00', '博士伦清朗金装半年抛隐形眼镜1片装（原装进口）', '科学技术成型，易摘戴，长效高清，角膜更健康。', '有3058条评论', '51');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/036874c4-ca6e-4db7-b216-d1fb0860c7fd-218-218.jpg', '￥98.00', '博士伦air薄透隐形眼镜半年抛2片装', '0.035mm薄如蝉翼，双眸呼吸通透，无感水润', '有599条评论', '52');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/27dbbcb7-2429-43a5-a8a7-c97659b7c4ac-218-218.jpg', '￥92.00', '博士伦清朗半年抛隐形眼镜2片装（原装进口）', '原装进口高品质保障，好轻薄、好舒适、好透氧！', '有12474条评论', '53');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/a06c78a2-ff79-48ba-b3eb-d3258aadaaab-218-218.jpg', '￥218.00', '博士伦里程年抛隐形眼镜1片装', '博士伦科技突破的里程碑产品， 全球年戴型隐形眼镜的领导品牌', '有4300条评论', '54');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/d0145c31-6ac8-4f59-af29-cc04982ea0b0-218-218.jpg', '￥55.00', '博士伦清朗舒适月抛隐形眼镜3片装（新老包装随机发货）', '新手入门型镜片，非离子材质，不易吸附蛋白质沉淀，轻松易配戴，每月抛弃舒适健康。', '有5373条评论', '55');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/97370a28-66c1-462a-9c4e-3d0da332b4cc-218-218.jpg', '￥98.00', '博士伦air薄巧隐形眼镜半年抛2片装', '13.4mm小直径隐形眼镜，小巧易配戴，长时水润', '有599条评论', '56');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5858e7df-01c0-48b8-b477-8dd5d6ee2c0a-218-218.jpg', '￥99.00', '库博Proclear宝睛润日抛隐形眼镜30片装', '先进TC Technology技术，锁水保湿长达12小时，轻微不适和眼部干涩的配戴者适用 。', '有5558条评论', '57');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5210eb80-5ebf-4ea9-a514-eb9f0ddf1028-218-218.jpg', '￥60.00', '博士伦清朗季抛隐形眼镜2片装', '圆润边缘设计，促进泪液循环，保持眼睛表面湿润。', '有2926条评论', '58');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ce495c71-552b-455c-82e1-b9206d887e7b-218-218.jpg', '￥138.00', '博士伦里程易适年抛隐形眼镜1片装', '采用先进抛光工艺，边缘圆滑抛光设计，佩戴更加健康舒适。', '有2382条评论', '59');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3886bf6d-3dd1-4dde-9647-94e5b6574e7c-218-218.jpg', '￥38.00', '博士伦清朗一日水润高清日抛隐形眼镜5片装', '博士伦经典畅销日抛，采用非离子材质，不易吸附蛋白质沉淀，如水般持久水润，透氧舒适。', '有13418条评论', '60');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/3be038e0-6b77-4ac9-b8fe-aab3fe7479f0-218-218.jpg', '￥68.00', '博士伦清朗半年抛隐形眼镜2片装（新老包装随机发货）', '畅销多年经典款，0.035mm创新型的薄透体验，给双眸无感般的舒适自在，镜片柔韧防破损，初戴也适宜。', '有72238条评论', '61');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/1d70fe2e-71e3-48ec-85ca-0ac387bdeab7-218-218.jpg', '￥138.00', '博士伦博乐纯日抛隐形眼镜10片装', '78%含水量进口高端日抛，戴如未戴，裸眼般水润舒适。', '有41条评论', '62');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ed4dcd26-def2-4a23-8f4f-3f9b060bd62a-218-218.jpg', '￥368.00', '强生安视优舒日日抛1DM-90P隐形眼镜90片装（效期2020年2月）', '90片实惠大包装上线，超强锁水，全天水润舒适', '有412条评论', '63');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/4f8f69f9-8127-4bd4-af6e-4312f952efaa-218-218.jpg', '￥78.00', '强生安视优润眸两周抛隐形眼镜6片装', '舒澈升级全新双周抛，越短越健康，刷新双眸舒适度', '有8886条评论', '64');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/26aa5602-b1ae-4e78-9b11-a2327006d42f-218-218.jpg', '￥168.00', '168元包邮！美若康沐氧硅水凝胶10片装3盒套装。', '组合商品不可叠加用券，敬请见谅。', '有637条评论', '65');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/b6537c94-2fc7-4d33-bde1-612d97e17276-218-218.jpg', '￥100.00', '库博佰视明硅水凝胶月抛3片装+爱尔康傲滴120ml', '', '有13351条评论', '66');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5ec960c0-047a-423d-8847-52f0abbc2fd8-218-218.jpg', '￥300.00', '视康舒视氧月抛6片装*2+乐明护理液300ml*2+60ml*2', '', '有28835条评论', '67');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/ec05587c-d9f4-4ad1-8fe2-a9383aa0c54f-218-218.jpg', '￥108.00', '库博清氧清硅水凝胶日抛隐形眼镜30片装', '库博硅水凝胶日抛清新上市，高透氧，高水润，升级新体验', '有308条评论', '68');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/7331f612-3a06-4805-96e3-243e653eddba-218-218.jpg', '￥109.00', '视康舒视氧水活泉(月抛)隐形眼镜3片装', '', '有0条评论', '69');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/597e993f-f655-4899-8d34-22b1372d340a-218-218.jpg', '￥79.00', '库博欧柯视日抛隐形眼镜30片装', '水润透氧，滋润体验', '有7387条评论', '70');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/2e96dc43-edc2-4004-9327-cda268008c84-218-218.jpg', '￥89.00', '库博Biomedics倍明视日抛隐形眼镜30片装', '镜片低边缘设计，减少眼睑摩擦，为您带来方便、自然、舒适的配戴体验！', '有8405条评论', '71');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/5c163f3e-65d2-4598-a90f-0f813a920d2c-218-218.jpg', '￥108.00', '爱尔康视康舒视氧硅水凝胶月抛隐形眼镜6片装（新老包装随机发货）', '6片与3片装*2随机发，近7倍透氧 更长舒适配戴。非球面镜片设计，贴合眼球更舒适。', '有24083条评论', '72');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/16ee767f-7453-4ef6-b1ae-e1bda8a1f676-218-218.jpg', '￥179.00', '爱尔康视康水润日夜型硅水凝胶月抛隐形眼镜3片装（新老包装随机发）', '眼睛不干涩，透氧更水润~', '有6288条评论', '73');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/bea3ccbf-a7d2-4317-bbce-cbcb946afe58-218-218.jpg', '￥66.00', '爱尔康视康水润天天抛日抛隐形眼镜30片装', '独有眨眼保湿专利科技，镜片内部添加水润因子，全天佩戴不干涩', '有8127条评论', '74');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/d8ea862d-6b40-4586-b42b-f7da4e0b010b-218-218.jpg', '￥139.00', '博士伦清朗一日水润高清日抛隐形眼镜30片装', '博士伦经典畅销日抛，采用非离子材质，不易吸附蛋白质沉淀，如水般持久水润，透氧舒适。', '有13779条评论', '75');
INSERT INTO `liebiao` VALUES ('http://pic.keede.com/main/10850ab2-cc17-40ac-b828-94eccdd25585-218-218.jpg', '￥58.00', '库博倍明视倍新月抛隐形眼镜6片装', '新品上线，月抛高性价比，有效抗紫外线，全天自然舒适', '有1130条评论', '76');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '17878192819', '123456');
INSERT INTO `user` VALUES (2, '17878192818', '123456\n            ');
INSERT INTO `user` VALUES (3, '17878192817', '123456\n            ');
INSERT INTO `user` VALUES (4, '17878192816', '123456\n            ');
INSERT INTO `user` VALUES (5, '17878192811', '123456\n            ');

SET FOREIGN_KEY_CHECKS = 1;
