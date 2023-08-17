/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : sm

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 11/10/2022 22:54:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bet
-- ----------------------------
DROP TABLE IF EXISTS `bet`;
CREATE TABLE `bet` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '投注ID',
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名',
  `coins` int DEFAULT NULL COMMENT '投注金额',
  `rare` double DEFAULT NULL COMMENT '赔率',
  `matchId` bigint DEFAULT NULL COMMENT '比赛ID',
  `teamId` bigint DEFAULT NULL COMMENT '投注胜者ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '投注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of bet
-- ----------------------------
BEGIN;
INSERT INTO `bet` (`id`, `username`, `coins`, `rare`, `matchId`, `teamId`, `createTime`) VALUES (1, 'yhzwealth', 5, 1.3, 1, 1, '2021-10-17 19:50:00');
INSERT INTO `bet` (`id`, `username`, `coins`, `rare`, `matchId`, `teamId`, `createTime`) VALUES (2, 'yhzwealth', 5, 1.7, 2, 4, '2021-11-05 21:55:08');
INSERT INTO `bet` (`id`, `username`, `coins`, `rare`, `matchId`, `teamId`, `createTime`) VALUES (3, 'yhzwealth', 20, 1.5, 3, 5, '2021-12-07 21:55:41');
INSERT INTO `bet` (`id`, `username`, `coins`, `rare`, `matchId`, `teamId`, `createTime`) VALUES (7, 'yhzwealth', 20, 1.8, 34, 25, '2021-12-09 14:24:26');
INSERT INTO `bet` (`id`, `username`, `coins`, `rare`, `matchId`, `teamId`, `createTime`) VALUES (15, 'yhzwealth', 1500, 1.8, 3, 5, '2021-12-09 14:44:59');
COMMIT;

