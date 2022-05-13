/*
Navicat MySQL Data Transfer

Source Server         : myslq
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : dungeon_data

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2022-05-13 14:14:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dungeon_data
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_data`;
CREATE TABLE `dungeon_data` (
  `character_id` int DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `dungeon_id` int DEFAULT NULL,
  `dungeon_name` varchar(255) DEFAULT NULL,
  `myth_level` int DEFAULT NULL,
  `weekly_modify1` varchar(255) DEFAULT NULL,
  `weekly_modify2` varchar(255) DEFAULT NULL,
  `weekly_modify3` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `time_remaining` int DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of dungeon_data
-- ----------------------------
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12916', 'NW', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '134.577', '791225', '2022-05-09 13:25:09');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12916', 'NW', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '135', '870274', '2022-05-08 10:42:17');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13228', 'PF', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '133.364', '613808', '2022-05-08 07:58:27');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000000', 'STRT', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.704', '319134', '2022-05-10 11:46:09');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000000', 'STRT', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.842', '345016', '2022-05-10 09:47:16');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000000', 'STRT', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '133.304', '618782', '2022-05-08 09:49:38');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000000', 'STRT', '15', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '128.281', '614503', '2022-05-07 14:32:34');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000000', 'STRT', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '132.715', '508439', '2022-05-05 09:36:48');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12831', 'HOA', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.32', '202809', '2022-05-10 10:53:32');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '1000001', 'GMBT', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '132.76', '397658', '2022-05-01 05:34:20');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12841', 'TOP', '17', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '128.983', '-185607', '2022-05-12 09:48:13');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12841', 'TOP', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.699', '309989', '2022-05-09 12:45:54');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12841', 'TOP', '15', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '125.468', '85429', '2022-05-02 06:50:18');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '15', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '128.432', '708717', '2022-05-12 09:00:07');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '130.717', '148002', '2022-05-11 12:17:41');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.446', '298561', '2022-05-08 12:26:54');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '133.668', '757420', '2022-05-06 05:50:14');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '124.791', '-43080', '2022-05-01 13:41:45');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13309', 'DOS', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '131.645', '339711', '2022-05-01 08:47:32');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12842', 'SD', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '132.601', '512146', '2022-05-10 08:39:51');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12842', 'SD', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '130.496', '97686', '2022-05-01 10:09:19');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12842', 'SD', '16', 'Fortified', 'Raging', 'Explosive', 'dps', '131.797', '353835', '2022-04-26 13:48:03');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '13334', 'MISTS', '16', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '130.563', '81114', '2022-05-12 12:04:17');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '17', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '137.068', '387247', '2022-05-12 13:03:48');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '131.584', '296621', '2022-05-10 12:32:29');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '17', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '136.903', '356484', '2022-05-08 14:00:01');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '16', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '133.416', '639760', '2022-05-08 09:03:32');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '15', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '126.978', '370520', '2022-05-05 06:52:47');
INSERT INTO `dungeon_data` VALUES ('73431457', 'Mjoker', '12837', 'SOA', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '134.33', '810929', '2022-05-01 12:35:36');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '28', 'Fortified', 'Raging', 'Explosive', 'healer', '190.648', '112059', '2022-04-26 20:14:10');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '183.832', '662504', '2022-04-22 22:22:14');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '24', 'Fortified', 'Raging', 'Explosive', 'healer', '172.232', '385926', '2022-04-21 18:43:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '26', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '182.283', '394605', '2022-04-15 21:40:56');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '17', 'Fortified', 'Bolstering', 'Quaking', 'tank', '139.473', '773240', '2022-04-11 20:44:54');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '15', 'Fortified', 'Bolstering', 'Quaking', 'healer', '128.829', '662030', '2022-04-10 23:07:40');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '131.665', '287760', '2022-04-05 21:50:15');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '22', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '161.431', '247322', '2022-04-04 20:46:28');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '150.803', '138898', '2022-03-31 22:49:39');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '162.818', '487107', '2022-03-28 22:16:44');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '21', 'Fortified', 'Inspiring', 'Grievous', 'healer', '157.912', '503446', '2022-03-27 16:53:26');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12916', 'NW', '16', 'Fortified', 'Bursting', 'Storming', 'healer', '134.474', '773393', '2022-03-15 00:05:40');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '26', 'Tyrannical', 'Bursting', 'Volcanic', 'healer', '182.721', '496445', '2022-04-30 21:57:50');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '27', 'Fortified', 'Raging', 'Explosive', 'healer', '186.511', '275763', '2022-04-22 23:17:47');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '175.976', '178022', '2022-04-18 15:22:19');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '24', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '171.53', '279252', '2022-04-18 02:23:18');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '25', 'Fortified', 'Bolstering', 'Quaking', 'healer', '175.027', '4850', '2022-04-13 02:31:08');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '19', 'Fortified', 'Bolstering', 'Quaking', 'healer', '148.18', '580282', '2022-04-12 11:33:39');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '21', 'Fortified', 'Inspiring', 'Grievous', 'healer', '156.529', '278961', '2022-03-27 01:17:38');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '163.504', '639413', '2022-03-25 00:02:26');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '23', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '165.224', '40940', '2022-03-18 22:03:16');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '16', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '133.489', '636643', '2022-03-17 18:32:57');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '16', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '134.709', '859266', '2022-03-17 00:56:55');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '19', 'Fortified', 'Bursting', 'Storming', 'healer', '145.786', '143455', '2022-03-11 21:14:19');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '17', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '136.482', '270484', '2022-03-06 23:43:48');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13228', 'PF', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '128.628', '661971', '2022-03-05 02:45:16');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '28', 'Tyrannical', 'Bursting', 'Volcanic', 'healer', '183.69', '-245292', '2022-04-30 20:09:51');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '27', 'Fortified', 'Raging', 'Explosive', 'healer', '185.062', '11635', '2022-04-23 00:18:35');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '181.06', '198473', '2022-04-22 20:12:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '24', 'Fortified', 'Raging', 'Explosive', 'healer', '171.478', '276834', '2022-04-20 11:01:49');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '26', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '180.207', '38723', '2022-04-19 21:37:01');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '26', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '180.225', '42079', '2022-04-15 19:29:17');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '133.383', '633506', '2022-04-05 23:00:49');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '154.421', '-108446', '2022-03-29 22:12:59');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '21', 'Fortified', 'Inspiring', 'Grievous', 'healer', '155.7', '131009', '2022-03-25 21:06:39');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '21', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '155.452', '84674', '2022-03-18 20:23:14');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '19', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '145.194', '36333', '2022-03-18 00:48:19');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000000', 'STRT', '18', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '132.967', '-380784', '2022-03-17 03:38:04');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '27', 'Tyrannical', 'Bursting', 'Volcanic', 'healer', '185.777', '119406', '2022-04-30 21:00:01');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '27', 'Fortified', 'Raging', 'Explosive', 'healer', '186.159', '178121', '2022-04-26 18:45:47');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '176.742', '267722', '2022-04-16 23:15:08');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '24', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '171.873', '287888', '2022-04-16 20:33:44');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '19', 'Fortified', 'Bolstering', 'Quaking', 'tank', '146.776', '272931', '2022-04-11 21:52:43');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '21', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '156.602', '246220', '2022-03-30 23:52:57');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '21', 'Fortified', 'Inspiring', 'Grievous', 'healer', '156.619', '248832', '2022-03-27 03:32:26');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '24', 'Fortified', 'Inspiring', 'Grievous', 'healer', '171.316', '202287', '2022-03-25 21:42:10');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '20', 'Fortified', 'Bursting', 'Storming', 'healer', '150.462', '71069', '2022-03-16 01:47:40');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '17', 'Fortified', 'Bursting', 'Storming', 'healer', '136.913', '293981', '2022-03-12 03:54:13');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '127.537', '389831', '2022-03-04 03:48:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '126.697', '260746', '2022-03-04 03:00:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12831', 'HOA', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '122.98', '-310487', '2022-03-04 02:08:20');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '25', 'Tyrannical', 'Bursting', 'Volcanic', 'healer', '177.59', '373238', '2022-04-30 18:48:34');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '27', 'Fortified', 'Raging', 'Explosive', 'healer', '185.116', '16727', '2022-04-23 22:51:55');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '176.608', '231618', '2022-04-15 18:45:22');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '24', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '171.638', '236067', '2022-04-15 18:12:53');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '18', 'Fortified', 'Bolstering', 'Quaking', 'tank', '140.657', '94652', '2022-04-11 22:30:09');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '133.767', '542819', '2022-04-05 22:24:49');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '22', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '154.928', '-10310', '2022-04-02 18:22:10');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '24', 'Fortified', 'Inspiring', 'Grievous', 'healer', '170.714', '102941', '2022-03-26 21:59:03');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '162.426', '349575', '2022-03-26 20:10:26');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '17', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '137.374', '341996', '2022-03-17 17:47:46');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '1000001', 'GMBT', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '119.609', '-56333', '2022-03-07 01:12:43');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '181.316', '240203', '2022-04-22 21:45:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '24', 'Fortified', 'Raging', 'Explosive', 'healer', '171.306', '238408', '2022-04-22 00:13:42');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '175.656', '119691', '2022-04-19 20:46:49');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '169.259', '-135136', '2022-04-18 20:14:42');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '168.522', '-269650', '2022-04-18 19:05:40');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '23', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '159.915', '-15577', '2022-04-17 18:11:51');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '23', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '158.132', '-340834', '2022-04-17 17:22:44');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'healer', '150.263', '48015', '2022-03-31 02:41:58');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '23', 'Fortified', 'Inspiring', 'Grievous', 'healer', '165.119', '21664', '2022-03-26 00:06:07');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '18', 'Fortified', 'Inspiring', 'Grievous', 'healer', '143.169', '578254', '2022-03-25 00:46:23');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12841', 'TOP', '15', 'Fortified', 'Bursting', 'Storming', 'healer', '126.841', '335961', '2022-03-15 01:03:03');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '180.131', '27148', '2022-04-23 20:31:57');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '26', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '174.518', '-99623', '2022-04-15 22:50:05');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '19', 'Fortified', 'Bolstering', 'Quaking', 'healer', '146.963', '405304', '2022-04-11 23:18:14');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '23', 'Fortified', 'Inspiring', 'Grievous', 'healer', '165.12', '24729', '2022-03-29 21:13:49');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '160.66', '136192', '2022-03-27 04:34:12');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '20', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '152.364', '488107', '2022-03-18 19:24:32');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13309', 'DOS', '15', 'Fortified', 'Bursting', 'Storming', 'healer', '128.44', '710189', '2022-03-14 12:45:58');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '181.063', '209278', '2022-04-23 22:12:30');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '25', 'Fortified', 'Raging', 'Explosive', 'healer', '168.439', '-307267', '2022-04-22 03:06:32');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '175.017', '3413', '2022-04-20 02:57:24');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '24', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '170.594', '116912', '2022-04-18 22:59:20');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '23', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '165.043', '8495', '2022-04-17 16:25:00');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '15', 'Fortified', 'Bolstering', 'Quaking', 'healer', '129.06', '799310', '2022-04-12 12:09:54');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '23', 'Fortified', 'Inspiring', 'Grievous', 'healer', '166.839', '362119', '2022-03-26 23:23:45');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '17', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '138.537', '696449', '2022-03-17 23:52:34');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12842', 'SD', '17', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '137.151', '423511', '2022-03-05 00:59:00');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '16', 'Fortified', 'Spiteful', 'Necrotic', 'healer', '132.572', '370503', '2022-05-10 22:50:54');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '28', 'Fortified', 'Raging', 'Explosive', 'healer', '190.269', '38801', '2022-04-26 19:30:17');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '27', 'Fortified', 'Raging', 'Explosive', 'healer', '185.482', '69389', '2022-04-23 21:13:08');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '25', 'Fortified', 'Raging', 'Explosive', 'healer', '176.577', '227238', '2022-04-22 19:29:03');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '24', 'Fortified', 'Raging', 'Explosive', 'healer', '172.267', '326663', '2022-04-22 02:15:36');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '26', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '180.623', '89796', '2022-04-15 20:24:17');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '22', 'Fortified', 'Inspiring', 'Grievous', 'healer', '161.188', '171104', '2022-03-27 18:18:16');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '21', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '156.105', '159173', '2022-03-18 23:08:37');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '18', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '141.805', '260050', '2022-03-17 19:47:43');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '19', 'Fortified', 'Bursting', 'Storming', 'healer', '146.63', '234900', '2022-03-13 03:58:38');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '18', 'Fortified', 'Bursting', 'Storming', 'healer', '142.295', '330597', '2022-03-13 03:16:25');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '17', 'Fortified', 'Bursting', 'Storming', 'healer', '135.522', '75185', '2022-03-13 01:50:43');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '13334', 'MISTS', '17', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '135.604', '87042', '2022-03-04 04:19:31');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '26', 'Fortified', 'Raging', 'Explosive', 'healer', '181.147', '214808', '2022-04-22 21:02:19');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '25', 'Fortified', 'Raging', 'Explosive', 'healer', '168.057', '-363866', '2022-04-21 14:54:37');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '25', 'Tyrannical', 'Sanguine', 'Storming', 'healer', '176.274', '238603', '2022-04-16 22:09:55');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '17', 'Fortified', 'Bolstering', 'Quaking', 'tank', '139.186', '784007', '2022-04-11 21:21:48');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '23', 'Fortified', 'Inspiring', 'Grievous', 'healer', '166.423', '266448', '2022-03-26 21:11:56');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '22', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '160.638', '119489', '2022-03-18 21:16:57');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '18', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '142.737', '512566', '2022-03-17 19:18:01');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '17', 'Tyrannical', 'Raging', 'Volcanic', 'healer', '138.311', '620156', '2022-03-17 04:19:44');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '117.107', '-541809', '2022-03-09 01:21:37');
INSERT INTO `dungeon_data` VALUES ('2649252', 'Midway', '12837', 'SOA', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'healer', '132.229', '417362', '2022-03-07 00:28:46');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '157.163', '373974', '2022-05-07 08:40:28');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '16', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '135', '1049459', '2022-05-03 14:52:30');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '15', 'Fortified', 'Raging', 'Explosive', 'dps', '130', '867426', '2022-04-27 13:23:16');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '15', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '130', '875087', '2022-04-20 13:42:13');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '16', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '133.524', '609171', '2022-04-16 14:03:14');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '156.299', '224568', '2022-04-12 08:30:23');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '151.66', '286920', '2022-04-04 12:53:07');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '127.125', '367376', '2022-03-22 13:29:10');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '127.102', '363383', '2022-03-13 11:20:34');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '126.413', '244207', '2022-03-12 15:24:36');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '23', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '0.002', '-1754763', '2022-05-12 15:28:47');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '162.276', '415395', '2022-05-11 13:49:32');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.501', '273923', '2022-04-18 07:51:19');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.537', '97912', '2022-04-13 08:47:51');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '141.507', '275021', '2022-03-28 13:36:46');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '131.562', '284957', '2022-03-20 13:59:53');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '128.406', '621578', '2022-03-20 12:36:21');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13228', 'PF', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '0.001', '-1248770', '2022-03-05 13:36:09');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '147.541', '-460547', '2022-04-26 13:06:51');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '21', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '156.139', '213265', '2022-04-17 03:12:23');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.042', '7871', '2022-04-09 14:01:27');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '15', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '125.289', '54137', '2022-04-06 15:02:45');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '124.997', '-492', '2022-04-03 07:43:49');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '16', 'Fortified', 'Inspiring', 'Grievous', 'dps', '124.469', '-99433', '2022-03-29 13:51:15');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '16', 'Fortified', 'Inspiring', 'Grievous', 'dps', '0.002', '-944957', '2022-03-28 14:47:13');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '130.427', '80001', '2022-03-20 11:52:27');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000000', 'STRT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '0.001', '-3114374', '2022-03-20 06:49:26');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '23', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '165.876', '134699', '2022-05-10 14:21:45');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '162.271', '348956', '2022-05-09 08:51:40');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.802', '276942', '2022-04-17 08:13:25');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '146.461', '224523', '2022-04-04 12:09:36');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '145.079', '12137', '2022-03-28 12:46:54');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '127.344', '360220', '2022-03-23 13:41:41');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12831', 'HOA', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '124.245', '-116026', '2022-03-16 13:05:26');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '23', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '166.4', '201642', '2022-05-09 09:24:08');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '156.821', '262302', '2022-05-05 08:43:23');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '20', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '152.046', '294803', '2022-05-03 07:55:44');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '21', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '148.983', '-146533', '2022-04-17 08:55:54');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.124', '17817', '2022-04-10 03:46:47');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '19', 'Fortified', 'Bolstering', 'Quaking', 'dps', '146.789', '257781', '2022-04-09 13:16:17');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '123.033', '-283336', '2022-04-05 14:03:46');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '141.322', '190447', '2022-03-26 05:22:30');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '127.565', '369493', '2022-03-23 14:21:55');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '1000001', 'GMBT', '10', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '102.243', '323166', '2022-03-20 14:38:26');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '153.468', '-279533', '2022-05-07 07:42:37');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '21', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '155.925', '168853', '2022-05-04 09:16:47');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '155.661', '120569', '2022-04-27 09:43:25');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '19', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '137.052', '-537946', '2022-04-19 06:55:33');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.122', '22193', '2022-04-12 09:16:10');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '15', 'Fortified', 'Inspiring', 'Grievous', 'dps', '127.092', '381839', '2022-03-26 15:11:46');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12841', 'TOP', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '124.654', '-63162', '2022-03-22 14:16:52');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '24', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '163.831', '-241404', '2022-05-10 09:08:20');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '20', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '151.497', '309002', '2022-05-03 06:51:33');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '15', 'Fortified', 'Raging', 'Explosive', 'dps', '129.038', '833669', '2022-04-23 13:16:04');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '18', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '142.15', '443897', '2022-04-18 13:08:27');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '151.077', '222372', '2022-04-10 02:57:53');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '15', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '125.905', '186902', '2022-04-03 05:22:22');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13309', 'DOS', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '117.684', '-478116', '2022-03-16 14:48:26');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '155.809', '159314', '2022-04-27 12:49:55');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '16', 'Fortified', 'Raging', 'Explosive', 'dps', '131.797', '353835', '2022-04-26 13:48:03');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '151.43', '281549', '2022-04-23 06:09:00');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.344', '264702', '2022-04-18 09:26:56');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '15', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '127.195', '432098', '2022-04-06 14:18:09');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '17', 'Fortified', 'Inspiring', 'Grievous', 'dps', '136.018', '200439', '2022-03-26 03:51:15');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '133.158', '621838', '2022-03-21 11:24:52');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12842', 'SD', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '125.094', '18416', '2022-03-13 13:46:45');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '23', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '166.574', '226764', '2022-05-11 14:24:23');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '160.623', '89806', '2022-05-11 12:53:14');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '20', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '151.797', '258975', '2022-05-03 06:04:50');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.206', '173725', '2022-04-20 08:43:21');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '16', 'Fortified', 'Bolstering', 'Quaking', 'dps', '0.002', '-1107690', '2022-04-13 13:00:02');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '148.236', '-254101', '2022-04-13 07:45:52');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '15', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '128.101', '446754', '2022-04-05 14:41:08');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '144.559', '-63502', '2022-04-04 13:40:59');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '14', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '121.551', '223468', '2022-03-20 07:25:03');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '18', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '134.729', '-39044', '2022-03-20 05:02:56');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '14', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '123.088', '444968', '2022-03-20 03:47:47');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '13334', 'MISTS', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '119.941', '-8497', '2022-03-16 13:44:01');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '21', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '156.54', '288400', '2022-05-12 14:08:21');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '156.762', '329894', '2022-05-05 07:58:20');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '19', 'Fortified', 'Raging', 'Explosive', 'dps', '146.066', '199693', '2022-04-25 09:17:03');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '15', 'Fortified', 'Raging', 'Explosive', 'dps', '128.019', '565485', '2022-04-24 14:04:06');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '21', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '155.594', '111266', '2022-04-18 08:35:02');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '17', 'Fortified', 'Inspiring', 'Grievous', 'dps', '135.302', '56614', '2022-03-26 16:02:04');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '17', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '136.998', '374149', '2022-03-21 12:21:42');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '14', 'Fortified', 'Bursting', 'Storming', 'dps', '122.061', '386063', '2022-03-13 13:02:20');
INSERT INTO `dungeon_data` VALUES ('57455949', '假面魔影', '12837', 'SOA', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '118.174', '-342036', '2022-03-13 12:15:50');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '18', 'Fortified', 'Bolstering', 'Quaking', 'dps', '133.121', '-324763', '2022-04-13 14:22:13');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '156.299', '224568', '2022-04-12 08:30:23');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '144.621', '-65598', '2022-04-05 07:55:11');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '138.297', '-294456', '2022-04-02 05:18:04');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '20', 'Fortified', 'Inspiring', 'Grievous', 'dps', '150.975', '168475', '2022-03-29 13:59:34');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '142.484', '429447', '2022-03-24 11:03:43');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '133.289', '568537', '2022-03-21 14:30:44');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '134.088', '706737', '2022-03-20 11:26:29');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '18', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '133.996', '-173657', '2022-03-19 03:06:52');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '132.622', '453256', '2022-03-18 07:19:44');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '130.678', '117243', '2022-03-18 04:57:02');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '133.931', '679537', '2022-03-17 11:30:07');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '18', 'Fortified', 'Bursting', 'Storming', 'dps', '140.399', '69010', '2022-03-16 12:26:36');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '131.867', '322823', '2022-03-16 11:08:02');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '123.948', '-181810', '2022-03-15 12:03:10');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '127.337', '404035', '2022-03-15 05:01:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '133.167', '547509', '2022-03-12 09:41:23');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '134.136', '715024', '2022-03-12 07:22:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '17', 'Fortified', 'Bursting', 'Storming', 'dps', '137.772', '479291', '2022-03-12 06:49:56');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '126.875', '324126', '2022-03-11 16:49:13');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '126.575', '272363', '2022-03-11 10:52:40');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '125.122', '21171', '2022-03-10 08:09:26');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12916', 'NW', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '130.285', '49233', '2022-03-05 03:15:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '20', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '150.172', '31390', '2022-05-05 14:33:46');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '21', 'Tyrannical', 'Bursting', 'Volcanic', 'dps', '149.684', '-57709', '2022-05-04 13:50:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '150.685', '125043', '2022-04-23 11:16:44');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '17', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '136.199', '218719', '2022-04-19 14:52:49');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '19', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '148.023', '551670', '2022-04-14 06:51:50');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '149.847', '-27976', '2022-04-10 11:31:33');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '151.748', '319050', '2022-04-05 14:35:13');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '131.849', '337428', '2022-04-03 14:13:39');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '0.002', '-1968817', '2022-04-01 11:59:16');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '130.838', '152941', '2022-03-31 15:21:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '20', 'Fortified', 'Inspiring', 'Grievous', 'dps', '151.048', '191180', '2022-03-29 11:31:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '141.507', '275021', '2022-03-28 13:36:46');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '15', 'Fortified', 'Inspiring', 'Grievous', 'dps', '128.969', '724278', '2022-03-26 08:30:03');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '146.063', '193968', '2022-03-24 14:45:36');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '119.933', '-12246', '2022-03-19 15:11:31');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '17', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '137.227', '406425', '2022-03-18 03:26:20');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '130.119', '21728', '2022-03-10 07:09:02');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '121.513', '-636296', '2022-03-07 03:17:57');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13228', 'PF', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '124.556', '-80947', '2022-03-05 11:45:08');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '155.479', '89635', '2022-05-05 15:14:59');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '161.031', '193158', '2022-05-05 13:22:17');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '147.541', '-460547', '2022-04-26 13:06:51');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '150.378', '70880', '2022-04-24 11:31:14');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '150.319', '59755', '2022-04-14 08:16:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '17', 'Fortified', 'Bolstering', 'Quaking', 'dps', '136.1', '205997', '2022-04-13 13:28:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.042', '7871', '2022-04-09 14:01:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '151.485', '278187', '2022-04-08 08:23:23');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '117.974', '-379508', '2022-04-03 12:45:57');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '143.698', '-243872', '2022-04-01 09:40:49');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '16', 'Fortified', 'Inspiring', 'Grievous', 'dps', '121.758', '-607143', '2022-03-25 12:33:09');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '126.96', '367131', '2022-03-21 11:43:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '121.226', '-706858', '2022-03-21 07:56:09');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '116.188', '-713973', '2022-03-19 13:45:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '118.298', '-318769', '2022-03-18 08:31:24');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '17', 'Fortified', 'Bursting', 'Storming', 'dps', '135.218', '40880', '2022-03-12 09:04:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '115.375', '-866241', '2022-03-10 03:34:33');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000000', 'STRT', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '0.001', '-2050106', '2022-03-06 11:29:56');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '156.345', '206687', '2022-05-07 06:53:28');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '151.662', '255468', '2022-04-21 12:58:04');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '15', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '127.363', '363176', '2022-04-19 14:00:25');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '150.968', '148770', '2022-04-18 12:10:15');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '153.144', '483150', '2022-04-15 12:32:12');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '141.319', '-565717', '2022-04-10 08:01:22');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '17', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '137.86', '439501', '2022-04-03 14:54:48');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '146.609', '247271', '2022-04-02 06:55:41');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '17', 'Fortified', 'Inspiring', 'Grievous', 'dps', '137.326', '357422', '2022-03-30 14:41:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '145.079', '12137', '2022-03-28 12:46:54');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '130.15', '22987', '2022-03-23 14:25:10');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '130.126', '19289', '2022-03-23 13:46:29');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '133.347', '514428', '2022-03-18 11:31:34');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '18', 'Fortified', 'Bursting', 'Storming', 'dps', '140.374', '57437', '2022-03-15 09:11:38');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '132.2', '338074', '2022-03-11 08:20:48');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '124.364', '-97676', '2022-03-08 06:27:30');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12831', 'HOA', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '0.002', '-2173937', '2022-03-07 15:22:59');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '16', 'Tyrannical', 'Inspiring', 'Quaking', 'dps', '133.335', '480444', '2022-05-12 11:21:39');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '155.577', '83175', '2022-05-07 11:32:19');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '19', 'Fortified', 'Raging', 'Explosive', 'dps', '145.364', '52407', '2022-04-24 13:12:44');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '141.444', '-512317', '2022-04-24 12:27:05');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '144.583', '-60013', '2022-04-23 12:37:39');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.124', '17817', '2022-04-10 03:46:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '19', 'Fortified', 'Bolstering', 'Quaking', 'dps', '146.789', '257781', '2022-04-09 13:16:17');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '148.095', '-274457', '2022-04-09 08:34:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '17', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '129.801', '-28724', '2022-04-03 13:27:22');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '146.184', '170610', '2022-04-01 08:24:25');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '16', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '120.9', '-590758', '2022-03-31 12:04:08');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '15', 'Fortified', 'Inspiring', 'Grievous', 'dps', '127.228', '320972', '2022-03-30 14:03:54');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '146.042', '150172', '2022-03-28 11:19:14');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '15', 'Fortified', 'Inspiring', 'Grievous', 'dps', '128.185', '458916', '2022-03-27 13:53:51');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '141.322', '190447', '2022-03-26 05:22:30');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '131.293', '186308', '2022-03-21 06:58:53');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '14', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '114.11', '-128254', '2022-03-19 14:24:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '0.002', '-761962', '2022-03-19 06:52:39');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '117.199', '-403615', '2022-03-18 13:29:25');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '1000001', 'GMBT', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '123.641', '-195831', '2022-03-12 13:40:42');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '20', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '142.047', '-538878', '2022-05-07 13:41:59');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '153.468', '-279533', '2022-05-07 07:42:37');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '16', 'Fortified', 'Bolstering', 'Quaking', 'dps', '130.544', '99356', '2022-04-13 12:44:11');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '150.122', '22193', '2022-04-12 09:16:10');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '144.376', '-113828', '2022-04-10 06:02:30');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '0.002', '-1016551', '2022-04-08 09:21:53');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '19', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '145.006', '1079', '2022-04-05 08:55:00');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '17', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '128.524', '-269369', '2022-04-01 06:10:18');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '141.513', '276131', '2022-03-26 11:49:16');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '17', 'Fortified', 'Bursting', 'Storming', 'dps', '136.365', '249117', '2022-03-11 05:46:05');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '122.897', '-383836', '2022-03-10 12:22:58');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '123.662', '-244235', '2022-03-03 11:50:43');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12841', 'TOP', '12', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '104.551', '-81878', '2022-03-03 10:57:14');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '18', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '142.15', '443897', '2022-04-18 13:08:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '149.709', '-60166', '2022-04-11 13:08:26');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '20', 'Fortified', 'Bolstering', 'Quaking', 'dps', '144.922', '-16047', '2022-04-09 12:10:10');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '140.651', '-897999', '2022-04-05 05:31:56');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '144.983', '-3590', '2022-04-01 07:14:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '145.007', '1534', '2022-03-28 09:17:41');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '16', 'Fortified', 'Inspiring', 'Grievous', 'dps', '130.883', '182296', '2022-03-27 12:35:49');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '17', 'Fortified', 'Inspiring', 'Grievous', 'dps', '137.142', '442282', '2022-03-26 09:29:12');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '132.004', '-618708', '2022-03-25 08:09:42');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '17', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '136.805', '372689', '2022-03-22 05:40:42');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '131.054', '217541', '2022-03-18 14:23:04');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '119.569', '-88945', '2022-03-13 08:09:15');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '131.287', '265673', '2022-03-12 14:44:56');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '115.891', '-848371', '2022-03-12 06:12:10');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '123.375', '-335574', '2022-03-07 09:11:51');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13309', 'DOS', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '120.798', '-867631', '2022-03-05 12:59:14');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '152.732', '-446608', '2022-05-10 13:24:53');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '155.809', '159314', '2022-04-27 12:49:55');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '150.914', '180026', '2022-04-24 13:58:56');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '20', 'Fortified', 'Raging', 'Explosive', 'dps', '150.84', '165283', '2022-04-21 12:14:51');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '155.315', '62053', '2022-04-11 13:58:31');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '0.002', '-1911311', '2022-04-07 12:55:19');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '150.598', '117731', '2022-04-06 13:37:43');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '20', 'Fortified', 'Inspiring', 'Grievous', 'dps', '143.642', '-267361', '2022-03-27 11:31:13');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '121.694', '-650882', '2022-03-19 09:12:22');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '18', 'Fortified', 'Bursting', 'Storming', 'dps', '141.236', '243346', '2022-03-16 13:09:11');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '17', 'Fortified', 'Bursting', 'Storming', 'dps', '128.221', '-350325', '2022-03-15 14:21:17');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '125.432', '85098', '2022-03-10 08:53:54');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12842', 'SD', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '119.77', '-45303', '2022-03-05 10:01:13');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '22', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '160.623', '89806', '2022-05-11 12:53:14');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '151.768', '254727', '2022-05-07 12:05:19');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '15', 'Fortified', 'Raging', 'Explosive', 'dps', '127.313', '333240', '2022-04-26 14:19:12');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '21', 'Fortified', 'Raging', 'Explosive', 'dps', '155.366', '52758', '2022-04-22 09:42:30');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.273', '183394', '2022-04-19 12:54:49');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '144.41', '-85052', '2022-04-18 11:21:29');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Tyrannical', 'Sanguine', 'Storming', 'dps', '151.851', '266709', '2022-04-15 11:59:21');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '155.766', '110318', '2022-04-08 15:23:59');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '144.559', '-63502', '2022-04-04 13:40:59');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '20', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '144.653', '-50033', '2022-04-02 08:02:28');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '18', 'Fortified', 'Inspiring', 'Grievous', 'dps', '134.626', '-53933', '2022-03-30 12:36:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '146.576', '227096', '2022-03-27 09:10:50');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '19', 'Fortified', 'Inspiring', 'Grievous', 'dps', '145.358', '51532', '2022-03-24 14:03:34');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '17', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '137.255', '324966', '2022-03-17 10:56:11');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '124.325', '-97201', '2022-03-11 11:47:51');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '130.368', '53079', '2022-03-11 08:58:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '17', 'Fortified', 'Bursting', 'Storming', 'dps', '136.335', '192378', '2022-03-10 05:51:30');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '13334', 'MISTS', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '126.065', '153491', '2022-03-05 04:54:35');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '21', 'Fortified', 'Spiteful', 'Necrotic', 'dps', '155.237', '44393', '2022-05-07 12:51:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '21', 'Fortified', 'Bolstering', 'Quaking', 'dps', '155.046', '8616', '2022-04-10 07:11:57');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '21', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '149.577', '-79290', '2022-04-04 07:57:53');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '17', 'Tyrannical', 'Spiteful', 'Necrotic', 'dps', '136.778', '333025', '2022-04-01 05:10:41');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '20', 'Fortified', 'Inspiring', 'Grievous', 'dps', '143.547', '-272207', '2022-03-30 03:22:32');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '21', 'Fortified', 'Inspiring', 'Grievous', 'dps', '0.002', '-1087539', '2022-03-29 15:46:08');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '18', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '142.932', '549133', '2022-03-20 05:41:55');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '15', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '125.091', '17105', '2022-03-19 08:13:15');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '16', 'Tyrannical', 'Raging', 'Volcanic', 'dps', '130.379', '70997', '2022-03-17 03:49:47');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '123.519', '-277357', '2022-03-15 08:02:07');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '18', 'Fortified', 'Bursting', 'Storming', 'dps', '140.852', '159584', '2022-03-12 11:45:38');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '117.942', '-385512', '2022-03-11 12:41:27');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '16', 'Fortified', 'Bursting', 'Storming', 'dps', '122.582', '-452848', '2022-03-11 07:31:24');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '15', 'Fortified', 'Bursting', 'Storming', 'dps', '125.493', '92411', '2022-03-11 06:32:34');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '15', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '125.298', '55739', '2022-03-04 13:43:21');
INSERT INTO `dungeon_data` VALUES ('42254052', '浮士德遊魂', '12837', 'SOA', '16', 'Tyrannical', 'Bolstering', 'Explosive', 'dps', '0.002', '-1148750', '2022-03-04 12:30:01');

-- ----------------------------
-- Table structure for 个人能力状图数据
-- ----------------------------
DROP TABLE IF EXISTS `个人能力状图数据`;
CREATE TABLE `个人能力状图数据` (
  `character_id` int DEFAULT NULL,
  `限时能力` int DEFAULT NULL,
  `AOE能力` int DEFAULT NULL COMMENT '小怪周限时率',
  `生存能力` int DEFAULT NULL COMMENT '地震限时率+火山限时率',
  `冲层能力` int DEFAULT NULL COMMENT '24层以上限时率',
  `团队配合能力` int DEFAULT NULL COMMENT '尸爆限时率+鼓舞限时率\r\n',
  `单体输出能力` int DEFAULT NULL COMMENT '暴君周限时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 个人能力状图数据
-- ----------------------------

-- ----------------------------
-- Table structure for 个副本限时超时次数对比
-- ----------------------------
DROP TABLE IF EXISTS `个副本限时超时次数对比`;
CREATE TABLE `个副本限时超时次数对比` (
  `character_id` int DEFAULT NULL,
  `dungeon_name` int DEFAULT NULL,
  `intime` int DEFAULT NULL,
  `out_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 个副本限时超时次数对比
-- ----------------------------

-- ----------------------------
-- Table structure for 副本内角色统计
-- ----------------------------
DROP TABLE IF EXISTS `副本内角色统计`;
CREATE TABLE `副本内角色统计` (
  `character_id` int DEFAULT NULL,
  `dungeon_name` varchar(255) DEFAULT NULL,
  `dps` int DEFAULT NULL,
  `healer` int DEFAULT NULL,
  `tank` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 副本内角色统计
-- ----------------------------

-- ----------------------------
-- Table structure for 各副本次数统计
-- ----------------------------
DROP TABLE IF EXISTS `各副本次数统计`;
CREATE TABLE `各副本次数统计` (
  `character_id` int DEFAULT NULL,
  `dungeon_name` varchar(255) DEFAULT NULL,
  `total_times` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 各副本次数统计
-- ----------------------------

-- ----------------------------
-- Table structure for 最后5次副本
-- ----------------------------
DROP TABLE IF EXISTS `最后5次副本`;
CREATE TABLE `最后5次副本` (
  `character_id` int DEFAULT NULL,
  `dungeon_name` varchar(255) DEFAULT NULL,
  `myth_level` int DEFAULT NULL,
  `time_remaining` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 最后5次副本
-- ----------------------------

-- ----------------------------
-- Table structure for 角色信息
-- ----------------------------
DROP TABLE IF EXISTS `角色信息`;
CREATE TABLE `角色信息` (
  `character_id` int DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `faction` varchar(255) DEFAULT NULL,
  `realm` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `total_score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of 角色信息
-- ----------------------------
