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

 Date: 28/04/2024 14:12:31
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
  `matchId` bigint DEFAULT NULL COMMENT '比赛ID',
  `teamId` bigint DEFAULT NULL COMMENT '投注胜者ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '投注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of bet
-- ----------------------------
BEGIN;
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (1, 'yhzwealth', 5, 1, 1, '2021-10-17 19:50:00');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (2, 'yhzwealth', 5, 2, 4, '2021-11-05 21:55:08');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (3, 'yhzwealth', 20, 3, 5, '2021-12-07 21:55:41');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (7, 'yhzwealth', 20, 34, 25, '2021-12-09 14:24:26');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (15, 'yhzwealth', 1500, 3, 5, '2021-12-09 14:44:59');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (16, 'yhzwealth', 10, 73, 49, '2023-05-13 15:41:10');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (17, 'yhzwealth', 10, 82, 5, '2023-06-03 21:33:15');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (18, 'yhzwealth', 20, 82, 30, '2023-06-03 21:33:21');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (19, 'yhzwealth', 10, 84, 5, '2023-06-06 17:03:57');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (20, 'yhzwealth', 10, 85, 4, '2023-06-06 17:04:05');
INSERT INTO `bet` (`id`, `username`, `coins`, `matchId`, `teamId`, `createTime`) VALUES (21, 'yhzwealth', 30, 85, 45, '2023-06-06 17:04:10');
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
  `player1Coin` int DEFAULT '0' COMMENT '选手1获得的投票券',
  `player2` bigint DEFAULT NULL COMMENT '选手2ID',
  `player2Score` int DEFAULT '0' COMMENT '选手2得分',
  `player2Coin` int DEFAULT '0' COMMENT '选手2获得的投票券',
  `time` datetime DEFAULT NULL COMMENT '比赛时间',
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '比赛类别',
  `state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of matches
-- ----------------------------
BEGIN;
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (1, 'The International 10 - Grand Final', 1, 2, 5, 2, 3, 0, '2021-10-17 20:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (2, 'World Championship 2021 - Finals', 3, 2, 0, 4, 3, 5, '2021-11-06 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (3, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 1, 1520, 6, 2, 0, '2022-01-04 19:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (4, 'VALORANT Champions 2021 - Quarterfinals', 7, 0, 0, 8, 2, 0, '2021-12-09 01:00:00', '无畏契约', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (5, 'DPC SEA 2021/22 Tour 1: Division I', 9, 2, 0, 10, 1, 0, '2021-12-08 19:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (7, 'The International 10 - Upper Bracket Final', 1, 2, 0, 7, 0, 0, '2021-10-16 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (8, 'The International 10 - Lower Bracket Final', 2, 2, 0, 7, 1, 0, '2021-10-17 15:05:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (9, 'The International 10 - Lower Bracket R5', 2, 2, 0, 5, 0, 0, '2021-10-16 20:40:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (10, 'The International 10 - Lower Bracket R4', 5, 2, 0, 11, 0, 0, '2021-10-16 15:05:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (11, 'The International 10 - Lower Bracket R4', 12, 1, 0, 2, 2, 0, '2021-10-15 21:15:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (12, 'The International 10 - Lower Bracket R3', 2, 2, 0, 14, 0, 0, '2021-10-15 15:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (13, 'The International 10 - Lower Bracket R3', 13, 1, 0, 11, 2, 0, '2021-10-15 17:45:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (14, 'The International 10 - Lower Bracket R2', 2, 2, 0, 15, 0, 0, '2021-10-13 23:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (15, 'The International 10 - Lower Bracket R2', 14, 2, 0, 16, 0, 0, '2021-10-14 01:45:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (16, 'The International 10 - Lower Bracket R2', 13, 2, 0, 17, 0, 0, '2021-10-14 16:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (17, 'The International 10 - Lower Bracket R2', 11, 2, 0, 18, 1, 0, '2021-10-14 18:40:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (18, 'The International 10 - Upper Bracket R2', 5, 0, 0, 7, 2, 0, '2021-10-14 22:50:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (19, 'The International 10 - Upper Bracket R2', 1, 2, 0, 12, 0, 0, '2021-10-15 01:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (20, 'The International 10 - Upper Bracket R2', 5, 2, 0, 2, 1, 0, '2021-10-12 15:55:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (21, 'The International 10 - Upper Bracket R2', 7, 2, 0, 14, 0, 0, '2021-10-12 20:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (22, 'The International 10 - Upper Bracket R2', 1, 2, 0, 13, 1, 0, '2021-10-13 15:25:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (23, 'The International 10 - Upper Bracket R2', 12, 2, 0, 11, 1, 0, '2021-10-13 19:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (24, 'DPC CN 2021/22 Tour 1: Division I Week 1', 19, 2, 0, 21, 0, 0, '2022-01-03 13:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (25, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 2, 0, 22, 1, 0, '2022-01-03 16:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (26, 'DPC CN 2021/22 Tour 1: Division I Week 1', 11, 2, 0, 20, 1, 0, '2022-01-04 13:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (27, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 2, 0, 21, 0, 0, '2022-01-04 16:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (28, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 1, 0, 19, 2, 0, '2022-01-07 13:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (29, 'DPC CN 2021/22 Tour 1: Division I Week 1', 22, 2, 0, 11, 0, 0, '2022-01-07 16:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (30, 'DPC CN 2021/22 Tour 1: Division I Week 1', 5, 2, 0, 21, 0, 0, '2022-01-09 13:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (31, 'DPC CN 2021/22 Tour 1: Division I Week 1', 6, 1, 0, 20, 2, 0, '2022-01-09 16:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (32, 'DPC CN 2021/22 Tour 1: Division I Week 1', 1, 2, 0, 11, 0, 0, '2022-01-09 19:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (33, 'VALORANT Champions 2021 - Quarterfinals', 23, 2, 0, 24, 0, 0, '2021-12-09 04:00:00', '无畏契约', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (34, 'VALORANT Champions 2021 - Quarterfinals', 25, 2, 20, 26, 1, 0, '2021-12-10 01:00:00', '无畏契约', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (35, 'VALORANT Champions 2021 - Quarterfinals', 15, 1, 0, 27, 2, 0, '2021-12-10 04:00:00', '无畏契约', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (36, 'DPC CN 2023 Tour 2: Division II', 29, 2, 0, 28, 0, 0, '2023-04-20 15:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (37, 'DPC CN 2023 Tour 2: Division I', 1, 2, 0, 22, 0, 0, '2023-04-02 19:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (38, 'DPC CN 2023 Tour 2: Division I', 11, 1, 0, 30, 2, 0, '2023-04-02 15:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (39, 'ESL One Berlin Major 2023 - UB Quarterfinals', 32, 2, 0, 2, 0, 0, '2023-05-01 17:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (40, 'ESL One Berlin Major 2023 - UB Quarterfinals', 14, 2, 0, 23, 1, 0, '2023-05-01 19:30:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (41, 'ESL One Berlin Major 2023 - UB Quarterfinals', 33, 2, 0, 38, 0, 0, '2023-05-01 23:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (42, 'ESL One Berlin Major 2023 - UB Quarterfinals', 31, 2, 0, 1, 1, 0, '2023-05-02 01:50:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (43, 'ESL One Berlin Major 2023 - LB Round 1', 22, 2, 0, 2, 0, 0, '2023-05-02 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (44, 'ESL One Berlin Major 2023 - LB Round 1', 23, 2, 0, 30, 1, 0, '2023-05-02 21:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (45, 'ESL One Berlin Major 2023 - LB Round 1', 38, 0, 0, 18, 2, 0, '2023-05-03 01:15:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (46, 'ESL One Berlin Major 2023 - LB Round 1', 1, 0, 0, 35, 2, 0, '2023-05-03 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (47, 'ESL One Berlin Major 2023 - UB Semifinals', 32, 2, 0, 14, 0, 0, '2023-05-03 21:35:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (48, 'ESL One Berlin Major 2023 - UB Semifinals', 33, 2, 0, 31, 1, 0, '2023-05-04 01:05:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (49, 'ESL One Berlin Major 2023 - LB Round 2', 22, 0, 0, 23, 2, 0, '2023-05-05 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (50, 'ESL One Berlin Major 2023 - LB Round 1', 18, 2, 0, 35, 0, 0, '2023-05-05 21:45:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (51, 'ESL One Berlin Major 2023 - LB Quarterfinals', 31, 0, 0, 23, 2, 0, '2023-05-06 01:06:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (52, 'ESL One Berlin Major 2023 - LB Quarterfinals', 14, 1, 0, 18, 2, 0, '2023-05-06 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (53, 'ESL One Berlin Major 2023 - UB Final', 32, 2, 0, 33, 0, 0, '2023-05-06 22:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (54, 'ESL One Berlin Major 2023 - LB Semifinal', 23, 2, 0, 18, 0, 0, '2023-05-07 01:20:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (55, 'ESL One Berlin Major 2023 - LB Final', 33, 1, 0, 23, 2, 0, '2023-05-07 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (56, 'ESL One Berlin Major 2023 - Grand Final', 32, 3, 0, 23, 1, 0, '2023-05-07 22:10:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (57, '2023英雄联盟季中冠军赛 - Play-In - UB R1', 40, 2, 0, 39, 0, 0, '2023-05-02 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (58, '2023英雄联盟季中冠军赛 - Play-In - UB R1', 41, 2, 0, 42, 0, 0, '2023-05-02 23:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (59, '2023英雄联盟季中冠军赛 - Play-In - UB R1', 43, 2, 0, 44, 0, 0, '2023-05-03 23:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (60, '2023英雄联盟季中冠军赛 - Play-In - UB R1', 45, 2, 0, 46, 0, 0, '2023-05-03 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (61, '2023英雄联盟季中冠军赛 - Play-In - UB R2', 45, 2, 0, 43, 1, 0, '2023-05-04 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (62, '2023英雄联盟季中冠军赛 - Play-In - UB R2', 41, 2, 0, 40, 0, 0, '2023-05-04 23:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (63, '2023英雄联盟季中冠军赛 - Play-In - LB R1', 46, 2, 0, 44, 1, 0, '2023-05-05 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (64, '2023英雄联盟季中冠军赛 - Play-In - LB R1', 42, 2, 0, 39, 0, 0, '2023-05-05 23:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (65, '2023英雄联盟季中冠军赛 - Play-In - LB R2', 43, 2, 0, 46, 0, 0, '2023-05-06 19:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (66, '2023英雄联盟季中冠军赛 - Play-In - LB R2', 40, 2, 0, 42, 0, 0, '2023-05-06 22:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (67, '2023英雄联盟季中冠军赛 - Play-In -LB Final', 43, 3, 0, 40, 0, 0, '2023-05-07 19:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (68, '2023英雄联盟季中冠军赛 - 胜者组四分之一决赛', 47, 3, 0, 41, 1, 0, '2023-05-09 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (69, '2023英雄联盟季中冠军赛 - 胜者组四分之一决赛', 48, 0, 0, 13, 3, 0, '2023-05-10 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (70, '2023英雄联盟季中冠军赛 - 胜者组四分之一决赛', 24, 0, 0, 45, 3, 0, '2023-05-11 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (71, '2023英雄联盟季中冠军赛 - 胜者组四分之一决赛', 49, 3, 0, 43, 0, 0, '2023-05-12 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (72, '2023英雄联盟季中冠军赛 - 胜者组半决赛', 47, 2, 0, 13, 3, 0, '2023-05-13 19:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (73, '2023英雄联盟季中冠军赛 - 胜者组半决赛', 45, 0, 0, 49, 3, 10, '2023-05-14 19:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (74, '2023英雄联盟季中冠军赛 - LB R1', 41, 3, 0, 48, 0, 0, '2023-05-14 00:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (75, '2023英雄联盟季中冠军赛 - LB R1', 24, 3, 0, 43, 1, 0, '2023-05-15 00:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (76, '2023英雄联盟季中冠军赛 - 败者组四分之一决赛', 45, 3, 0, 41, 1, 0, '2023-05-16 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (77, '2023英雄联盟季中冠军赛 - 败者组四分之一决赛', 47, 3, 0, 24, 0, 0, '2023-05-17 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (78, '2023英雄联盟季中冠军赛 - 胜者组决赛', 13, 2, 0, 49, 3, 0, '2023-05-18 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (79, '2023英雄联盟季中冠军赛 - 败者组半决赛', 45, 3, 0, 47, 0, 0, '2023-05-19 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (80, '2023英雄联盟季中冠军赛 - 败者组决赛', 13, 1, 0, 45, 3, 0, '2023-05-20 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (81, '2023英雄联盟季中冠军赛 - 总决赛', 49, 3, 0, 45, 1, 0, '2023-05-21 20:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (82, '2023 DPC 中国联赛S级', 5, 2, 10, 30, 1, 20, '2023-06-04 15:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (83, '2023 DPC 中国联赛S级', 1, 2, 0, 22, 0, 0, '2023-06-04 18:00:00', 'Dota2', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (84, '2023英雄联盟职业联赛夏季赛 - 小组赛', 5, 0, 10, 6, 2, 0, '2023-06-07 17:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (85, '2023英雄联盟职业联赛夏季赛 - 小组赛', 4, 1, 10, 45, 2, 30, '2023-06-07 19:00:00', '英雄联盟', '1');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (86, '2023英雄联盟职业联赛夏季赛 - 小组赛', 6, 0, 0, 4, 0, 0, '2023-06-22 17:00:00', '英雄联盟', '0');
INSERT INTO `matches` (`id`, `name`, `player1`, `player1Score`, `player1Coin`, `player2`, `player2Score`, `player2Coin`, `time`, `type`, `state`) VALUES (87, '2023英雄联盟职业联赛夏季赛 - 小组赛', 49, 0, 0, 45, 0, 0, '2023-06-18 19:00:00', '英雄联盟', '0');
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
  `views` int DEFAULT '0' COMMENT '阅读量',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '新闻发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (10, '信者永恒、竞绽光芒！欢迎来到2021年PGC全球总决赛！', 'https://pics1.baidu.com/feed/0e2442a7d933c8956b3d7d37151feff9830200d5.png@f_auto?token=69c74acf13a7941483a1e2dbc3a606b3', '<div class=\"content\">\n亲爱的PUBG电竞爱好者，\n<br/>\n</div>\n<div class=\"content\">\n你们好！\n</div>\n<br/>\n<div class=\"content\">\nPUBG电竞年度压轴大戏，2021年PGC（PUBG GLOBAL CHAMPIONSHIP）全球总决赛即将来临!来自四个不同赛区的32支队伍，经过长达一年的激烈竞争，终于来到了最后的决战舞台，追逐全球总冠军的无尚荣耀。\n</div>\n<br/>\n<div class=\"content\">\n接下来，让我们了解全球总决赛的更多信息。\n</div>\n<br/>\n<div class=\"listHead\">\nPGC 2021比赛赛制\n</div>\n<img src=\"https://pic.rmb.bdstatic.com/bjh/down/dcfdb9e437ae3a2791aec04807fea830.jpeg@wm_2,t_55m+5a625Y+3L+Wbp+eOi+iAhQ==,fc_ffffff,ff_U2ltSGVp,sz_32,x_20,y_20\"/>\n<br/>\n<div class=\"content\">\nPGC 2021将从11月19日的排位赛开始，以12月19日的总决赛结束。就像今年早些时候的PGI.S一样，PGC 2021将以区域对抗的形式进行比赛,主赛场位于韩国。来自全球32支顶级PUBG俱乐部，将争夺超过200万美元的奖金。参赛队伍还将从PGC游戏商店道具的销售中获益，赛事专属道具销售纯收入的30%将被纳入赛事奖金池。\n</div>', 31, '2021-11-05 11:00:50');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (11, '骑士归来，巅峰立新王，恭喜EDG勇夺2021全球总决赛冠军！', 'https://img.tgl.qq.com/cover/20211107/f5061da66d17526fa406ab3228b43107_1636219755.jpg', '<img src=\"https://img.tgl.qq.com/cover/20211107/f5061da66d17526fa406ab3228b43107_1636219755.jpg\" />', 24, '2021-11-07 01:31:27');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (12, 'Welcome to the Internet！12月4日The Internet邀请赛正式打响！', 'https://img.thaihot.com.cn/uploadimg/image/20211125/20211125142303_42757.jpeg', '<div class=\"content\">\n      在12月4日，由斗鱼主播Zard主办的The&nbsp;Internet邀请赛正赛就将打响！本次赛事将由16支互联网公司代表队进行双败淘汰赛，16支代表队在上周通过抽签确定了各自的半区及对手，他们将首先进行分组赛的较量，胜者进入胜者组第一轮，败者进入败者组第一轮。以下为分组赛对阵及赛程：\n    </div>\n    <div class=\"listHead\">\n      12月4日\n    </div>\n    <div class=\"list\">\n      16点：鲨鱼刀刀 vs 乆乆\n    </div>\n    <div class=\"list\">\n      17点：aidu vs RUOK\n    </div>\n    <div class=\"list\">\n      18点：TS vs 基地\n    </div>\n    <div class=\"list\">\n      19点：小企鹅 vs 嘉心糖\n    </div>\n    <div class=\"list\">\n      20点：黑豚 vs 小福豹\n    </div>\n    <div class=\"list\">\n      21点：菊内人 vs dodo\n    </div>\n    <div class=\"listHead\">\n      12月5日\n    </div>\n    <div class=\"list\">\n      16点：超级犸莉 vs Hot Liquid\n    </div>\n    <div class=\"list\">\n      17点：老干杯 vs 姜硬\n    </div>\n    <img src=\"https://img.thaihot.com.cn/uploadimg/image/20211125/20211125142303_42757.jpeg\"/>\n    <div class=\"content\">\n      本次赛事为期6天，将从本周六（12月4日）开始的每个周末比赛，分三个周末进行。12月4日与5日将进行分组赛和胜者组第一轮的比赛；12月11日、12日将进行败者组第一轮、第二轮及胜者组第二轮的比赛；12月18日、19日将进行最后一阶段的比赛和总决赛。除了总决赛为BO3外，其余比赛均为BO1。除了精彩的比赛外，本次赛事还有着诸多看点。\n    </div>\n    <img src=\"https://imgs.aixifan.com/newUpload/255906_bdfa3cdf4f88411388e346ac7a819b92.jpg\"/>\n    <div class=\"content\">\n      本次赛事既然被叫做“TI”，那么赛事的奖励自然也是十分“TI”的。首先是Zard为冠军准备的定制“不朽盾”，同时斗鱼DOTA2也为冠军队伍定制了五枚冠军盾样式的纯金戒指，以及完美世界提供的影魔手办，让赛事冠军拥有一次接近TI的冠军体验。除此以外，比赛期间还有丰富的奖品在斗鱼Zard直播间抽奖送出，在决赛日当天直播间还会免费抽出由斗鱼DOTA2定制的冠军同款镀金戒指！\n    </div>\n    <img src=\"https://pics4.baidu.com/feed/ae51f3deb48f8c54905af1ed30eba9fce2fe7fb5.jpeg@f_auto?token=fd4af64368547a05e72f460fce9cbc44\"/>\n    <div class=\"content\">\n      在之前，各个代表队的队名已经引发了大家的广泛关注，想必如今大家已经对于各个代表队代表的公司有了一定的了解。如今各个队伍的队标也都已经设计完成了，这里面有设计出彩的“鲨鱼刀刀”“黑豚战队”“小福豹”等等，也有像“乆乆”“姜硬”“RUOK”等等这样的以队标来玩梗的，大家也可以找找看这里面含有哪些要素。\n    </div>\n    <img src=\"https://imgs.aixifan.com/newUpload/255906_5c513aaa9f544cd1b2d9614b51c64b52.jpg\"/>\n    <div class=\"content\">\n      在12月4日比赛开始前，是否Z胖会为我们带来那句经典的“Welcome to the Internet”呢？各个战队的出场短片会有怎样的效果呢？各个互联网代表队的比赛又会给我们怎样的惊喜呢？就让我们一同期待即将开始的The Internet邀请赛吧，12月4日下午16点不见不散！​​​​\n    </div>', 67, '2021-12-03 14:43:15');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (13, '柏林Major将于4月26日至5月7日进行', 'https://liquipedia.net/commons/images/9/9d/ESL_One_Berlin_Major_2023_allmode.png', '<img src=\"https://liquipedia.net/commons/images/9/9d/ESL_One_Berlin_Major_2023_allmode.png\"/>\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n柏林Major将于4月26日至5月7日进行，其中5月4日至5月7日的比赛将在线下场馆Velodrom Arena进行，奖金共50万美元。\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n随着各地区的DPC S级联赛陆续结束，获得ESL One柏林Major参赛资格的战队名单也已经全部确定。</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n各地区出线队伍名单：\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n中国联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nXG\r\n</p>\r\n<p>\r\nPSG.LGD\r\n</p>\r\n<p>\r\nIG\r\n</p>\r\n<p>\r\nAster\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n西欧联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nTeam Liquid\r\n</p>\r\n<p>\r\nTundra\r\n</p>\r\n<p>\r\nGG\r\n</p>\r\n<p>\r\nOG\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n东欧联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nEx-Hellraiser\r\n</p>\r\n<p>\r\nTeam Spirit\r\n</p>\r\n<p>\r\nBB\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n南美联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nBeastcoast\r\n</p>\r\n<p>\r\nEG\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n北美联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nTSM\r\n</p>\r\n<p>\r\nSR\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n东南亚联赛：\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\nTalon\r\n</p>\r\n<p>\r\nXctN\r\n</p>\r\n<p>\r\nSMG\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n本次ESL One柏林Major将会在4月26日至5月7日在德国柏林举行，比赛分为小组赛和淘汰赛两个阶段。\r\n</div>\r\n\r\n<div class=\"content\">\r\n小组赛阶段，18支战队将会分入两个小组，赛制为单循环的BO2的比赛，其中取得小组前四的队伍将会直接进入到淘汰赛的胜者组，而排在第五以及第六的两支队伍将会进入到淘汰赛的败者组，各小组倒数三名的队伍则将被淘汰出局。\r\n</div>\r\n\r\n<div class=\"content\">\r\n淘汰赛阶段的比赛则将是双败淘汰的形式，除了最后的决赛之外，所有比赛都是BO3的形式，而决赛将会进行BO5的对决。\r\n</div>\r\n\r\n<div class=\"content\">\r\n而本次Major的总奖池高达50万美元，并且将会有总计2700分的DPC积分，其中夺得冠军的战队将会获得20万美元的奖金以及500分的DPC积分。\r\n</div>\r\n', 13, '2023-05-02 11:44:43');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (14, '2023全球总决赛举办城市、日期和售票信息正式公布', 'https://img.tgl.qq.com/cover/20230423/0f6bbb24fc9bacdf349bba49de4770a0_1682225631.jpg', '<img src=\"https://img.tgl.qq.com/cover/20230423/0f6bbb24fc9bacdf349bba49de4770a0_1682225631.jpg\"/>\r\n<br/>\r\n<div class=\"listHead\">\r\n<p>\r\n全球总决赛将于今年 10 月起在韩国釜山和首尔举办。\r\n</p>\r\n<p>\r\n门票将于 7 月 10 日起分三批开售。\r\n</p>\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n英雄联盟全球总决赛将重返韩国！10 月 10 日 - 11 月 19 日，全球队伍将齐聚此地，争夺电竞领域最具声望的冠军头衔。\r\n<br/>\r\n</div>\r\n<div class=\"content\">\r\n全球总决赛将在首尔拉开帷幕，随后前往釜山，最后回到首尔标志性的天空巨蛋。两支冠亚军决赛队伍将在这里一决高下，争夺召唤师奖杯。\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n“韩国是电竞和游戏领域中卓越的代名词，有着热情的粉丝群体，培养了一批世界上最具天赋的选手，”英雄联盟赛事全球负责人 Naz Aletaha 表示，“很高兴让全球总决赛回归电竞的开拓地和 LCK 赛区的家乡，期待在今年秋天与韩国和全球粉丝一起，庆祝这场《英雄联盟》最顶尖的盛会。”\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n韩国曾在釜山举办了 2022 季中冠军赛，并在多个城市间举办过 2018 全球总决赛和 2014 全球总决赛。\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n“很高兴能在五年后举办英雄联盟赛事的巅峰盛典，”LCK 赛区秘书长 Aiden Lee 表示，“我们正与首尔和釜山密切合作，为粉丝带来最棒的体验，迫不及待将全新赛制下的全球总决赛呈现给大家。”\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n在全球总决赛的新赛制中，22 支队伍将进行 3 个阶段的比赛。如果你还不熟悉赛制改动，不妨去看看我们在 1 月发布的《英雄联盟电竞赛事2023年展望》\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n<p>\r\n•	入围赛将于 10 月 10 - 15 日在首尔LoL Park举办。<br/>\r\n</p>\r\n<p>\r\n•	瑞士轮将于 10 月 19 - 23 日和 10 月 26 - 29 日在首尔的 KBS 体育场举办。<br/>\r\n</p>\r\n<p>\r\n•	淘汰赛包括四分之一决赛、半决赛和冠亚军决赛。四分之一决赛定于 11 月 2 - 5 日，半决赛定于11 月 11 - 12 日，两场比赛都将在釜山社稷室内体育馆举办。<br/>\r\n</p>\r\n<p>\r\n•	决赛将于 11 月 19 日在首尔的高尺天空巨蛋举办，这里是韩国最大的室内场馆，也是首尔棒球队培证英雄队的主场。\r\n</p>\r\n</div>\r\n<br/>\r\n<div class=\" listHead\">\r\n注意：为了支持 9 月 23 日 - 10 月 8 日在中国杭州举办的第 19 届亚洲运动会，考虑到在亚洲运动会上参赛的英雄联盟电竞职业选手，本次全球总决赛的举办时间要晚于以往全球总决赛时间！《英雄联盟》和其他 6 款电竞游戏将首次成为亚运会的奖牌项目。\r\n</div>\r\n<br/>\r\n<div class=\"content\">\r\n观赛门票将分三批开售！入围赛门票将于7月10日起开售，瑞士轮门票将于7月19日起开售，淘汰赛门票将于8月2日起开售。\r\n</div>\r\n', 14, '2023-05-02 11:45:33');
INSERT INTO `news` (`id`, `title`, `pic`, `content`, `views`, `createTime`) VALUES (15, '2023季中冠军赛观赛指南', 'https://img.tgl.qq.com/cover/20230424/4b8e19bef1c70c5bf41da614944b5a36_1682347801.png', '<img src=\"https://img.tgl.qq.com/cover/20230424/4b8e19bef1c70c5bf41da614944b5a36_1682347801.png\"/>\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n2023季中冠军赛观赛指南\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n勇敢前行，无畏破障，2023 季中冠军赛即将于 5 月 2 日正式开赛！本文将为您介绍本次比赛的详细情况。\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n什么是季中冠军赛？\r\n</div>\r\n\r\n<div class=\"content\">\r\n<p>\r\n季中冠军赛（MSI）是英雄联盟赛事每年的第一场国际性赛事。季中冠军赛是一个在赛季中期评估各支队伍和赛区优劣势的机会，代表九大赛区的队伍将会为了季中冠军赛的冠军头衔一决高下。这场赛事每年都会在不同赛区举办；今年，队伍们将在英国伦敦展开角逐。\r\n</p>\r\n<p>\r\n今年季中冠军赛的主题是“破障”，意在大胆挑战自身极限，拒绝屈从于消极态度。而季中冠军赛，正是各赛区的队伍打破世人对赛区固有认知的竞技场。迈向伟大的第一步就是超越自身的极限，展现勇猛破障的精神。\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n季中冠军赛什么时候开始？\r\n</div>\r\n\r\n<div class=\"content\">\r\n季中冠军赛分为两个阶段：入围赛阶段（5月 2 日 - 7日）以及胜败分组赛阶段（5 月 9 日 - 14 日，5 月 16 日 - 21 日）\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n入围赛阶段（若无另行通知，则所有比赛都将于北京时间晚上 8 点开始）\r\n<p>\r\n•	5 月 2 日星期二<br/>\r\n</p>\r\n<p>\r\n•	5 月 3 日星期三<br/>\r\n</p>\r\n<p>\r\n•	5 月 4 日星期四<br/>\r\n</p>\r\n<p>\r\n•	5 月 5 日星期五<br/>\r\n</p>\r\n<p>\r\n•	5 月 6 日星期六 - 北京时间晚上 7 点<br/>\r\n</p>\r\n<p>\r\n•	5 月 7 日星期日 - 北京时间晚上 7 点<br/>\r\n</p>\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n胜败分组赛阶段（若无另行通知，则所有比赛都将于北京时间晚上 8 点开始）\r\n<p>\r\n•	5 月 9 日星期二<br/>\r\n</p>\r\n<p>\r\n•	5 月 10 日星期三<br/>\r\n</p>\r\n<p>\r\n•	5 月 11 日星期四<br/>\r\n</p>\r\n<p>\r\n•	5 月 12 日星期五<br/>\r\n</p>\r\n<p>\r\n•	5 月 13 日星期六 - 北京时间晚上 7 点<br/>\r\n</p>\r\n<p>\r\n•	5 月 14 日星期日 - 北京时间晚上 7 点<br/>\r\n</p>\r\n<p>\r\n•	5 月 16 日星期二<br/>\r\n</p>\r\n<p>\r\n•	5 月 17 日星期三<br/>\r\n</p>\r\n<p>\r\n•	5 月 18 日星期四<br/>\r\n</p>\r\n<p>\r\n•	5 月 19 日星期五<br/>\r\n</p>\r\n<p>\r\n•	5 月 20 日星期六 - 北京时间晚上 7 点<br/>\r\n</p>\r\n<p>\r\n•	5 月 21 日星期日（决赛） - 北京时间晚上 7 点<br/>\r\n</p>\r\n\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"listHead\">\r\n季中冠军赛在哪里举办？\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n本次比赛将在英国伦敦的Copper Box Arena举办。伦敦是英国最大的城市，拥有 1900 余年历史和 900 万人口。Copper Box Arena自建成以来的 10 年里，先后主办过 2012 夏季奥运会以及多次电竞赛事。\r\n</div>\r\n\r\n<div class=\"listHead\">\r\n季中冠军赛的赛制是怎样的？\r\n</div>\r\n\r\n<br/>\r\n\r\n<div class=\"content\">\r\n<p>\r\n入围赛阶段：在入围赛中，来自 5 个赛区的 1 号种子队伍将和来自 LPL、LCS 以及 LEC 的 2 号种子队伍为了胜败分组赛的 3 个名额展开角逐。比赛开始之际，8 支队伍将被分为 2 组，分别进行 BO3 双败淘汰赛。待两组比赛结束后，战绩为 2-0 的两支队伍将直接晋级胜败分组赛阶段，而战绩为 0-2 的两支队伍和战绩为 1-2 的两支队伍，将直接出局。两组内战绩为 2-1 且在败者组比赛中胜出的两支队伍，将展开 BO5 的较量，争夺分组赛的最后一个席位。\r\n</p>\r\n<p>\r\n请注意：因为 LCK 赢得了 2022 全球总决赛，所以在 2023 季中冠军赛中，LCK 的 2 号种子队伍将直接晋级胜败分组赛阶段。\r\n</p>\r\n<p>\r\n胜败分组赛阶段：在分组赛阶段中，8 支队伍将进行 BO5 双败淘汰赛。此阶段将包含入围赛的 3 支晋级队伍，以及 LEC 1 号种子、LCS 1 号种子、LPL 1 号种子、LCK 1 号和 2 号种子。入围赛阶段结束后，将进行分组赛的捉对抽签。\r\n</p>\r\n</div>\r\n', 35, '2023-05-02 11:46:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of player
-- ----------------------------
BEGIN;
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (1, 'PSG.LGD', 'test/psglgd.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (2, 'Team Spirit', 'test/spirit.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (3, 'DAMWON Gaming KIA', 'test/dk.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (4, 'EDward Gaming', 'test/edg.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (5, 'Invictus Gaming', 'test/ig.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (6, 'Royal Never Give Up', 'test/rng.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (7, 'Team Secret', 'test/secret.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (8, 'Acend', 'test/Acend.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (9, 'Execration', 'test/xctn.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (10, 'OB Esports x Neon', 'test/obneon.jpg');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (11, 'Vici Gaming', 'test/vg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (12, 'Virtus.pro', 'test/vp.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (13, 'SK Telecom T1', 'test/t1.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (14, 'OG', 'test/og.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (15, 'Fnatic', 'test/fnc.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (16, 'Quincy Crew', 'test/qc.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (17, 'Alliance', 'test/alliance.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (18, 'Evil Geniuses', 'test/eg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (19, 'EHOME', 'test/ehome.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (20, 'LBZS', 'test/lbzs.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (21, 'Phoenix Gaming', 'test/phoenix.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (22, 'Team Aster', 'test/aster.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (23, 'Team Liquid', 'test/tl.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (24, 'Cloud9', 'test/c9.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (25, 'Gambit Esports', 'test/gambit.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (26, 'X10 CRIT', 'test/x10.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (27, 'KRÜ Esports', 'test/kru.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (28, 'iG.Vitality', 'test/igv.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (29, 'Poke Gaming', 'test/poke.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (30, 'Xtreme Gaming', 'test/xg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (31, 'Tundra Esports', 'test/tundra.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (32, 'Gaimin Gladiators', 'test/gg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (33, '9Pandas', 'test/9pandas.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (34, 'BetBoom Team', 'test/bb.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (35, 'Talon Esports', 'test/talon.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (36, 'Team SMG', 'test/smg.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (37, 'TSM', 'test/tsm.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (38, 'Shopify Rebellion', 'test/sr.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (39, 'DetonatioN FocusMe', 'test/dfm.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (40, 'PSG Talon', 'test/psgtalon.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (41, 'G2 Esports', 'test/g2.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (42, 'LOUD', 'test/loud.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (43, 'Golden Guardians', 'test/goldeng.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (44, 'GAM Esports', 'test/gam.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (45, 'Bilibili Gaming', 'test/bilibili.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (46, 'Rainbow7', 'test/rainbow7.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (47, 'Gen.G', 'test/geng.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (48, 'MAD Lions', 'test/mad.png');
INSERT INTO `player` (`id`, `name`, `pic`) VALUES (49, 'JD Gaming', 'test/jdg.png');
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
  `coins` int DEFAULT '0' COMMENT '用户拥有的投票券',
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
INSERT INTO `user` (`username`, `password`, `nickname`, `avatar`, `coins`, `todayViews`, `createTime`, `lastLogin`, `role`) VALUES ('testtest', 'e10adc3949ba59abbe56e057f20f883e', 'test01', 'default-avatar/8.jpg', 10, 0, '2023-04-20 13:33:03', '2023-04-20 15:54:37', 'normal');
INSERT INTO `user` (`username`, `password`, `nickname`, `avatar`, `coins`, `todayViews`, `createTime`, `lastLogin`, `role`) VALUES ('yhzwealth', '62295398fd1e4ece3210d1179c95eaad', 'iamYBG', 'default-avatar/11.jpg', 181, 0, '2021-11-22 23:15:28', '2023-06-16 15:43:28', 'admin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
