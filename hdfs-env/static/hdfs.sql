/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : hdfs

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2017-05-13 12:55:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `op_log`
-- ----------------------------
DROP TABLE IF EXISTS `op_log`;
CREATE TABLE `op_log` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op_time` datetime NOT NULL,
  `op_result` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of op_log
-- ----------------------------
INSERT INTO `op_log` VALUES ('01ea0e6d-088f-47cc-8c4e-8e8f6118b5ee', 'hozouhing', '95640747-c911-44fd-b5cc-f1a80dacae9b', '查询文件列表', '/hozouhing', '2017-05-02 15:25:04', '成功');
INSERT INTO `op_log` VALUES ('02e89421-17e9-4bc0-982a-2358225db368', 'hozouhing', '6d91ae0f-51a0-40fe-8bea-1b075c337b5e', '查询文件列表', '/hozouhing', '2017-05-01 23:32:22', '成功');
INSERT INTO `op_log` VALUES ('030937b1-4174-4917-8bff-2b27dec99143', 'hozouhing', '25f6fc1c-f142-4347-a9c6-c75f829513a7', '查询文件列表', '/hozouhing', '2017-05-01 23:32:59', '成功');
INSERT INTO `op_log` VALUES ('03128e28-6133-405e-83f0-1026bbef381d', 'hozouhing', 'c79a5cf6-2b84-4f0b-80ba-23b7c2d23098', '查询文件列表', '/hozouhing', '2017-05-01 16:20:38', '成功');
INSERT INTO `op_log` VALUES ('0352c055-06ea-404b-8e44-f478c4566b62', 'hozouhing', 'd7d2b983-1da4-4e61-a9b8-7f0c967774a4', '查询文件列表', '/hozouhing', '2017-05-02 16:15:21', '成功');
INSERT INTO `op_log` VALUES ('0460ad52-bc7e-46f0-b621-d1645c9be970', 'hozouhing', '0374ccf2-4925-4142-8804-1d30c0adc306', '查询文件列表', '/', '2017-05-02 15:32:13', '成功');
INSERT INTO `op_log` VALUES ('077b0ab8-94de-4a20-9eac-29637c9e363f', 'hozouhing', 'e0e2ccca-03e7-46b0-98c0-f80cf0bf1016', '查询文件列表', '/hozouhing', '2017-05-02 16:23:50', '成功');
INSERT INTO `op_log` VALUES ('091e4c6d-7ad4-4f88-8ec4-3381808538f5', 'hozouhing', '0f5efefd-0742-42e2-8e87-239f1fa5c0af', '查询文件列表', '/hozouhing', '2017-05-02 16:10:49', '成功');
INSERT INTO `op_log` VALUES ('0a1c5d61-be97-4d72-957b-dce9029c42c6', 'hozouhing', '642d48d8-2bd4-4b84-9d69-9ee4926c16c6', '上传文件', '/b', '2017-05-02 10:42:28', '成功');
INSERT INTO `op_log` VALUES ('0a34e17e-c2e6-4060-a073-fc0652ec890a', 'hozouhing', '83151c84-f73c-4b21-919b-7a32ab4b8d5d', '查询文件列表', '/hozouhing', '2017-05-01 23:28:58', '成功');
INSERT INTO `op_log` VALUES ('0c4e4ed1-1d79-4c0b-acb0-d4a566362e6c', 'hozouhing', '6a2471dc-dfdb-4e57-9278-f12754159cd2', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:19:07', '成功');
INSERT INTO `op_log` VALUES ('0c7eec3f-795c-472d-8ece-91758a50fd45', 'hozouhing', 'd8ff89ab-4edc-4b01-8909-1df024bd4272', '查询文件列表', '/hozouhing', '2017-05-01 22:34:35', '成功');
INSERT INTO `op_log` VALUES ('0c9eba1b-8a8d-4cde-a929-77c242df7c89', 'hozouhing', '8123d9bb-139e-4ce6-88bb-2643a194ccb1', '查询文件列表', '/', '2017-05-02 15:22:32', '成功');
INSERT INTO `op_log` VALUES ('0dd0adc2-73a5-4efb-83b3-04cc3e7969c6', 'hozouhing', '259c9a4d-ee70-481e-b501-b44795416474', '查询文件列表', '/hozouhing', '2017-05-01 16:25:01', '成功');
INSERT INTO `op_log` VALUES ('0f20cfca-4750-4370-8cb3-c927548bab56', 'hozouhing', '7bd92d1b-81d0-48f8-939d-33bd501995fd', '查询文件列表', '/hozouhing', '2017-05-02 15:09:31', '成功');
INSERT INTO `op_log` VALUES ('101cc4ec-e411-45be-a451-2e85b8ce97bb', 'hozouhing', '12d235d6-2c07-4365-b3db-505e34408588', '查询文件列表', '/', '2017-05-02 15:24:16', '成功');
INSERT INTO `op_log` VALUES ('11e6cd1d-5a49-4b86-ae90-185bdb914c46', 'hozouhing', 'e6c5346e-46a9-4083-9a63-f8df1e010c46', '查询文件列表', '/hozouhing', '2017-05-02 16:24:28', '成功');
INSERT INTO `op_log` VALUES ('11f4e6d7-c057-4056-afc2-ae1fa4f077d9', 'hozouhing', '7bea2f87-bb9a-4e72-bc26-55adf6f77edb', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-02 15:03:14', '成功');
INSERT INTO `op_log` VALUES ('12537528-edae-4310-86a1-f95414494056', 'hozouhing', '5a50c77d-45c5-45bf-9ca5-81509ef65c55', '查询文件列表', '/', '2017-05-02 11:35:21', '成功');
INSERT INTO `op_log` VALUES ('12ada280-96c4-4dbe-b836-764be647d640', 'hozouhing', '5671a05c-6c89-4fec-9b1f-b27a9e9b25ea', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:18:16', '成功');
INSERT INTO `op_log` VALUES ('13ce7fd3-0bda-4387-a257-2fada5748be1', 'hozouhing', 'cce30bb7-8ae9-4464-bcd9-d00a8e3578be', '查询文件列表', '/hozouhing', '2017-05-01 22:35:54', '成功');
INSERT INTO `op_log` VALUES ('14cf24a4-f71f-4da1-a275-6d214915f689', 'hozouhing', 'bc34162f-9760-4e7a-b4ed-8bec871466f8', '查询文件列表', '/', '2017-05-02 11:32:35', '成功');
INSERT INTO `op_log` VALUES ('1789842d-e7a2-49be-bcfd-42f9eec1b977', 'hozouhing', 'd9862b40-b06f-4f40-a6b0-f9290d6c1248', '查询文件列表', '/hozouhing', '2017-05-02 16:14:55', '成功');
INSERT INTO `op_log` VALUES ('1847668a-bc25-4e2d-999a-a31dbff1f011', 'hozouhing', '27036673-b3cf-47ce-9e01-fad63f8122b6', '查询文件列表', '/', '2017-05-02 15:00:50', '成功');
INSERT INTO `op_log` VALUES ('19ea7860-47f2-4d2d-ab42-54c7c6c7fb76', 'hozouhing', '44dd375c-1278-4e16-bb9c-bba3ae45ef19', '查询文件列表', '/', '2017-05-02 15:12:44', '成功');
INSERT INTO `op_log` VALUES ('1b0df004-8276-4bc2-9481-686c27354841', 'hozouhing', '9e2e95e8-2701-4542-9448-670decdbf4e1', '查询文件列表', '/hozouhing', '2017-05-01 23:55:33', '成功');
INSERT INTO `op_log` VALUES ('1dab1f0c-803b-49f3-9e04-95f1d9bd0fd8', 'hozouhing', '0db1167a-5faf-4110-b798-6b4ad2ccc446', '查询文件列表', '/hozouhing', '2017-05-01 16:25:21', '成功');
INSERT INTO `op_log` VALUES ('1dc39b28-a4be-4047-b26f-088112bf8f99', 'hozouhing', '73d2e0d5-2af3-4307-a2d9-57f7d9e796be', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 16:04:23', '成功');
INSERT INTO `op_log` VALUES ('2000115c-0385-41a9-af57-bc4fc00a4af8', 'hozouhing', 'c6217aa9-30ce-455c-96f6-3d4e31d285c6', '查询文件列表', '/hozouhing', '2017-05-01 22:35:46', '成功');
INSERT INTO `op_log` VALUES ('22d8951b-9edc-482f-8312-24138acfcd97', 'hozouhing', '7892729a-feab-42f1-a211-9e1bfcbc16ea', '查询文件列表', '/hozouhing', '2017-05-02 15:26:15', '成功');
INSERT INTO `op_log` VALUES ('2306a041-1c31-4b27-949e-ec9f13e06066', 'hozouhing', 'cc30ee75-c880-45a0-91b2-ef75b1c4a60f', '查询文件列表', '/', '2017-05-02 15:23:49', '成功');
INSERT INTO `op_log` VALUES ('23674100-0539-44b4-ab8a-de10e9ce9ad9', 'hozouhing', '27260107-4947-4dbe-9432-147460c044ca', '查询文件列表', '/hozouhing', '2017-05-02 15:20:17', '成功');
INSERT INTO `op_log` VALUES ('24d9dedc-d206-41d4-84a1-657acd939ccd', 'hozouhing', '819ae835-14f4-4b16-af1b-34df960add2b', '查询文件列表', '/hozouhing', '2017-05-02 16:12:03', '成功');
INSERT INTO `op_log` VALUES ('251fc0ee-0b6a-4c3e-b237-ce1579711210', 'hozouhing', '352bd81f-bebc-4a63-9a1a-844e7998ae52', '查询文件列表', '/hozouhing', '2017-05-02 15:23:54', '成功');
INSERT INTO `op_log` VALUES ('25492045-6783-4e82-81bb-ab8dd96e3840', 'hozouhing', '90408529-f038-4f9c-9500-21ccb688e5aa', '查询文件列表', '/', '2017-05-02 15:33:20', '成功');
INSERT INTO `op_log` VALUES ('25cb781b-943b-4634-a73a-bc9ca9607bfd', 'hozouhing', 'cc9d4663-8b19-4a2b-881b-e5887f1f0dd2', '查询文件列表', '/hozouhing', '2017-05-01 23:13:50', '成功');
INSERT INTO `op_log` VALUES ('260ae059-3b6c-4838-8bfc-c9c0150f6202', 'hozouhing', 'a2a05778-f077-4490-9577-0b938466a5f8', '查询文件列表', '/hozouhing', '2017-05-01 23:46:19', '成功');
INSERT INTO `op_log` VALUES ('2633c077-60fc-4800-a09b-b4cef0491398', 'hozouhing', 'c51c245e-84f4-446d-9cba-5112cb55e001', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:23:02', '成功');
INSERT INTO `op_log` VALUES ('280565c4-407c-435b-94ff-27da5d382c0c', 'hozouhing', 'e07ab074-e8a6-4baa-93b3-b6b455156b8a', '查询文件列表', '/hozouhing', '2017-05-01 23:30:30', '成功');
INSERT INTO `op_log` VALUES ('2834311c-4902-47f5-b9fd-82271d229604', 'hozouhing', '1653fe19-2124-4563-9660-0d49b63ceeba', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-02 15:17:59', '成功');
INSERT INTO `op_log` VALUES ('29dfd48c-ab73-4547-b96e-5046ac61d0f4', 'hozouhing', '3a914bd9-0a5c-4da5-8c90-dd9c4fe7fc78', '查询文件列表', '/hozouhing', '2017-05-01 23:47:06', '成功');
INSERT INTO `op_log` VALUES ('2b268e68-0deb-4481-8913-625416322534', 'hozouhing', '6d1c01d8-2e1d-4720-bee8-33b7d54a8204', '查询文件列表', '/hozouhing', '2017-05-01 16:24:10', '成功');
INSERT INTO `op_log` VALUES ('2d12522c-4c6a-40cc-8989-1be9b85924db', 'hozouhing', 'c19522d2-e1e4-4992-a7b5-e18e3a21e7e2', '查询文件列表', '/hozouhing', '2017-05-01 22:18:16', '成功');
INSERT INTO `op_log` VALUES ('2f6f1d75-4a8a-4e70-b262-1a0f5f0e7382', 'hozouhing', 'f88fa55d-abcc-4be1-a020-2b1329109272', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:23:36', '成功');
INSERT INTO `op_log` VALUES ('2fff1588-ba40-4bdc-96dc-902dc2aaa2ca', 'hozouhing', '09cfda4e-7cc9-43ee-b8ad-556f8eb28c4e', '上传文件', '/b', '2017-05-02 10:42:28', '成功');
INSERT INTO `op_log` VALUES ('30a5fc44-908e-455e-8f4b-2bb370eb3cc8', 'hozouhing', '7e84a478-115e-4f84-a06f-407fe9e7b0e5', '查询文件列表', '/', '2017-05-02 15:21:18', '成功');
INSERT INTO `op_log` VALUES ('312b5a45-999a-41a7-ac8c-3a12fa7c05f3', 'hozouhing', 'f3483f8a-05a9-43a9-88d3-7abd3c0b6f2b', '查询文件列表', '/hozouhing', '2017-05-02 15:28:36', '成功');
INSERT INTO `op_log` VALUES ('316e69e9-86ec-4154-ba73-cd77618ae340', 'hozouhing', '9c59eb31-d0e5-4041-a02d-8ce35ae214e5', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-02 18:20:02', '成功');
INSERT INTO `op_log` VALUES ('341cce2c-993d-4eae-b5dc-9053743b9921', 'hozouhing', 'ba40b805-99f3-4203-8cae-fecf94c2f26c', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:12:46', '成功');
INSERT INTO `op_log` VALUES ('34559257-98dc-4915-838b-ef473472e75d', 'hozouhing', 'e3e90adf-82c9-44aa-b719-03cb4e473e9f', '查询文件列表', '/', '2017-05-02 15:30:43', '成功');
INSERT INTO `op_log` VALUES ('3644bfaa-1d7f-4371-b160-6a94172d94cf', 'hozouhing', 'fee9d093-0b37-4918-a953-9bd447599cb7', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:25:30', '成功');
INSERT INTO `op_log` VALUES ('3900dd7e-88a2-4f34-8c02-3e4acd56d6b7', 'hozouhing', 'c174381a-ed7e-4fc6-bdc2-647533e052ed', '查询文件列表', '/hozouhing', '2017-05-01 16:25:21', '成功');
INSERT INTO `op_log` VALUES ('3943e3d9-f5d1-4f65-9a4c-1832a0578baf', 'hozouhing', '11d40d9a-dede-43e9-91dc-e9033222082a', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:20:22', '成功');
INSERT INTO `op_log` VALUES ('3addff8d-48b9-4a98-a156-a201b97b18fe', 'hozouhing', '79c76791-cb9d-4872-b90b-35aaa97936f5', '查询文件列表', '/', '2017-05-02 15:14:29', '成功');
INSERT INTO `op_log` VALUES ('3bb9a5b2-8bb7-4165-b745-ec8f008b54cd', 'hozouhing', '0744d965-6d8b-4226-be91-1677e92bbc50', '查询文件列表', '/hozouhing', '2017-05-01 22:23:29', '成功');
INSERT INTO `op_log` VALUES ('3c02e34f-e6aa-425e-9206-423b90fc632e', 'hozouhing', 'f543cc00-3f84-48b7-93d3-ebd8dc0c82ad', '查询文件列表', '/hozouhing', '2017-05-01 22:32:18', '成功');
INSERT INTO `op_log` VALUES ('3c62ef94-6308-40a3-965d-98d79894d92b', 'hozouhing', 'efaa0fb2-ee1d-4204-83ff-5f7e71793a37', '查询文件列表', '/b', '2017-05-02 10:42:57', '成功');
INSERT INTO `op_log` VALUES ('3cdae513-ea6b-48aa-bda5-b82479dc451d', 'hozouhing', 'bf65c6ac-f074-4e38-8515-eb19c7eadbd4', '查询文件列表', '/hozouhing', '2017-05-02 15:23:31', '成功');
INSERT INTO `op_log` VALUES ('3e764d40-55cc-4116-98f7-a6ea6acf7dd3', 'hozouhing', '4dd73340-1631-402c-9722-cf3a6c8aabdb', '查询文件列表', '/hozouhing', '2017-05-01 16:23:09', '成功');
INSERT INTO `op_log` VALUES ('41b7d9f7-be7a-41aa-8b38-74f066c22ccc', 'hozouhing', '7bdb301d-872e-483f-b463-3d25c5a9c417', '查询文件列表', '/', '2017-05-02 15:30:57', '成功');
INSERT INTO `op_log` VALUES ('420a6dc5-b8d4-4f0c-93bf-aa35ed2339d9', 'hozouhing', 'a8b7e900-44cf-442c-9712-be9b2f86f078', '查询文件列表', '/', '2017-05-02 10:42:08', '成功');
INSERT INTO `op_log` VALUES ('42d8998c-2cf7-4e89-afdf-e31240b29416', 'hozouhing', 'bffca448-6d6b-48b7-af2c-b63683e5e717', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:25:05', '成功');
INSERT INTO `op_log` VALUES ('43968538-8e26-49d7-a946-dfb9c6939c91', 'hozouhing', '4cee5d19-2823-4c10-990d-9f573e53170f', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:06:40', '成功');
INSERT INTO `op_log` VALUES ('44a90bfa-0815-4cf2-983b-9b05e95eb839', 'hozouhing', '51a3b330-dcc0-4fd4-944d-977bff2988af', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:33:36', '成功');
INSERT INTO `op_log` VALUES ('459113c5-f75a-47f3-97c3-10c9484c6800', 'hozouhing', '107cf902-a039-4229-a890-310bc8cd6633', '查询文件列表', '/', '2017-05-02 15:19:52', '成功');
INSERT INTO `op_log` VALUES ('4922f0bc-330f-46c3-8e4a-b88dd894cb33', 'hozouhing', 'b4ace8f3-3e8a-425f-a912-c53426d50576', '查询文件列表', '/hozouhing', '2017-05-02 15:25:26', '成功');
INSERT INTO `op_log` VALUES ('4a5720dc-0781-4357-b63d-250693f25584', 'hozouhing', 'a33323c7-51f8-48b2-bbb4-89e7e44baf80', '查询文件列表', '/', '2017-05-02 10:36:01', '成功');
INSERT INTO `op_log` VALUES ('4b09fac3-84cc-4eae-94ec-8ef2fded7e9d', 'hozouhing', '3d3d5e31-7ca4-4f5f-b13e-3408d8812fd4', '查询文件列表', '/', '2017-05-02 11:30:59', '成功');
INSERT INTO `op_log` VALUES ('4b2c0c9c-42e6-4466-9e7d-84e487467f8a', 'hozouhing', '62387c7d-70c1-4402-9c36-8a7eeffd0558', '查询文件列表', '/', '2017-05-02 15:55:58', '成功');
INSERT INTO `op_log` VALUES ('4c549ec8-976c-4afb-a453-4b2fe2dd39f1', 'hozouhing', '2ea270ed-6592-4df2-9e6e-425558f65f14', '查询文件列表', '/', '2017-05-02 11:35:16', '成功');
INSERT INTO `op_log` VALUES ('4c661dbe-0997-454f-b147-4bc2f8274736', 'hozouhing', 'c720568e-f284-4f1c-b5a9-7578bdd0e4c4', '查询文件列表', '/', '2017-05-02 15:26:13', '成功');
INSERT INTO `op_log` VALUES ('4d8eb5cf-b3e3-465d-83e8-e5ce7e59b70b', 'hozouhing', '6fd0b395-a9cf-4127-ae1c-7a4748e687e1', '查询文件列表', '/hozouhing', '2017-05-01 22:16:01', '成功');
INSERT INTO `op_log` VALUES ('4e244d7a-9499-48d7-b3b0-c50196b1c106', 'hozouhing', '2935e73f-e8fa-4967-81e7-568b0f675522', '查询文件列表', '/b', '2017-05-02 10:42:09', '成功');
INSERT INTO `op_log` VALUES ('50c70503-7a62-4a90-bd4e-fed1c531c424', 'hozouhing', '0039fd04-d1a0-4cb3-aa46-8241c02a8f36', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:14:02', '成功');
INSERT INTO `op_log` VALUES ('50c91d0c-ad96-4f3c-8911-843859b33d93', 'hozouhing', 'e84a87aa-4fbf-4dee-bcd6-ed8eb87386ac', '查询文件列表', '/hozouhing', '2017-05-02 16:03:39', '成功');
INSERT INTO `op_log` VALUES ('50db8683-6098-4b98-a66d-b451cc8d9538', 'hozouhing', '054cd73d-ad4c-4cd1-90c8-a5483fb92c7f', '查询文件列表', '/', '2017-05-02 14:53:12', '成功');
INSERT INTO `op_log` VALUES ('52058e40-d2c1-4373-9e76-bf5623e6bb38', 'hozouhing', 'd56c4a52-aa80-4551-bb37-f9c9a3541fad', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-01 23:11:11', '成功');
INSERT INTO `op_log` VALUES ('53002d7f-13b4-405c-8635-6f32fb81119e', 'hozouhing', '0da4c5e4-922e-4e50-a941-1231ce6bc97a', '查询文件列表', '/', '2017-05-02 15:21:13', '成功');
INSERT INTO `op_log` VALUES ('536af4c9-cd4e-4fa2-b833-ef855f6fd856', 'hozouhing', '0a561176-25c5-487d-8f46-356eb7bce032', '查询文件列表', '/hozouhing', '2017-05-01 23:16:54', '成功');
INSERT INTO `op_log` VALUES ('53aad483-6dbb-4cb5-9f4f-ead78336b603', 'hozouhing', '0097c1ba-10f7-4008-b5c1-ebb697d2703a', '查询文件列表', '/hozouhing', '2017-05-01 23:30:50', '成功');
INSERT INTO `op_log` VALUES ('53d26bb8-5c07-401b-b296-4ea11f386cfe', 'hozouhing', '5403c3cf-674a-43a9-9f9f-5afa0554a16a', '查询文件列表', '/hozouhing', '2017-05-02 16:26:29', '成功');
INSERT INTO `op_log` VALUES ('541cad4a-b03d-42e1-b340-1241ee43de3d', 'hozouhing', '60b2eff4-f153-4ecc-83ab-95637efc8115', '查询文件列表', '/', '2017-05-02 11:35:17', '成功');
INSERT INTO `op_log` VALUES ('550e7984-9d84-4d0d-9db8-bbe3309db791', 'hozouhing', '811ec157-1408-4240-ba96-793d978458c7', '查询文件列表', '/b', '2017-05-02 10:44:33', '成功');
INSERT INTO `op_log` VALUES ('557ff8c9-8f16-4d0e-b61b-43828a90cde2', 'hozouhing', '2a1a8af8-fb0f-47df-ae58-dd6237adf702', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:24:21', '成功');
INSERT INTO `op_log` VALUES ('559d925d-3961-448d-b052-2fac3feb5f94', 'hozouhing', '5f7533c4-cf8a-4c6e-b76c-2b55b9796564', '查询文件列表', '/hozouhing', '2017-05-02 15:33:26', '成功');
INSERT INTO `op_log` VALUES ('563b34cd-41d5-4cea-9e0c-ccffaf4eb31d', 'hozouhing', '1a64414d-f26f-4317-b7dd-f1d741876429', '查询文件列表', '/hozouhing', '2017-05-01 23:58:32', '成功');
INSERT INTO `op_log` VALUES ('5659e9f1-3cd6-491f-b961-40ab905e83f1', 'hozouhing', 'f718e8b2-c331-40e9-b43b-246a1e8a6814', '查询文件列表', '/hozouhing', '2017-05-01 23:07:40', '成功');
INSERT INTO `op_log` VALUES ('57d0985f-fc5d-4f99-ae71-b3f7d361165c', 'hozouhing', '914521ae-6dd5-4474-8701-ebe10c30d065', '查询文件列表', '/hozouhing', '2017-05-01 23:32:38', '成功');
INSERT INTO `op_log` VALUES ('57dfab13-455c-40d9-bb50-60a5d14f9140', 'hozouhing', 'e17ad89c-03d5-4d63-a35e-e229bc1b00b1', '查询文件列表', '/hozouhing', '2017-05-01 22:38:25', '成功');
INSERT INTO `op_log` VALUES ('587678b9-736b-4d31-a189-2a9e5f940037', 'hozouhing', '43a480d7-4c96-4f49-94d9-539d58bcdb06', '查询文件列表', '/hozouhing', '2017-05-01 23:34:29', '成功');
INSERT INTO `op_log` VALUES ('58a7c11b-e296-42ed-9bec-b60e30b091a9', 'hozouhing', '0b188b37-bec4-4d2c-aa9b-0c8a875620d1', '查询文件列表', '/', '2017-05-02 15:18:53', '成功');
INSERT INTO `op_log` VALUES ('5c391746-4e88-40d1-a6d8-2463463588ed', 'hozouhing', 'feb2d12c-ef0c-4915-b5f4-504b714c356e', '查询文件列表', '/a', '2017-05-02 16:26:44', '成功');
INSERT INTO `op_log` VALUES ('5d569d20-8059-4e94-a060-73304e99a546', 'hozouhing', 'fdd5f58c-8105-49bf-89f0-3230fe76176c', '查询文件列表', '/', '2017-05-02 15:16:01', '成功');
INSERT INTO `op_log` VALUES ('5da7a96b-08ff-4736-b4cc-f4b6fd2c9de3', 'hozouhing', 'd00d075d-af03-44d4-86e1-b2331f71b556', '查询文件列表', '/hozouhing', '2017-05-01 23:18:18', '成功');
INSERT INTO `op_log` VALUES ('5f328c95-9455-4e94-aa09-b433dd0ad85d', 'hozouhing', '7c3172ac-4300-4b51-978c-e9cd7a9a1065', '查询文件列表', '/', '2017-05-02 12:16:46', '成功');
INSERT INTO `op_log` VALUES ('5f62fcfa-96ab-4703-8deb-47ed147383f6', 'hozouhing', 'e8828952-4bf4-4507-a242-3073ca290a70', '查询文件列表', '/hozouhing', '2017-05-02 16:25:33', '成功');
INSERT INTO `op_log` VALUES ('62e67b2d-c69c-4150-94bf-71a4f696e49c', 'hozouhing', '47039474-4e56-4bee-afbb-880e18275646', '查询文件列表', '/hozouhing', '2017-05-01 22:26:33', '成功');
INSERT INTO `op_log` VALUES ('6379e012-9713-4a5b-a04a-bdfac346a2e6', 'hozouhing', '2ad98091-3a3f-4d9f-834d-33bd2e21cc3a', '查询文件列表', '/', '2017-05-02 15:54:48', '成功');
INSERT INTO `op_log` VALUES ('6497355f-34c2-42ea-bfa9-e428b8596acf', 'hozouhing', '021116a0-ba5c-4318-9d28-76cab673dab3', '查询文件列表', '/hozouhing', '2017-05-01 22:33:43', '成功');
INSERT INTO `op_log` VALUES ('657dec17-68e3-4682-b84f-3214a9849353', 'hozouhing', 'b9f9d9e4-c3be-4214-a759-21cdeeb21cc4', '预览图片文件', '/a/hadoop.png', '2017-05-02 10:42:00', '成功');
INSERT INTO `op_log` VALUES ('6813a0b5-511a-41cf-a830-c9668b8f0431', 'hozouhing', 'a36adb49-9d81-4f95-b956-ed080b2a7216', '新建文件夹', '/hozouhing/test2', '2017-05-01 16:24:59', '成功');
INSERT INTO `op_log` VALUES ('683d88bd-499a-4d4d-8f47-1847cdf4e963', 'hozouhing', 'daabf9c8-db92-40ea-903b-9b9bd4b74f0a', '查询文件列表', '/hozouhing', '2017-05-01 22:26:31', '成功');
INSERT INTO `op_log` VALUES ('68cc3b69-06ac-4bb6-a9ff-1f4e6c0890fb', 'hozouhing', 'e17b73b1-d01b-480d-942c-ab776c5c0099', '查询文件列表', '/', '2017-05-02 15:12:23', '成功');
INSERT INTO `op_log` VALUES ('6906bbba-ae11-44a7-86df-8bb1b6130ce9', 'hozouhing', '008b33b7-f548-427c-9293-203212518eb5', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:33:28', '成功');
INSERT INTO `op_log` VALUES ('6c96129b-95e7-4ec8-9595-a500f1637d81', 'hozouhing', 'ab70d6d2-e87a-44df-aa41-c30522c8ee06', '查询文件列表', '/hozouhing', '2017-05-02 18:20:00', '成功');
INSERT INTO `op_log` VALUES ('6cc91c67-39bd-4ab5-97be-6d037bd4cc09', 'hozouhing', '2acc649a-69d1-48b5-9cbe-8e0e636dd7c1', '查询文件列表', '/', '2017-05-02 15:09:29', '成功');
INSERT INTO `op_log` VALUES ('6d3fe56c-db6f-4948-9a92-a9503e2cebfc', 'hozouhing', 'b6283c91-d89d-4e9d-9e55-bd5aaf9f9213', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('6dbfbc14-34dd-4eb3-8498-e061807ab312', 'hozouhing', 'd88324be-b76c-4ee5-87d7-3f49fff12221', '查询文件列表', '/hozouhing', '2017-05-01 16:32:02', '成功');
INSERT INTO `op_log` VALUES ('6e53ade9-824c-4dac-8a31-4733067736dc', 'hozouhing', 'ad4539ec-9b1c-47e1-b429-8c52cdfe870f', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:16:07', '成功');
INSERT INTO `op_log` VALUES ('6ee0bd4c-72a2-4856-bbb3-64aafcf4fc0f', 'hozouhing', '7fa4e118-15a0-4699-99e4-8232073817dc', '查询文件列表', '/hozouhing', '2017-05-02 16:20:11', '成功');
INSERT INTO `op_log` VALUES ('6f00048d-dad6-46d3-9f6b-5a6fad11c78c', 'hozouhing', '67f7db3c-7b7c-467f-9c4b-c33c04e3ae3b', '查询文件列表', '/hozouhing', '2017-05-01 22:33:59', '成功');
INSERT INTO `op_log` VALUES ('6f4ba776-715d-4403-8566-dc7181a6514c', 'hozouhing', '7a1db0ca-1c26-4e96-9af0-a18e78d486c2', '查询文件列表', '/hozouhing', '2017-05-01 16:28:40', '成功');
INSERT INTO `op_log` VALUES ('6fa2b38f-d4dc-4bdf-8d52-cd800d3bb792', 'hozouhing', 'a5571572-4720-46f3-ac84-c968c92e9493', '查询文件列表', '/', '2017-05-02 11:38:16', '成功');
INSERT INTO `op_log` VALUES ('6fe52cc9-409d-482b-8ee9-54e2d9b9ce0f', 'hozouhing', '5a7573f7-7b9f-4c40-99bd-9188578aff3a', '上传文件', '/b', '2017-05-02 10:42:28', '成功');
INSERT INTO `op_log` VALUES ('72d9fa7a-263e-433d-9706-36203b95b88d', 'hozouhing', '37b4237f-0e87-49d2-90da-f0813e149bd1', '查询文件列表', '/', '2017-05-02 15:17:25', '成功');
INSERT INTO `op_log` VALUES ('733a6091-fc21-47fd-9fc0-4a5b02249e6f', 'hozouhing', '531f3024-ea2e-4f36-88c2-267d9e587d7b', '查询文件列表', '/hozouhing', '2017-05-01 22:29:49', '成功');
INSERT INTO `op_log` VALUES ('7377143d-73cb-4cf7-a18f-ccda0209182c', 'hozouhing', 'c80b3845-1c83-43f0-a0b7-6e414b07b886', '查询文件列表', '/', '2017-05-02 15:13:47', '成功');
INSERT INTO `op_log` VALUES ('7495c1c2-5b65-41df-872e-2e9335d9a529', 'hozouhing', 'dc809427-7734-4955-9f5b-1a167f374bae', '查询文件列表', '/', '2017-05-02 10:49:59', '成功');
INSERT INTO `op_log` VALUES ('75b2c7f7-d363-4d41-967d-163c85c79808', 'hozouhing', 'af1b7e45-ea4b-4379-b0a2-da88104a7787', '查询文件列表', '/hozouhing', '2017-05-01 23:44:00', '成功');
INSERT INTO `op_log` VALUES ('75f9612e-eb93-464e-8663-74039bdb1c7c', 'hozouhing', '2b1ae21f-2160-49db-b233-a419611f6cfe', '查询文件列表', '/', '2017-05-02 10:41:51', '成功');
INSERT INTO `op_log` VALUES ('771d1315-af1e-4412-9f4a-dd671d09a63e', 'hozouhing', '250dc7c9-8364-4317-863f-b38327fe87b4', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-01 16:32:24', '成功');
INSERT INTO `op_log` VALUES ('77608484-7bc1-4222-a4f9-0f18ad8e9d83', 'hozouhing', 'bc7539e6-f9ba-4381-86df-8e63f46b171d', '查询文件列表', '/', '2017-05-02 15:31:52', '成功');
INSERT INTO `op_log` VALUES ('78492154-97f6-42dc-b531-854221530484', 'hozouhing', '2414d7a2-9923-4a07-ac7c-69e9e4d6ea83', '预览图片文件', '/hozouhing/hadoop.png', '2017-05-02 15:03:23', '成功');
INSERT INTO `op_log` VALUES ('7884b314-f697-4204-b8ee-eaf8f8f6c264', 'hozouhing', '66b3b58e-7ba8-484c-a4a2-72fd878a0c49', '上传文件', '/b', '2017-05-02 10:42:28', '成功');
INSERT INTO `op_log` VALUES ('7ae58722-e0f6-4c58-a25f-32c46597495b', 'hozouhing', '8976defd-eeca-4010-8a44-90f5646b0ab7', '查询文件列表', '/hozouhing', '2017-05-02 16:15:19', '成功');
INSERT INTO `op_log` VALUES ('7b7d9e5f-f5f6-4af9-bc30-0ff924b07c7a', 'hozouhing', 'cf13ffba-90a5-4337-9fb7-47339b19e06e', '查询文件列表', '/hozouhing', '2017-05-01 16:22:17', '成功');
INSERT INTO `op_log` VALUES ('7c26885f-f6b8-4a03-a2a6-75de5aca9785', 'hozouhing', '326d592e-f24e-4659-a063-455d4298dd61', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:30:46', '成功');
INSERT INTO `op_log` VALUES ('7d0ad1f3-7d2d-4a75-a2aa-938ae53588e6', 'hozouhing', 'e2231981-edc8-4fc1-bd5c-3b0ac9040cae', '查询文件列表', '/hozouhing', '2017-05-02 16:19:53', '成功');
INSERT INTO `op_log` VALUES ('7d5e1615-4458-4bea-845b-7d011043fa91', 'hozouhing', '98bbed76-8aa1-4aa5-8212-683a43ad52ce', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:09:35', '成功');
INSERT INTO `op_log` VALUES ('7db06c08-12c6-4e0a-a0ba-7491a121ee99', 'hozouhing', 'e36c1364-7fcc-4aa1-b36a-17c5129b06e2', '查询文件列表', '/', '2017-05-02 15:25:00', '成功');
INSERT INTO `op_log` VALUES ('7dcb252b-84d6-4362-8844-4cfce98f7cd5', 'hozouhing', '5820d693-862d-4722-b245-331253ac8da4', '查询文件列表', '/hozouhing', '2017-05-01 16:20:30', '成功');
INSERT INTO `op_log` VALUES ('7de01eb5-1b3f-4eed-8e36-b176abfaa590', 'hozouhing', '138252d1-3e62-4a25-908e-2967f4799b20', '查询文件列表', '/a', '2017-05-02 16:25:41', '成功');
INSERT INTO `op_log` VALUES ('7f653c57-6799-4fdb-9eaa-020db7afc3a9', 'hozouhing', '9ecf47b0-7b82-4d09-b1f6-9b2b078dc0f3', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:18:00', '成功');
INSERT INTO `op_log` VALUES ('7f813e70-d036-4343-950e-c4f059f69788', 'hozouhing', '32e466b0-0ffe-42ff-b99f-64f556a621f0', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:05:28', '成功');
INSERT INTO `op_log` VALUES ('809609b4-2d80-429f-8921-d93b83a0b58c', 'hozouhing', '04869705-ad72-4f31-aae9-17c8f8678a2b', '查询文件列表', '/hozouhing', '2017-05-01 16:26:52', '成功');
INSERT INTO `op_log` VALUES ('82ba7903-cfeb-4e76-987d-fd8f1cb15e44', 'hozouhing', 'ebc41d33-f783-4ea1-af53-4349732b71d4', '查询文件列表', '/', '2017-05-02 11:34:06', '成功');
INSERT INTO `op_log` VALUES ('83350e1f-de94-492c-868b-2828fff25acf', 'hozouhing', '0139fc2d-8613-46ca-a265-b5d8c60e19da', '查询文件列表', '/a', '2017-05-02 18:19:03', '成功');
INSERT INTO `op_log` VALUES ('84b597be-3119-4cbc-acc7-d3b03df30a62', 'hozouhing', '6af4075a-e993-4ae6-b8bd-bcaeba06e152', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 18:19:22', '成功');
INSERT INTO `op_log` VALUES ('86aa4362-95ad-4860-b81d-bb5413a69ca6', 'hozouhing', '0f645f81-888e-41d8-af0f-3239578b99be', '查询文件列表', '/', '2017-05-02 15:51:45', '成功');
INSERT INTO `op_log` VALUES ('87bfa3b6-27f4-4bb7-8856-673438877137', 'hozouhing', '5d8ac839-08cb-4ab3-ae50-731e64bf4f97', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-01 23:11:20', '成功');
INSERT INTO `op_log` VALUES ('88aa9380-a9b6-414d-b352-5beb2107597c', 'hozouhing', '3d8a7b2e-0377-4c47-b064-653b398be64d', '查询文件列表', '/', '2017-05-02 15:10:07', '成功');
INSERT INTO `op_log` VALUES ('89667ec4-bf96-41ab-93eb-18118220a7db', 'hozouhing', '8710f664-c2fb-4169-8197-456096251c4c', '查询文件列表', '/hozouhing', '2017-05-01 22:18:06', '成功');
INSERT INTO `op_log` VALUES ('89b1bfc6-1572-4d5a-8248-44e617b1abd2', 'hozouhing', 'e1e05105-f676-4074-be28-4efb3a1428de', '查询文件列表', '/hozouhing', '2017-05-02 15:01:00', '成功');
INSERT INTO `op_log` VALUES ('8a6084c3-824a-494a-9cb5-062f02e6a17d', 'hozouhing', '6c10d207-41d0-4b92-9bcd-dca53eacebd9', '查询文件列表', '/hozouhing', '2017-05-01 16:20:28', '成功');
INSERT INTO `op_log` VALUES ('8a9a88c9-bc18-4ad9-9e4f-cdc7324766e5', 'hozouhing', '0de1701b-5dde-4b4f-a1e2-d41ebc2f52fe', '查询文件列表', '/a', '2017-05-02 10:41:55', '成功');
INSERT INTO `op_log` VALUES ('8aa9a0ed-aa17-4c5b-a5d1-a311974996bb', 'hozouhing', 'c4feb88c-3e2c-42dd-bb8e-a620fcd085ac', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('8cdea80c-4fcb-4749-9adb-400b761566d6', 'hozouhing', '2629cd90-8460-4166-8e93-ac64300806fa', '查询文件列表', '/hozouhing', '2017-05-01 16:31:27', '成功');
INSERT INTO `op_log` VALUES ('8ddd3cba-67cc-4aa1-a634-c42d83043144', 'hozouhing', '79694b91-c3ff-4090-9680-59b0649877b4', '查询文件列表', '/hozouhing', '2017-05-02 10:41:38', '成功');
INSERT INTO `op_log` VALUES ('8deedb2f-8e90-42b1-92e2-b00c849240f8', 'hozouhing', '359155d8-b72b-4583-b32d-e767de0efc06', '查询文件列表', '/hozouhing', '2017-05-01 23:33:14', '成功');
INSERT INTO `op_log` VALUES ('8f18f274-7949-439c-93ac-dc8cc4647be4', 'hozouhing', 'b44a29ea-79f8-4445-84d3-f57c8a5c01d4', '查询文件列表', '/', '2017-05-02 15:22:31', '成功');
INSERT INTO `op_log` VALUES ('90ca9d48-093a-4565-8bd5-551d99a4f989', 'hozouhing', '52e3d523-68fe-423f-9c5d-c4b79a143dcf', '查询文件列表', '/hozouhing', '2017-05-01 23:45:32', '成功');
INSERT INTO `op_log` VALUES ('91d4ced7-cd9e-4736-ac0e-3f752f6e0ad2', 'hozouhing', '3393dcb9-b1e6-412b-9857-1b9a1ebd9e91', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:26:22', '成功');
INSERT INTO `op_log` VALUES ('920abdff-06b6-4886-a3a1-0bd324001f87', 'hozouhing', '0b5c5386-c03a-4111-89bc-e12abac73484', '查询文件列表', '/b', '2017-05-02 10:42:57', '成功');
INSERT INTO `op_log` VALUES ('934a1e2a-0f18-4115-96dd-01773d6feca4', 'hozouhing', 'cd35a8c8-166b-4df8-ade8-bbe1dd6d28c2', '查询文件列表', '/hozouhing', '2017-05-01 16:12:21', '成功');
INSERT INTO `op_log` VALUES ('941d4790-b647-40eb-9ce3-0049f07694b3', 'hozouhing', '18ac3d33-559b-4967-a845-66698e3a2ee7', '查询文件列表', '/hozouhing', '2017-05-01 22:27:09', '成功');
INSERT INTO `op_log` VALUES ('946d0df6-0849-48ee-9f83-4e4295062cba', 'hozouhing', '6a6e7555-b5e4-417a-b673-ea7c96787ce5', '查询文件列表', '/hozouhing', '2017-05-02 15:17:50', '成功');
INSERT INTO `op_log` VALUES ('95e7cf35-4fde-40f1-bff7-d0e39b147344', 'hozouhing', 'c64cacc1-e346-47f6-a128-548ac7867d07', '查询文件列表', '/b', '2017-05-02 10:42:57', '成功');
INSERT INTO `op_log` VALUES ('96fa2e40-2c53-44b6-acc1-37fa033f2d90', 'hozouhing', '141b0bd5-5f15-47b9-ab21-57a4e207dfb1', '查询文件列表', '/hozouhing', '2017-05-01 23:31:21', '成功');
INSERT INTO `op_log` VALUES ('9710fb0c-a03b-4cc2-9689-0c30d8e0bde3', 'hozouhing', '8d0d4ccd-053d-4c7d-84d2-dbdc02bf5a5c', '查询文件列表', '/hozouhing', '2017-05-02 15:13:58', '成功');
INSERT INTO `op_log` VALUES ('980ad0ab-63ee-4904-b822-d9b7520054ed', 'hozouhing', 'e5b279f6-5917-4bd7-8824-e13c9b08798e', '查询文件列表', '/', '2017-05-02 15:05:07', '成功');
INSERT INTO `op_log` VALUES ('98b3bf75-ff23-4dd1-b654-e6630e5e34e7', 'hozouhing', 'f79fa607-2ea4-4aab-aea3-1ab2610b6ea2', '查询文件列表', '/', '2017-05-02 15:24:53', '成功');
INSERT INTO `op_log` VALUES ('98d9f89c-2d49-4646-be64-01eed213fd26', 'hozouhing', '7d2d3d1c-79f6-4fba-a59c-0c9fa76fa2b1', '查询文件列表', '/', '2017-05-02 15:23:30', '成功');
INSERT INTO `op_log` VALUES ('997bbbb7-526f-4ea9-b4ef-65ec0c57970f', 'hozouhing', '2b60a1a1-2d15-4392-84c0-712fffad84ed', '查询文件列表', '/hozouhing', '2017-05-02 15:19:03', '成功');
INSERT INTO `op_log` VALUES ('9adda5f5-fd9b-4b09-8587-62e2150eae61', 'hozouhing', '6be692ec-5605-47e5-812a-901002c5f27a', '查询文件列表', '/hozouhing', '2017-05-02 16:24:25', '成功');
INSERT INTO `op_log` VALUES ('9b007b2d-d3db-4305-bb2b-db384a345f83', 'hozouhing', '9ac0f1e8-1447-4ac2-890e-b62dbd93d120', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:10:28', '成功');
INSERT INTO `op_log` VALUES ('9b15bfeb-87f6-450d-ba0a-ad9f155233d0', 'hozouhing', '4a7f8ea3-8d43-4bae-aa7a-0578a715c893', '查询文件列表', '/hozouhing', '2017-05-02 15:18:07', '成功');
INSERT INTO `op_log` VALUES ('9b668edb-6386-483b-a84f-76259d8b0dd8', 'hozouhing', '7595189e-7c96-4745-bc03-8503a0603e39', '查询文件列表', '/', '2017-05-02 15:05:55', '成功');
INSERT INTO `op_log` VALUES ('9bbfc4f1-7890-400e-b5f3-bc879fb5f951', 'hozouhing', 'de6b482d-3d83-4891-94cb-bcfa7e7ecba0', '查询文件列表', '/hozouhing', '2017-05-02 15:12:55', '成功');
INSERT INTO `op_log` VALUES ('9be8dd10-a32d-420f-a190-8f6cb8fd5a30', 'hozouhing', '03d179d2-706c-4b45-acf4-adfd21c8f693', '查询文件列表', '/hozouhing', '2017-05-02 15:54:05', '成功');
INSERT INTO `op_log` VALUES ('9c79ceab-d712-494a-90db-39c7f604ed59', 'hozouhing', '4b7eb499-5606-47de-b65a-31a6c6b74f9b', '查询文件列表', '/hozouhing/test1', '2017-05-01 23:11:48', '成功');
INSERT INTO `op_log` VALUES ('9ceb3262-c54b-4c07-9d1a-253005fa6697', 'hozouhing', '49e988e4-5622-4268-89f6-c1509815ae16', '查询文件列表', '/hozouhing', '2017-05-02 10:41:07', '成功');
INSERT INTO `op_log` VALUES ('9ceb8340-d130-4afe-906c-eb16b020403e', 'hozouhing', 'feaf6ce3-5ddf-406f-9997-72c8357d1119', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-02 15:28:54', '成功');
INSERT INTO `op_log` VALUES ('9d23b986-201b-402d-b84f-68946e93208b', 'hozouhing', '9f2d364b-19c5-40b2-bea1-4076568143dc', '查询文件列表', '/hozouhing/test1', '2017-05-01 22:18:13', '成功');
INSERT INTO `op_log` VALUES ('9e05affd-25d8-4047-90df-c8b0c008b7d9', 'hozouhing', 'ab4ccc1d-0592-4a07-952b-c7721e2221ee', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:23:55', '成功');
INSERT INTO `op_log` VALUES ('9ef7d6bb-693d-4645-a926-aa5e765a415f', 'hozouhing', 'f09cf10d-7b80-4e20-9f91-271868703fae', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-01 16:25:42', '成功');
INSERT INTO `op_log` VALUES ('9fea2957-4a86-4969-ac72-8deaf16646c2', 'hozouhing', '3c6fa1e5-c0b6-4122-8efe-880d9565798e', '查询文件列表', '/hozouhing', '2017-05-01 23:22:00', '成功');
INSERT INTO `op_log` VALUES ('9ff1fd7f-4770-405f-b9c9-f72ca88bddde', 'hozouhing', '1124de07-e57a-495c-aadc-d11608b3acf8', '查询文件列表', '/hozouhing', '2017-05-02 16:24:34', '成功');
INSERT INTO `op_log` VALUES ('a04d3496-4ec6-404a-84b6-613c3a263605', 'hozouhing', '2a7949bb-35eb-4593-b5df-41f45a476588', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:33:31', '成功');
INSERT INTO `op_log` VALUES ('a0618002-c43a-422f-8849-886c8e10b754', 'hozouhing', '123826b7-2214-4b1e-8fb8-b108c2b7dc1f', '查询文件列表', '/', '2017-05-02 15:57:57', '成功');
INSERT INTO `op_log` VALUES ('a0aead68-1fa9-42d4-be5b-b31fa4222b07', 'hozouhing', '97237528-6b85-492b-834f-04ca9ff0290e', '查询文件列表', '/', '2017-05-02 15:30:36', '成功');
INSERT INTO `op_log` VALUES ('a0d7048f-de30-49b3-b31f-0e6ebf5eb6d2', 'hozouhing', 'c36bfe8a-3620-4796-ae13-a000fa10a49b', '查询文件列表', '/hozouhing', '2017-05-02 15:10:10', '成功');
INSERT INTO `op_log` VALUES ('a2297d30-4e71-498b-92ed-337e86d949bc', 'hozouhing', '4f53758e-e1a8-482a-8e90-569f5b701b95', '查询文件列表', '/', '2017-05-02 15:44:43', '成功');
INSERT INTO `op_log` VALUES ('a41de2ef-8cbf-44c8-9046-267081d3a3e0', 'hozouhing', '40f6ed6c-1f9d-4202-86be-a9de0996ce7c', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('a47cc0e3-7f97-463b-80aa-45938d8ac651', 'hozouhing', 'ee00ea3d-bdcc-4178-91fc-2290f6f67a45', '查询文件列表', '/b', '2017-05-02 10:45:07', '成功');
INSERT INTO `op_log` VALUES ('a569c326-9474-463b-b7df-33301ba03286', 'hozouhing', '00c0b33b-ede1-4484-ac8d-f2b7af6b8ebd', '查询文件列表', '/hozouhing', '2017-05-01 16:30:59', '成功');
INSERT INTO `op_log` VALUES ('a5e77856-734e-4737-9d3d-53022a5c9c96', 'hozouhing', '779472da-fa1f-4e22-8881-13b542bfd9c9', '查询文件列表', '/hozouhing', '2017-05-02 16:24:23', '成功');
INSERT INTO `op_log` VALUES ('a646a560-924e-4aaf-9387-b3c08a06b551', 'hozouhing', '50303af0-82c2-4f7c-822f-0ea18d0b3eeb', '查询文件列表', '/hozouhing', '2017-05-01 16:12:40', '成功');
INSERT INTO `op_log` VALUES ('a7e80194-c9ed-4423-942a-f016b58def8b', 'hozouhing', '4cc08fe0-a338-4adc-916f-281f90963710', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('a9953007-b09c-4ffe-a61e-8f9dadb6e856', 'hozouhing', 'f5ea3d87-1b2c-4cdf-b8af-b731e2aad09c', '查询文件列表', '/', '2017-05-02 12:13:14', '成功');
INSERT INTO `op_log` VALUES ('aa0981ab-ac75-43b2-92fe-978c6b999cbb', 'hozouhing', 'db0ea237-38a4-49e2-bcf1-6f52d371a08b', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:10:14', '成功');
INSERT INTO `op_log` VALUES ('ac05699a-8e84-4e9f-ba78-1d989142ace3', 'hozouhing', '76f0ffdf-a08d-4021-b92c-ab4993113df9', '查询文件列表', '/hozouhing', '2017-05-02 16:24:43', '成功');
INSERT INTO `op_log` VALUES ('ac7d7b11-5afd-425e-b8df-91e478047c96', 'hozouhing', '79636a9d-e927-40d8-9dca-994065205eaa', '查询文件列表', '/hozouhing', '2017-05-01 23:58:36', '成功');
INSERT INTO `op_log` VALUES ('aef35c34-4709-45a9-9b51-0aedbccb54c8', 'hozouhing', '8eac67a2-c3f9-4fa7-9178-a63c9ca9fa36', '查询文件列表', '/hozouhing', '2017-05-02 18:19:14', '成功');
INSERT INTO `op_log` VALUES ('af3d6b04-923b-4354-9e05-d316a97ba9c0', 'hozouhing', 'd1688796-3f80-44de-a5ea-f1eec78ed721', '查询文件列表', '/', '2017-05-02 15:16:11', '成功');
INSERT INTO `op_log` VALUES ('b159de99-553c-42fb-a3ff-db45e26730fb', 'hozouhing', '8435beeb-1b04-4062-ac4f-a2c837600c79', '查询文件列表', '/hozouhing', '2017-05-01 23:46:47', '成功');
INSERT INTO `op_log` VALUES ('b17d070e-e6e4-4e48-bbdc-1edb1141c382', 'hozouhing', '4943344d-ffa4-4e59-84d6-c21a86aebd9b', '查询文件列表', '/hozouhing', '2017-05-02 15:30:44', '成功');
INSERT INTO `op_log` VALUES ('b20f9e0a-6177-4dd9-a0b8-475d71989d1b', 'hozouhing', 'fcec9dec-b771-4f94-95d0-afaeb910b0d4', '查询文件列表', '/', '2017-05-02 11:36:25', '成功');
INSERT INTO `op_log` VALUES ('b509b61b-819f-4f00-b942-d3cafde6ee59', 'hozouhing', 'abbc5542-ec32-457c-adeb-73b7d19fcd16', '查询文件列表', '/hozouhing', '2017-05-02 15:22:59', '成功');
INSERT INTO `op_log` VALUES ('b50b952f-1aa7-4f71-a3d2-2060daa6ae4b', 'hozouhing', '1f1a146d-4c65-4e4f-a00d-a77a229bffeb', '查询文件列表', '/hozouhing', '2017-05-02 15:16:05', '成功');
INSERT INTO `op_log` VALUES ('b5747323-6b5a-436a-a044-9f2dac34c2dc', 'hozouhing', 'dce3248e-aa0c-4742-a91c-ff78be81cd10', '查询文件列表', '/', '2017-05-02 15:54:27', '成功');
INSERT INTO `op_log` VALUES ('b645d02d-ec9b-4c98-907a-1136c604280a', 'hozouhing', '2e30994f-a726-4712-80a3-1fc69fb6328f', '查询文件列表', '/', '2017-05-02 15:32:53', '成功');
INSERT INTO `op_log` VALUES ('b67359b0-8ca7-477d-b2b0-83016f4d03c6', 'hozouhing', 'de8e8a71-c086-481e-8462-6bf46777c242', '查询文件列表', '/', '2017-05-02 15:51:05', '成功');
INSERT INTO `op_log` VALUES ('b8b0ad88-6952-420f-b1ce-dbcda904fe17', 'hozouhing', '9abc89ca-1db1-47b7-8a3b-a375d1cdcdd7', '查询文件列表', '/', '2017-05-02 15:52:53', '成功');
INSERT INTO `op_log` VALUES ('b8c8c1b1-5296-4e84-b74f-1b125d6b7c37', 'hozouhing', '7eed5e4b-6963-4b2f-a1ab-ba76fc7be365', '查询文件列表', '/hozouhing', '2017-05-02 15:24:17', '成功');
INSERT INTO `op_log` VALUES ('b9bb2468-002f-4d4a-b2e0-6ab545baa732', 'hozouhing', '74aef571-2533-478c-84d7-c77f55175c42', '查询文件列表', '/hozouhing', '2017-05-01 22:17:27', '成功');
INSERT INTO `op_log` VALUES ('b9e06a36-4b33-47ff-9f50-b4174657b18d', 'hozouhing', '9b519fe7-dc85-4cde-a338-8e24a54e2044', '查询文件列表', '/', '2017-05-02 15:28:34', '成功');
INSERT INTO `op_log` VALUES ('be61a9cc-d125-429f-97a3-fd571a121c8a', 'hozouhing', '5589ecd8-89cb-472d-b91d-2f4e5787b620', '预览文本文件', '/hozouhing/testTxt1.txt', '2017-05-02 15:18:15', '成功');
INSERT INTO `op_log` VALUES ('beb6338e-1ec4-432e-8248-33d7f0fb06f7', 'hozouhing', 'b4bc6e36-49b4-464f-944e-3b70fe6b70ee', '查询文件列表', '/', '2017-05-02 11:35:58', '成功');
INSERT INTO `op_log` VALUES ('bebfa49b-e145-4cf3-a68a-a1ea9069dde7', 'hozouhing', 'd669ab38-07cc-4bc5-856a-0f45996dc702', '查询文件列表', '/hozouhing', '2017-05-01 16:24:49', '成功');
INSERT INTO `op_log` VALUES ('bf13ad7e-c155-4ce4-a150-cdd3c3f2f7ad', 'hozouhing', '73eb83e4-b824-44d0-bc48-138495c6e93a', '查询文件列表', '/', '2017-05-02 15:20:00', '成功');
INSERT INTO `op_log` VALUES ('bfad6eb6-f205-40a4-9853-c86996a5352f', 'hozouhing', 'a1da6ac1-eb41-4efa-b51e-5c6d44cb7aad', '查询文件列表', '/hozouhing', '2017-05-01 16:24:00', '成功');
INSERT INTO `op_log` VALUES ('c2f7f3d6-db8f-4702-adb2-ad391ffd6766', 'hozouhing', '38a511fa-d45c-4273-a468-e7ae282cea84', '查询文件列表', '/', '2017-05-02 15:54:01', '成功');
INSERT INTO `op_log` VALUES ('c38c09b2-b8f5-4f72-a911-72c1e4b98dce', 'hozouhing', '066443ff-fdf5-48fc-bcd0-20cf0a783c2e', '查询文件列表', '/hozouhing', '2017-05-02 15:05:21', '成功');
INSERT INTO `op_log` VALUES ('c44b5a0e-8f30-44fb-ab9d-092d8e76c89e', 'hozouhing', '3f7e3fc8-ad53-4e87-8999-c9dd858ae50c', '新建文件夹', '/hozouhing/test1', '2017-05-01 16:24:46', '成功');
INSERT INTO `op_log` VALUES ('c47ab5a0-6798-424a-9e29-58b53475fa3f', 'hozouhing', '3fa986dd-05f2-4356-a01a-e6fd04b4f3b3', '查询文件列表', '/hozouhing', '2017-05-01 16:27:34', '成功');
INSERT INTO `op_log` VALUES ('c6ff0a0f-90f8-4999-bca6-2d281f8d3bc2', 'hozouhing', '7fa40aed-5c1c-434b-a19d-5f994bebed3a', '查询文件列表', '/', '2017-05-02 15:25:25', '成功');
INSERT INTO `op_log` VALUES ('c78919a4-1232-4643-94ed-ab2bde2b5fa8', 'hozouhing', '40c1ac82-79fb-4b1f-83b7-1e2238c3ba4c', '查询文件列表', '/hozouhing', '2017-05-02 15:12:24', '成功');
INSERT INTO `op_log` VALUES ('c987ee88-2654-4ef7-972c-3cda565313d3', 'hozouhing', 'f60fe8af-6b32-49d4-987f-c4556553ab26', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:22:38', '成功');
INSERT INTO `op_log` VALUES ('cbcbedb1-4d01-4e1f-aaf2-fc29c1a862b3', 'hozouhing', '9c0d5f5e-3350-40fc-af17-482a8934144b', '查询文件列表', '/hozouhing', '2017-05-01 23:16:58', '成功');
INSERT INTO `op_log` VALUES ('cc3e34af-98c5-4e3d-991f-cef75a9ae2d3', 'hozouhing', 'ed7dc7ee-f798-4505-ba2b-656d75465631', '查询文件列表', '/hozouhing', '2017-05-01 22:26:42', '成功');
INSERT INTO `op_log` VALUES ('cd08a286-030a-43e7-8327-e1eab16f180c', 'hozouhing', '77a9f532-7d73-434e-b89a-4ee36ee09574', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:12:56', '成功');
INSERT INTO `op_log` VALUES ('d0beb0d5-861e-47f3-8484-af81c6a9b3c3', 'hozouhing', 'd83fadbd-61e1-4d42-ba26-71c3c8fb12a2', '查询文件列表', '/', '2017-05-02 15:30:21', '成功');
INSERT INTO `op_log` VALUES ('d0ea9897-a320-4938-bf06-e8fdeb4c25d8', 'hozouhing', 'd9ccb285-4a25-42df-96ae-bbbdb6a5c154', '查询文件列表', '/', '2017-05-02 15:18:06', '成功');
INSERT INTO `op_log` VALUES ('d115807d-5acf-493e-866f-d977bcd958be', 'hozouhing', '4e7e7b84-645b-4b0a-98a6-b7647f286d8c', '查询文件列表', '/hozouhing', '2017-05-01 22:36:10', '成功');
INSERT INTO `op_log` VALUES ('d1828202-3337-43ba-bc44-717da86440d8', 'hozouhing', '4d2f4e20-5b91-40d9-a653-27173d697a86', '查询文件列表', '/hozouhing', '2017-05-02 15:22:36', '成功');
INSERT INTO `op_log` VALUES ('d254fa20-8e3a-44fc-ad19-972327369189', 'hozouhing', 'f89a1bda-84f0-42b9-b976-2401d9be9dd2', '查询文件列表', '/hozouhing', '2017-05-01 22:21:57', '成功');
INSERT INTO `op_log` VALUES ('d3c40377-8941-43f6-9870-201aac3e4fd2', 'hozouhing', '1cbb9b60-8ab1-4c58-88ee-db7b9c7d561a', '查询文件列表', '/hozouhing', '2017-05-01 22:27:44', '成功');
INSERT INTO `op_log` VALUES ('d4e7e67e-31ef-4f8b-98d2-cafdd78c0591', 'hozouhing', '52fb489d-11c3-4534-bac3-b32d90d9d8ee', '查询文件列表', '/hozouhing', '2017-05-02 16:10:38', '成功');
INSERT INTO `op_log` VALUES ('d55a2394-ecf4-4780-ae3a-3fca1f2d222a', 'hozouhing', '2ce1691b-3564-474c-9081-e269e11b350b', '查询文件列表', '/hozouhing', '2017-05-01 23:46:52', '成功');
INSERT INTO `op_log` VALUES ('d58d4cda-dc0b-40ee-80b4-0c14fd5965b5', 'hozouhing', 'a82707c1-1cdf-4cc1-9582-38c2851d152b', '查询文件列表', '/', '2017-05-02 12:13:14', '成功');
INSERT INTO `op_log` VALUES ('d6f3ceb7-4304-4a00-8878-439b4d922310', 'hozouhing', '6e551d02-0545-406c-b6e7-5e2ac41d703e', '查询文件列表', '/hozouhing', '2017-05-01 22:25:31', '成功');
INSERT INTO `op_log` VALUES ('d8216195-c4b0-4a1c-b799-0b4bf658449e', 'hozouhing', '77aed3a7-6058-4544-b48e-4e09463b2f6f', '预览图片文件', '/hozouhing/hadoop.png', '2017-05-01 23:10:50', '成功');
INSERT INTO `op_log` VALUES ('d8e66c1f-ceaa-40b9-90e0-9977db317758', 'hozouhing', '1065ab39-6252-4fff-8af0-4217d2a5f15b', '查询文件列表', '/', '2017-05-02 15:23:50', '成功');
INSERT INTO `op_log` VALUES ('d97a112d-3863-464b-9618-0d296ab70b5d', 'hozouhing', 'a153b6ec-eecc-4953-944b-fab27cc90c05', '查询文件列表', '/hozouhing', '2017-05-01 16:19:33', '成功');
INSERT INTO `op_log` VALUES ('db6bfd22-e09f-4915-a4cb-549534c517a8', 'hozouhing', 'd7b62065-f7d5-4616-9049-c139a6294a11', '查询文件列表', '/hozouhing', '2017-05-01 23:33:11', '成功');
INSERT INTO `op_log` VALUES ('dc42a77a-0948-45fa-93bc-df37349750fc', 'hozouhing', 'b5b001b2-647a-4b65-92b0-9cc22629975c', '查询文件列表', '/hozouhing', '2017-05-02 15:06:35', '成功');
INSERT INTO `op_log` VALUES ('dcf1640b-97e3-410c-9603-7cc5d7e552a9', 'hozouhing', '6d2a7a81-a8df-47c6-aeba-9a0f45536804', '查询文件列表', '/hozouhing', '2017-05-01 23:16:06', '成功');
INSERT INTO `op_log` VALUES ('de3ac529-255e-4a5d-b3cf-a361ada1268e', 'hozouhing', '32ba06fe-051d-4d3b-afda-1133b494d09b', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:21:42', '成功');
INSERT INTO `op_log` VALUES ('e01dfbcf-b64b-497e-b241-516fe2168ea6', 'hozouhing', 'a3ac3754-b4b4-40c5-87e8-ff1e48c70045', '查询文件列表', '/', '2017-05-02 11:33:22', '成功');
INSERT INTO `op_log` VALUES ('e10bba57-1a66-43ca-b8a1-c4ca3c6379f6', 'hozouhing', '4a4174ed-7745-430c-a6c4-ea0443476ea6', '查询文件列表', '/hozouhing', '2017-05-02 16:14:30', '成功');
INSERT INTO `op_log` VALUES ('e1f1d43a-8d66-4cfa-802c-44b5e608cbd4', 'hozouhing', 'c497366c-f79a-4939-8d1b-a9809fe3f5d2', '预览PDF文件', '/hozouhing/testPdf1.pdf', '2017-05-02 15:28:39', '成功');
INSERT INTO `op_log` VALUES ('e206a885-8f9b-4cbf-8368-074f2f02282c', 'hozouhing', 'ee55256f-2f10-4d48-a2e3-bde6e61225c3', '查询文件列表', '/hozouhing', '2017-05-01 22:16:21', '成功');
INSERT INTO `op_log` VALUES ('e3e7e74e-bfe6-4fb3-af9f-d08c0ef407f9', 'hozouhing', '4a9567b2-745b-47c8-b94c-7d40bb979872', '查询文件列表', '/', '2017-05-02 15:33:23', '成功');
INSERT INTO `op_log` VALUES ('e69dd60a-62bb-4281-974c-a4c66b29eb28', 'hozouhing', 'ad8b8c4c-d246-458e-ab9b-1af510339f49', '查询文件列表', '/hozouhing', '2017-05-01 22:24:19', '成功');
INSERT INTO `op_log` VALUES ('e6a534d5-759e-463c-b6ff-93d5506b7969', 'hozouhing', '27c7968b-9a7b-4dbb-a82c-c57ad4e1cd1e', '查询文件列表', '/hozouhing/test1', '2017-05-01 22:18:12', '成功');
INSERT INTO `op_log` VALUES ('e77707b7-5867-4cf4-b82e-5828ae3b6490', 'hozouhing', '9d79a870-7172-4c2e-8785-8b5bda04d520', '查询文件列表', '/', '2017-05-02 15:52:38', '成功');
INSERT INTO `op_log` VALUES ('e82fe3b0-2a94-4e37-a24d-7d88834ca95b', 'hozouhing', 'c2df22e7-d48e-47cb-a685-0beb69d39963', '查询文件列表', '/', '2017-05-02 12:14:05', '成功');
INSERT INTO `op_log` VALUES ('e856b577-f981-4229-b773-5d2535ab086f', 'hozouhing', '83a78d53-874d-4140-ac8e-cf7e865c8f38', '查询文件列表', '/hozouhing', '2017-05-01 16:21:17', '成功');
INSERT INTO `op_log` VALUES ('e8bf5d39-4e03-4569-a6c7-205e5499858c', 'hozouhing', '11af6db3-046a-47fb-a27f-a848be7988a4', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('eb0cfafd-dcf8-4d27-8fc8-a1e59bf1cb4b', 'hozouhing', '97c5a3ff-e4db-4068-9183-bb685b4b414b', '查询文件列表', '/hozouhing/test1', '2017-05-01 16:31:58', '成功');
INSERT INTO `op_log` VALUES ('ebf7fed6-4cf8-4b55-bb77-87e51c262272', 'hozouhing', '05a15bff-5416-4bbf-841b-48305b6aabf9', '查询文件列表', '/', '2017-05-02 10:41:23', '成功');
INSERT INTO `op_log` VALUES ('eea88c02-973d-448c-bead-6a34e0ff79bb', 'hozouhing', 'a4cdba27-5e75-41bc-9d77-93e99726c0d3', '查询文件列表', '/hozouhing', '2017-05-02 15:21:37', '成功');
INSERT INTO `op_log` VALUES ('f04280ad-d2ba-463b-b04c-2d5a06f1d2d3', 'hozouhing', '2414d7a2-9923-4a07-ac7c-69e9e4d6ea83', '预览图片文件', '/hozouhing/hadoop.png', '2017-05-02 15:28:57', '成功');
INSERT INTO `op_log` VALUES ('f0ba537f-0a33-4e57-91cc-f197bd21fe7c', 'hozouhing', 'c7f59709-d54b-4287-8a6f-a300b7235f0d', '查询文件列表', '/a', '2017-05-02 16:27:01', '成功');
INSERT INTO `op_log` VALUES ('f1ed1cb2-2b69-415e-ab52-0e3cdb83aad4', 'hozouhing', '7db97fe7-7f39-4e4c-94eb-9f0d8921d064', '查询文件列表', '/', '2017-05-02 11:37:44', '成功');
INSERT INTO `op_log` VALUES ('f2297912-3863-4323-a827-b54579ef5b2d', 'hozouhing', '526c2945-a2bb-47a8-b863-14b014dc5b84', '上传文件', '/hozouhing', '2017-05-01 16:25:09', '成功');
INSERT INTO `op_log` VALUES ('f2d89c4f-6b38-4f72-8946-97a2b08a97a5', 'hozouhing', '3b193c59-8e73-4586-9b49-ae863e97b82f', '查询文件列表', '/hozouhing', '2017-05-01 23:44:54', '成功');
INSERT INTO `op_log` VALUES ('f4356389-a7df-4e7f-8adc-d4d98bbdc4ee', 'hozouhing', '0dd427f0-b82e-49f4-8f69-2b4c5f28659c', '上传文件', '/b', '2017-05-02 10:42:28', '成功');
INSERT INTO `op_log` VALUES ('f4ee439b-0dfc-425f-bf30-b67270a0689d', 'hozouhing', '61e873e4-e1ce-4a4b-a959-068f0c9ca3e7', '查询文件列表', '/', '2017-05-02 12:15:45', '成功');
INSERT INTO `op_log` VALUES ('f4f0c2c1-e119-4852-9516-30d54c33d2ab', 'hozouhing', '4a31da3c-4075-422c-9189-70648d8f913f', '查询文件列表', '/', '2017-05-02 15:20:04', '成功');
INSERT INTO `op_log` VALUES ('f5a83d67-b85d-407b-acd2-c412d357b812', 'hozouhing', '658a7e73-42d8-41ae-b791-2b985a7e3056', '查询文件列表', '/', '2017-05-02 15:31:46', '成功');
INSERT INTO `op_log` VALUES ('f699eecf-bfec-4a78-8bd4-99ca472fed4b', 'a', '6a50fcb9-531e-495c-a632-f85e3955ceb4', '查询文件列表', '/hozouhing', '2017-05-01 23:34:36', '成功');
INSERT INTO `op_log` VALUES ('f6d2b242-c470-4fe6-a0af-d3f5e3e2d145', 'hozouhing', 'cd3e9970-2f82-49c1-a2ba-dbc5f89f243c', '查询文件列表', '/hozouhing', '2017-05-01 23:55:41', '成功');
INSERT INTO `op_log` VALUES ('f81e87ba-07da-4219-a934-3a412d3505e4', 'a', '19fa8580-f238-442b-b17e-f00b8aecb30a', '查询文件列表', '/hozouhing', '2017-05-01 23:33:53', '成功');
INSERT INTO `op_log` VALUES ('f90a612f-6cdf-43e1-9b5b-8cd84add1127', 'hozouhing', '486e8831-a30d-44d3-bf6f-ca445b22e63f', '查询文件列表', '/', '2017-05-02 15:22:57', '成功');
INSERT INTO `op_log` VALUES ('fa214dec-0cd4-49f9-93a6-4d9db6184a44', 'hozouhing', '93a75089-e982-43f5-adff-caa4a98baeb5', '查询文件列表', '/hozouhing', '2017-05-01 23:52:56', '成功');
INSERT INTO `op_log` VALUES ('fc9f5423-dbdf-40e3-ad3f-9371e8d0a197', 'a', '10669e25-0375-47a5-9779-b80242639de6', '查询文件列表', '/hozouhing', '2017-05-01 22:23:10', '成功');
INSERT INTO `op_log` VALUES ('ffcd5608-518d-4d79-83e5-c0bf3c650076', 'hozouhing', '1b55b0e0-c208-4b2d-a9a9-0820b2f91345', '查询文件列表', '/', '2017-05-02 15:17:26', '成功');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(22) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('32e00f07-96ae-42eb-b28f-da99bf99e698', 'b', 'b', 'b', '普通用户', '正常', '2017-05-02 14:43:23', '2017-05-01 13:44:43');
INSERT INTO `user` VALUES ('e882930f-127e-4fe6-b25a-6b217b0e839b', 'a', 'a', 'a', '普通用户', '正常', '2017-05-01 14:43:27', '2017-05-02 18:19:03');