-- ----------------------------
-- Table structure for matches
-- ----------------------------
DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '比赛ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '比赛名称',
  `player1` bigint DEFAULT NULL COMMENT '选手1ID',
  `player1Score` int DEFAULT '0' COMMENT '选手1得分',
  `player2` bigint DEFAULT NULL COMMENT '选手2ID',
  `player2Score` int DEFAULT '0' COMMENT '选手2得分',
  `winRate` double DEFAULT '1' COMMENT '选手1与选手2的胜率比',
  `time` datetime DEFAULT NULL COMMENT '比赛时间',
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '比赛类别',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of matches
-- ----------------------------
BEGIN;
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (1, 'The International 10 - Grand Final', 1, 2, 2, 3, 1, '2021-10-17 20:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (2, 'World Championship 2021 - Finals', 3, 2, 4, 3, 1, '2021-11-06 20:00:00', 'League of Legends', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (3, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 0, 6, 0, 1, '2022-01-04 19:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (4, 'VALORANT Champions 2021 - Quarterfinals', 7, 0, 8, 2, 1, '2021-12-09 01:00:00', 'VALORANT', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (5, 'DPC SEA 2021/22 Tour 1: Division I', 9, 2, 10, 1, 1, '2021-12-08 19:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (7, 'The International 10 - Upper Bracket Final', 1, 2, 7, 0, 1, '2021-10-16 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (8, 'The International 10 - Lower Bracket Final', 2, 2, 7, 1, 1, '2021-10-17 15:05:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (9, 'The International 10 - Lower Bracket R5', 2, 2, 5, 0, 1, '2021-10-16 20:40:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (10, 'The International 10 - Lower Bracket R4', 5, 2, 11, 0, 1, '2021-10-16 15:05:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (11, 'The International 10 - Lower Bracket R4', 12, 1, 2, 2, 1, '2021-10-15 21:15:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (12, 'The International 10 - Lower Bracket R3', 2, 2, 14, 0, 1, '2021-10-15 15:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (13, 'The International 10 - Lower Bracket R3', 13, 1, 11, 2, 1, '2021-10-15 17:45:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (14, 'The International 10 - Lower Bracket R2', 2, 2, 15, 0, 1, '2021-10-13 23:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (15, 'The International 10 - Lower Bracket R2', 14, 2, 16, 0, 1, '2021-10-14 01:45:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (16, 'The International 10 - Lower Bracket R2', 13, 2, 17, 0, 1, '2021-10-14 16:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (17, 'The International 10 - Lower Bracket R2', 11, 2, 18, 1, 1, '2021-10-14 18:40:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (18, 'The International 10 - Upper Bracket R2', 5, 0, 7, 2, 1, '2021-10-14 22:50:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (19, 'The International 10 - Upper Bracket R2', 1, 2, 12, 0, 1, '2021-10-15 01:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (20, 'The International 10 - Upper Bracket R2', 5, 2, 2, 1, 1, '2021-10-12 15:55:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (21, 'The International 10 - Upper Bracket R2', 7, 2, 14, 0, 1, '2021-10-12 20:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (22, 'The International 10 - Upper Bracket R2', 1, 2, 13, 1, 1, '2021-10-13 15:25:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (23, 'The International 10 - Upper Bracket R2', 12, 2, 11, 1, 1, '2021-10-13 19:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (24, 'DPC CN 2021/22 Tour 1: Division I Week 1', 19, 0, 21, 0, 1, '2022-01-03 13:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (25, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 0, 22, 0, 1, '2022-01-03 16:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (26, 'DPC CN 2021/22 Tour 1: Division I Week 1', 11, 0, 20, 0, 1, '2022-01-04 13:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (27, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 0, 21, 0, 1, '2022-01-04 16:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (28, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 0, 19, 0, 1, '2022-01-07 13:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (29, 'DPC CN 2021/22 Tour 1: Division I Week 1', 22, 0, 11, 0, 1, '2022-01-07 16:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (30, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 0, 21, 0, 1, '2022-01-09 13:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (31, 'DPC CN 2021/22 Tour 1: Division I Week 1', 6, 0, 20, 0, 1, '2022-01-09 16:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (32, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 0, 11, 0, 1, '2022-01-09 19:00:00', 'Dota2', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (33, 'VALORANT Champions 2021 - Quarterfinals', 23, 2, 24, 0, 1, '2021-12-09 04:00:00', 'VALORANT', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (34, 'VALORANT Champions 2021 - Quarterfinals', 25, 0, 26, 0, 1, '2021-12-10 01:00:00', 'VALORANT', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player2`, `player2Score`, `winRate`, `time`, `type`, `state`) VALUES (35, 'VALORANT Champions 2021 - Quarterfinals', 15, 0, 27, 0, 1, '2021-12-10 04:00:00', 'VALORANT', '0');
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '新闻标题',
  `pic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '配图URL',
  `content` text COLLATE utf8mb4_general_ci COMMENT '新闻内容',
  `views` int DEFAULT NULL COMMENT '阅读量',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '新闻发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (1, '新闻1', 'http://121.196.98.183:8080/img/default-avatar.jpg', '111', 2, '2020-12-06 21:43:10');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (2, '新闻2', 'http://121.196.98.183:8080/img/default-avatar.jpg', '222', 3, '2020-12-06 21:43:47');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (3, '新闻3', 'http://121.196.98.183:8080/img/default-avatar.jpg', '333', 3, '2020-12-06 21:43:55');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (4, '新闻4', 'http://121.196.98.183:8080/img/default-avatar.jpg', '444', 4, '2020-12-06 21:44:03');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (5, '新闻5', 'http://121.196.98.183:8080/img/default-avatar.jpg', '555', 5, '2020-12-06 21:44:09');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (6, '新闻6', 'http://121.196.98.183:8080/img/default-avatar.jpg', '666', 6, '2020-12-06 21:44:16');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (7, '新闻7', 'http://121.196.98.183:8080/img/default-avatar.jpg', '777', 7, '2020-12-06 21:44:21');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (8, '新闻8', 'http://121.196.98.183:8080/img/default-avatar.jpg', '888', 9, '2020-12-06 21:44:37');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (9, '新闻9', 'http://121.196.98.183:8080/img/default-avatar.jpg', '999', 9, '2020-12-06 21:44:43');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (10, '信者永恒、竞绽光芒！欢迎来到2021年PGC全球总决赛！', 'https://wx2.sinaimg.cn/large/006s2DpWly1gw42khauajj30rs0fmjs5.jpg', '<div class=\"content\">\n亲爱的PUBG电竞爱好者，\n<br/>\n</div>\n<div class=\"content\">\n你们好！\n</div>\n<br/>\n<div class=\"content\">\nPUBG电竞年度压轴大戏，2021年PGC（PUBG GLOBAL CHAMPIONSHIP）全球总决赛即将来临!来自四个不同赛区的32支队伍，经过长达一年的激烈竞争，终于来到了最后的决战舞台，追逐全球总冠军的无尚荣耀。\n</div>\n<br/>\n<div class=\"content\">\n接下来，让我们了解全球总决赛的更多信息。\n</div>\n<br/>\n<div class=\"listHead\">\nPGC 2021比赛赛制\n</div>\n<img src=\"https://wx2.sinaimg.cn/large/006s2DpWly1gw42hs9mh5j312w0ryjyg.jpg\"/>\n<br/>\n<div class=\"content\">\nPGC 2021将从11月19日的排位赛开始，以12月19日的总决赛结束。就像今年早些时候的PGI.S一样，PGC 2021将以区域对抗的形式进行比赛,主赛场位于韩国。来自全球32支顶级PUBG俱乐部，将争夺超过200万美元的奖金。参赛队伍还将从PGC游戏商店道具的销售中获益，赛事专属道具销售纯收入的30%将被纳入赛事奖金池。\n</div>', 17, '2021-11-05 11:00:50');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (11, '骑士归来，巅峰立新王，恭喜EDG勇夺2021全球总决赛冠军！', 'https://img.tgl.qq.com/cover/20211107/f5061da66d17526fa406ab3228b43107_1636219755.jpg', '<img src=\"https://img.tgl.qq.com/cover/20211107/f5061da66d17526fa406ab3228b43107_1636219755.jpg\" />', 23, '2021-11-07 01:31:27');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (12, 'Welcome to the Internet！12月4日The Internet邀请赛正式打响！', 'https://wx4.sinaimg.cn/large/006fDRfjgy1gx0mmpdxyvj30u00b8diz.jpg', '<div class=\"content\">\n      在12月4日，由斗鱼主播Zard主办的The&nbsp;Internet邀请赛正赛就将打响！本次赛事将由16支互联网公司代表队进行双败淘汰赛，16支代表队在上周通过抽签确定了各自的半区及对手，他们将首先进行分组赛的较量，胜者进入胜者组第一轮，败者进入败者组第一轮。以下为分组赛对阵及赛程：\n    </div>\n    <div class=\"listHead\">\n      12月4日\n    </div>\n    <div class=\"list\">\n      16点：鲨鱼刀刀 vs 乆乆\n    </div>\n    <div class=\"list\">\n      17点：aidu vs RUOK\n    </div>\n    <div class=\"list\">\n      18点：TS vs 基地\n    </div>\n    <div class=\"list\">\n      19点：小企鹅 vs 嘉心糖\n    </div>\n    <div class=\"list\">\n      20点：黑豚 vs 小福豹\n    </div>\n    <div class=\"list\">\n      21点：菊内人 vs dodo\n    </div>\n    <div class=\"listHead\">\n      12月5日\n    </div>\n    <div class=\"list\">\n      16点：超级犸莉 vs Hot Liquid\n    </div>\n    <div class=\"list\">\n      17点：老干杯 vs 姜硬\n    </div>\n    <img src=\"https://wx4.sinaimg.cn/large/006fDRfjgy1gx0mmoehokj30zk0k0af0.jpg\"/>\n    <div class=\"content\">\n      本次赛事为期6天，将从本周六（12月4日）开始的每个周末比赛，分三个周末进行。12月4日与5日将进行分组赛和胜者组第一轮的比赛；12月11日、12日将进行败者组第一轮、第二轮及胜者组第二轮的比赛；12月18日、19日将进行最后一阶段的比赛和总决赛。除了总决赛为BO3外，其余比赛均为BO1。除了精彩的比赛外，本次赛事还有着诸多看点。\n    </div>\n    <img src=\"https://wx4.sinaimg.cn/large/006fDRfjgy1gx0mmontykj30pt0ljdio.jpg\"/>\n    <div class=\"content\">\n      本次赛事既然被叫做“TI”，那么赛事的奖励自然也是十分“TI”的。首先是Zard为冠军准备的定制“不朽盾”，同时斗鱼DOTA2也为冠军队伍定制了五枚冠军盾样式的纯金戒指，以及完美世界提供的影魔手办，让赛事冠军拥有一次接近TI的冠军体验。除此以外，比赛期间还有丰富的奖品在斗鱼Zard直播间抽奖送出，在决赛日当天直播间还会免费抽出由斗鱼DOTA2定制的冠军同款镀金戒指！\n    </div>\n    <img src=\"https://wx2.sinaimg.cn/large/006fDRfjgy1gx0mmoxhhxj30s10gy77s.jpg\"/>\n    <div class=\"content\">\n      在之前，各个代表队的队名已经引发了大家的广泛关注，想必如今大家已经对于各个代表队代表的公司有了一定的了解。如今各个队伍的队标也都已经设计完成了，这里面有设计出彩的“鲨鱼刀刀”“黑豚战队”“小福豹”等等，也有像“乆乆”“姜硬”“RUOK”等等这样的以队标来玩梗的，大家也可以找找看这里面含有哪些要素。\n    </div>\n    <img src=\"https://wx2.sinaimg.cn/large/006fDRfjgy1gx0mmp5rg0j30t60lzadj.jpg\"/>\n    <div class=\"content\">\n      在12月4日比赛开始前，是否Z胖会为我们带来那句经典的“Welcome to the Internet”呢？各个战队的出场短片会有怎样的效果呢？各个互联网代表队的比赛又会给我们怎样的惊喜呢？就让我们一同期待即将开始的The Internet邀请赛吧，12月4日下午16点不见不散！​​​​\n    </div>', 58, '2021-12-03 14:43:15');
COMMIT;

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '竞赛者ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '竞赛者名称',
  `pic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '竞赛者配图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of player
-- ----------------------------
BEGIN;
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (1, 'PSG.LGD', 'http://121.196.98.183:8080/img/test/psglgd.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (2, 'Team Spirit', 'http://121.196.98.183:8080/img/test/spirit.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (3, 'DAMWON Gaming KIA', 'http://121.196.98.183:8080/img/test/dk.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (4, 'EDward Gaming', 'http://121.196.98.183:8080/img/test/edg.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (5, 'Invictus Gaming', 'http://121.196.98.183:8080/img/test/ig.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (6, 'Royal Never Give Up', 'http://121.196.98.183:8080/img/test/rng.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (7, 'Team Secret', 'http://121.196.98.183:8080/img/test/secret.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (8, 'Acend', 'http://121.196.98.183:8080/img/test/Acend.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (9, 'Execration', 'http://121.196.98.183:8080/img/test/xctn.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (10, 'OB Esports x Neon', 'http://121.196.98.183:8080/img/test/obneon.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (11, 'Vici Gaming', 'http://121.196.98.183:8080/img/test/vg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (12, 'Virtus.pro', 'http://121.196.98.183:8080/img/test/vp.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (13, 'SK Telecom T1', 'http://121.196.98.183:8080/img/test/t1.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (14, 'OG', 'http://121.196.98.183:8080/img/test/og.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (15, 'Fnatic', 'http://121.196.98.183:8080/img/test/fnc.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (16, 'Quincy Crew', 'http://121.196.98.183:8080/img/test/qc.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (17, 'Alliance', 'http://121.196.98.183:8080/img/test/alliance.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (18, 'Evil Geniuses', 'http://121.196.98.183:8080/img/test/eg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (19, 'EHOME', 'http://121.196.98.183:8080/img/test/ehome.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (20, 'LBZS', 'http://121.196.98.183:8080/img/test/lbzs.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (21, 'Phoenix Gaming', 'http://121.196.98.183:8080/img/test/phoenix.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (22, 'Team Aster', 'http://121.196.98.183:8080/img/test/aster.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (23, 'Team Liquid', 'http://121.196.98.183:8080/img/test/tl.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (24, 'Cloud9', 'http://121.196.98.183:8080/img/test/c9.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (25, 'Gambit Esports', 'http://121.196.98.183:8080/img/test/gambit.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (26, 'X10 CRIT', 'http://121.196.98.183:8080/img/test/x10.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (27, 'KRÜ Esports', 'http://121.196.98.183:8080/img/test/kru.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (28, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(70) COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像URL',
  `coins` int DEFAULT '0' COMMENT '用户拥有的代币',
  `todayViews` int DEFAULT '0' COMMENT '今日浏览新闻量',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lastLogin` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '上次登录时间',
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`username`, `password`, `nickname`, `avatar`, `coins`, `todayViews`, `createTime`, `lastLogin`, `role`) VALUES ('yhzwealth', '62295398fd1e4ece3210d1179c95eaad', 'iamYBG', 'http://121.196.98.183:8080/img/yhzwealth-av.jpg', 90, 0, '2021-11-22 23:15:28', '2021-12-13 14:09:00', 'admin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
