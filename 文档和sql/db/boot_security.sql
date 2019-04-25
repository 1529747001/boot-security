/*
Navicat MySQL Data Transfer

Source Server         : zhangw
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : boot_security

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-10-15 21:38:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of file_info
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', 'fa-users', '', '1', '', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户查询', 'fa-user', 'pages/user/userList.html', '1', '', '2');
INSERT INTO `sys_permission` VALUES ('3', '2', '查询', '', '', '2', 'sys:user:query', '100');
INSERT INTO `sys_permission` VALUES ('4', '2', '新增', '', '', '2', 'sys:user:add', '100');
INSERT INTO `sys_permission` VALUES ('6', '0', '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', '1', 'sys:user:password', '4');
INSERT INTO `sys_permission` VALUES ('7', '0', '系统设置', 'fa-gears', '', '1', '', '5');
INSERT INTO `sys_permission` VALUES ('8', '7', '菜单', 'fa-cog', 'pages/menu/menuList.html', '1', '', '6');
INSERT INTO `sys_permission` VALUES ('9', '8', '查询', '', '', '2', 'sys:menu:query', '100');
INSERT INTO `sys_permission` VALUES ('10', '8', '新增', '', '', '2', 'sys:menu:add', '100');
INSERT INTO `sys_permission` VALUES ('11', '8', '删除', '', '', '2', 'sys:menu:del', '100');
INSERT INTO `sys_permission` VALUES ('12', '7', '角色', 'fa-user-secret', 'pages/role/roleList.html', '1', '', '7');
INSERT INTO `sys_permission` VALUES ('13', '12', '查询', '', '', '2', 'sys:role:query', '100');
INSERT INTO `sys_permission` VALUES ('14', '12', '新增', '', '', '2', 'sys:role:add', '100');
INSERT INTO `sys_permission` VALUES ('15', '12', '删除', '', '', '2', 'sys:role:del', '100');
INSERT INTO `sys_permission` VALUES ('16', '0', '文件管理', 'fa-folder-open', 'pages/file/fileList.html', '1', '', '8');
INSERT INTO `sys_permission` VALUES ('17', '16', '查询', '', '', '2', 'sys:file:query', '100');
INSERT INTO `sys_permission` VALUES ('18', '16', '删除', '', '', '2', 'sys:file:del', '100');
INSERT INTO `sys_permission` VALUES ('19', '0', '数据源监控', 'fa-eye', 'druid/index.html', '1', '', '9');
INSERT INTO `sys_permission` VALUES ('20', '0', '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', '1', '', '10');
INSERT INTO `sys_permission` VALUES ('21', '0', '代码生成', 'fa-wrench', 'pages/generate/edit.html', '1', 'generate:edit', '11');
INSERT INTO `sys_permission` VALUES ('22', '0', '公告管理', 'fa-book', 'pages/notice/noticeList.html', '1', '', '12');
INSERT INTO `sys_permission` VALUES ('23', '22', '查询', '', '', '2', 'notice:query', '100');
INSERT INTO `sys_permission` VALUES ('24', '22', '添加', '', '', '2', 'notice:add', '100');
INSERT INTO `sys_permission` VALUES ('25', '22', '删除', '', '', '2', 'notice:del', '100');
INSERT INTO `sys_permission` VALUES ('26', '0', '日志查询', 'fa-reorder', 'pages/log/logList.html', '1', 'sys:log:query', '13');
INSERT INTO `sys_permission` VALUES ('27', '0', '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', '1', '', '14');
INSERT INTO `sys_permission` VALUES ('28', '27', '发送邮件', '', '', '2', 'mail:send', '100');
INSERT INTO `sys_permission` VALUES ('29', '27', '查询', '', '', '2', 'mail:all:query', '100');
INSERT INTO `sys_permission` VALUES ('30', '0', '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', '1', '', '15');
INSERT INTO `sys_permission` VALUES ('31', '30', '查询', '', '', '2', 'job:query', '100');
INSERT INTO `sys_permission` VALUES ('32', '30', '新增', '', '', '2', 'job:add', '100');
INSERT INTO `sys_permission` VALUES ('33', '30', '删除', '', '', '2', 'job:del', '100');
INSERT INTO `sys_permission` VALUES ('34', '0', 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', '1', '', '16');
INSERT INTO `sys_permission` VALUES ('35', '34', '导出', '', '', '2', 'excel:down', '100');
INSERT INTO `sys_permission` VALUES ('36', '34', '页面显示数据', '', '', '2', 'excel:show:datas', '100');
INSERT INTO `sys_permission` VALUES ('37', '0', '字典管理', 'fa-reddit', 'pages/dict/dictList.html', '1', '', '17');
INSERT INTO `sys_permission` VALUES ('38', '37', '查询', '', '', '2', 'dict:query', '100');
INSERT INTO `sys_permission` VALUES ('39', '37', '新增', '', '', '2', 'dict:add', '100');
INSERT INTO `sys_permission` VALUES ('40', '37', '删除', '', '', '2', 'dict:del', '100');
-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员', '2017-05-01 13:25:39', '2017-10-05 21:59:18');
INSERT INTO `sys_role` VALUES ('2', 'USER', '', '2017-08-01 21:47:31', '2017-10-05 21:59:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('1', '6');
INSERT INTO `sys_role_permission` VALUES ('1', '7');
INSERT INTO `sys_role_permission` VALUES ('1', '8');
INSERT INTO `sys_role_permission` VALUES ('1', '9');
INSERT INTO `sys_role_permission` VALUES ('1', '10');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '13');
INSERT INTO `sys_role_permission` VALUES ('1', '14');
INSERT INTO `sys_role_permission` VALUES ('1', '15');
INSERT INTO `sys_role_permission` VALUES ('1', '16');
INSERT INTO `sys_role_permission` VALUES ('1', '17');
INSERT INTO `sys_role_permission` VALUES ('1', '18');
INSERT INTO `sys_role_permission` VALUES ('1', '19');
INSERT INTO `sys_role_permission` VALUES ('1', '20');
INSERT INTO `sys_role_permission` VALUES ('1', '21');
INSERT INTO `sys_role_permission` VALUES ('1', '22');
INSERT INTO `sys_role_permission` VALUES ('1', '23');
INSERT INTO `sys_role_permission` VALUES ('1', '24');
INSERT INTO `sys_role_permission` VALUES ('1', '25');
INSERT INTO `sys_role_permission` VALUES ('1', '26');
INSERT INTO `sys_role_permission` VALUES ('1', '27');
INSERT INTO `sys_role_permission` VALUES ('1', '28');
INSERT INTO `sys_role_permission` VALUES ('1', '29');
INSERT INTO `sys_role_permission` VALUES ('1', '30');
INSERT INTO `sys_role_permission` VALUES ('1', '31');
INSERT INTO `sys_role_permission` VALUES ('1', '32');
INSERT INTO `sys_role_permission` VALUES ('1', '33');
INSERT INTO `sys_role_permission` VALUES ('1', '34');
INSERT INTO `sys_role_permission` VALUES ('1', '35');
INSERT INTO `sys_role_permission` VALUES ('1', '36');
INSERT INTO `sys_role_permission` VALUES ('1', '37');
INSERT INTO `sys_role_permission` VALUES ('1', '38');
INSERT INTO `sys_role_permission` VALUES ('1', '39');
INSERT INTO `sys_role_permission` VALUES ('1', '40');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '3');
INSERT INTO `sys_role_permission` VALUES ('2', '4');
INSERT INTO `sys_role_permission` VALUES ('2', '6');
INSERT INTO `sys_role_permission` VALUES ('2', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '8');
INSERT INTO `sys_role_permission` VALUES ('2', '9');
INSERT INTO `sys_role_permission` VALUES ('2', '10');
INSERT INTO `sys_role_permission` VALUES ('2', '11');
INSERT INTO `sys_role_permission` VALUES ('2', '12');
INSERT INTO `sys_role_permission` VALUES ('2', '13');
INSERT INTO `sys_role_permission` VALUES ('2', '14');
INSERT INTO `sys_role_permission` VALUES ('2', '15');
INSERT INTO `sys_role_permission` VALUES ('2', '16');
INSERT INTO `sys_role_permission` VALUES ('2', '17');
INSERT INTO `sys_role_permission` VALUES ('2', '18');
INSERT INTO `sys_role_permission` VALUES ('2', '19');
INSERT INTO `sys_role_permission` VALUES ('2', '20');
INSERT INTO `sys_role_permission` VALUES ('2', '21');
INSERT INTO `sys_role_permission` VALUES ('2', '22');
INSERT INTO `sys_role_permission` VALUES ('2', '23');
INSERT INTO `sys_role_permission` VALUES ('2', '24');
INSERT INTO `sys_role_permission` VALUES ('2', '25');
INSERT INTO `sys_role_permission` VALUES ('2', '30');
INSERT INTO `sys_role_permission` VALUES ('2', '31');
INSERT INTO `sys_role_permission` VALUES ('2', '34');
INSERT INTO `sys_role_permission` VALUES ('2', '36');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('1', '1');
INSERT INTO `sys_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK', '管理员', null, '', '', '', '1998-07-01', '0', '1', '2017-04-10 15:21:38', '2017-07-06 09:20:19');
INSERT INTO `sys_user` VALUES ('2', 'user', '$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu', '用户', null, '', '', '', null, '1', '1', '2017-08-01 21:47:18', '2017-08-01 21:47:18');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES ('2', 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES ('3', 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('4', 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('5', 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('6', 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('7', 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('8', 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('9', 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cron` varchar(64) NOT NULL,
  `springBeanName` varchar(64) NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobName` (`jobName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '正文',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail_to
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail_to
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice_read
-- ----------------------------
-- ----------------------------
-- Table structure for t_token
-- ----------------------------
DROP TABLE IF EXISTS `t_token`;
CREATE TABLE `t_token` (
  `id` varchar(36) NOT NULL COMMENT 'token',
  `val` text NOT NULL COMMENT 'LoginUser的json串',
  `expireTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------ ------------------------------ ------------------------------ ----------------------------
-- ------------------------------ ------------------------------ ------------------------------ ----------------------------
-- ------------------------------ ------------------------------ ------------------------------ ----------------------------
-- ------------------------------ ------------------------------ ------------------------------ ----------------------------

-- ----------------------------  栏目表
-- Table structure for `dede_arctype`
-- ----------------------------
DROP TABLE IF EXISTS `dede_arctype`;
CREATE TABLE `dede_arctype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `reid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortrank` smallint(5) unsigned NOT NULL DEFAULT '50',
  `typename` char(30) NOT NULL DEFAULT '',
  `typedir` char(60) NOT NULL DEFAULT '',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `defaultname` char(15) NOT NULL DEFAULT 'index.html',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `channeltype` smallint(6) DEFAULT '1',
  `maxpage` smallint(6) NOT NULL DEFAULT '-1',
  `ispart` smallint(6) NOT NULL DEFAULT '0',
  `corank` smallint(6) NOT NULL DEFAULT '0',
  `tempindex` char(50) NOT NULL DEFAULT '',
  `templist` char(50) NOT NULL DEFAULT '',
  `temparticle` char(50) NOT NULL DEFAULT '',
  `namerule` char(50) NOT NULL DEFAULT '',
  `namerule2` char(50) NOT NULL DEFAULT '',
  `modname` char(20) NOT NULL DEFAULT '',
  `description` char(150) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `seotitle` varchar(80) NOT NULL DEFAULT '',
  `moresite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sitepath` char(60) NOT NULL DEFAULT '',
  `siteurl` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `cross` tinyint(1) NOT NULL DEFAULT '0',
  `crossid` text,
  `content` text,
  `smalltypes` text,
  PRIMARY KEY (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ----------------------------
-- Records of dede_arctype
-- ----------------------------
INSERT INTO `dede_arctype` VALUES ('1', '0', '0', '1', '机构概况', '{cmspath}/a/jigougaikuang/', '-1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '机构概况,INCC,资质', '机构概况,INCC,资质', '机构概况', '0', '{cmspath}/a/jigougaikuang/', '', '0', '0', '0', '<div>\r\n	<strong>中国</strong><strong>合规</strong><strong>商品资质验证中心简介</strong><br />\r\n	中国合规商品资质验证中心简介隶属于中国保护消费者基金会，由商验（北京）认证服务有限公司承担运营和技术服务。工作内容：为促进商品经济持续健康发展，保护消费者和经营者的合法权益，建立优质商品与消费者之间信任机制与信息畅通机制，依据《网络交易管理办法》《消费者权益保护法》《产品质量法》等有关法律、法规之有关内容开展；通过 CFCPINCC的应用，维护与规范商品市场主体行为，维护市场秩序，有效减少网络欺诈、销售假冒伪劣商品、不正当竞争等行为，为商品交易主体创造公平的经营环境，为消费者营造便利、安全、放心的消费环境，进一步促进商品交易市场的健康发展。</div>\r\n<div>\r\n	<hr />\r\n	<p>\r\n		<br />\r\n		<strong>中国保护消费者基金会简介</strong><br />\r\n		中国保护消费者基金会经中国人民银行批准、民政部登记注册，于1989年11月正式成立。本会为全国性的、非营利的独立社团法人，归口管理部门为国资委。中国保护消费者基金会依据《中华人民共和国消费者权益保护法》，属于消费者组织，依据《中华人民共和国公益事业捐赠法》又是公益性社会团体。宗旨是，保护消费者合法权益、提高消费者地位、推进保护消费者事业的发展。中国保护消费者基金会接受国内外捐赠的资金和实物，用以推进保护消费者事业；积极履行《中华人民共和国消费者权益保护法》赋予消费者组织对商品和服务进行社会监督的职责，正确引导消费。 地址：北京市阜外大街乙22号</p>\r\n	<hr />\r\n	<p>\r\n		<br />\r\n		<strong>中国保护消费者基金会章程</strong></p>\r\n	<div>\r\n		<strong>第一章 总 则</strong></div>\r\n	<div>\r\n		第一条 基金会名称：中国保护消费者基金会，英文：CHINA FOUNDATION OF CONSUMER PROTECTION,为全国性的社团法人。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二条 本会以保护消费者合法权益、提高消费者地位、推进保护消费者事业的发展为宗旨，严格遵守宪法、法律、法规和国家政策，遵守社会道德风尚。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三条 本会接受国内外捐赠的资金和实物，用于保护消费者事业。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第四条 本会积极履行《中华人民共和国消费者权益保护法》赋予消费者组织对商品和服务进行社会监督的职责，不从事营利性经营活动，不以牟利为目的向社会推荐商品和服务。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第五条 本会致力于国内外热心保护消费者权益的社会团体和其它组织以及知名人士的友好合作和国际交流。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第六条 本会接受国家经济贸易委员会和中国人民银行、民政部的业务指导和监督管理。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第七条 本会设于北京西城区阜外大街 乙 22号</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第二章 基 金</strong></div>\r\n	<div>\r\n		第八条 本会的注册基金为八百万人民币。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第九条 基金来源：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 国内企业、事业单位、机关、团体的捐赠；</div>\r\n	<div>\r\n		2、 国外人士、港、澳、台同胞及海外侨胞的捐赠；</div>\r\n	<div>\r\n		3、 消费者个人捐赠；</div>\r\n	<div>\r\n		4、 基金存入金融机构的利息收入以及依法可用于购买有价证券获得的收益；</div>\r\n	<div>\r\n		5、 其它合法收入。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十条 基金的用途：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 奖励为保护消费者权益作出突出贡献的单位和个人；</div>\r\n	<div>\r\n		2、 资助和参与商品检验、消费调查和引导消费工作；</div>\r\n	<div>\r\n		3、 开展消费教育和出版消费书籍；</div>\r\n	<div>\r\n		4、 资助保护消费者问题研究和宣传活动；</div>\r\n	<div>\r\n		5、 支持受损害的消费者提起诉讼；</div>\r\n	<div>\r\n		6、 救助受损害的消费者。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十一条 为消费者服务事项：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、进行市场调查帮助消费者了解市场形势和走向，向消费者提供消费信息和商品知识；协助企业分析市场、开拓市场；</div>\r\n	<div>\r\n		2、帮助消费者学习和掌握国家有关保护消费者权益的法律、法规，提高消费者的维权意识；</div>\r\n	<div>\r\n		3、参与有关行政部门对消费品质量、服务质量的监督、检查工作；</div>\r\n	<div>\r\n		4、支持和参与各种方式的打假活动；</div>\r\n	<div>\r\n		5、向政府和有关部门反映消费者的意见、要求、批评和建议；</div>\r\n	<div>\r\n		6、 热情受理消费者投诉，为消费者排忧解难；</div>\r\n	<div>\r\n		7、 参与为消费者服务的其他事项。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第三章 组 织 机 构</strong></div>\r\n	<div>\r\n		第十二条 本会聘请热心于保护消费者事业的各界代表组成理事会。理事会是本会的最高权力机构。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十三条 理事会选举会长一人，副会长若干人。会长为本会法定代表人。理事会设常务理事会，由会长、副会长、秘书长组成。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十四条 本会聘请名誉会长、顾问若干人。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十五条 会长、副会长每届任期五年，可连选连任，但最长不超过两届。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十六条 秘书长由会长提名，理事会通过。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十七条 理事会职权：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 制定和修改基金会章程；</div>\r\n	<div>\r\n		2、 选举和罢免正副会长，通过和否定秘书长、副秘书长；</div>\r\n	<div>\r\n		3、 审定工作报告和制定工作计划；</div>\r\n	<div>\r\n		4、 审定财务报告；</div>\r\n	<div>\r\n		5、 决定其它重要事宜。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十八条 理事的权利和义务：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、参加理事会和本会举办的各项活动；</div>\r\n	<div>\r\n		2、在理事会上享有选举权和被选举权；</div>\r\n	<div>\r\n		3、对本会的工作有权提出意见、建议和批评；</div>\r\n	<div>\r\n		4、获得本会提供的国内外信息；</div>\r\n	<div>\r\n		5、享有本会编辑出版的资料、报刊和书籍；</div>\r\n	<div>\r\n		6、 积极宣传本会的宗旨，大力支持本会的各项工作；</div>\r\n	<div>\r\n		7、 积极向本会捐赠保护消费者事业需要的资金的实物。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十九条 理事会全体会议每年召开一次，特殊情况，也可提前或推迟召开。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十条 理事会须有三分之二理事出席方能召开，其决议必须经到会三分之二以上理事表决通过方能生效。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十一条 本会设立常务理事会，在理事会闭会期间常务理事会行使理事会职权，对理事会负责。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十二条 理事会设立办事机构，由秘书长组织协调日常事物工作，副秘书长协助。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十三条 本会的会长、副会长、秘书长必须具备下列条件：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 坚持党的路线、方针、政策，政治素质好；</div>\r\n	<div>\r\n		2、 有较强的业务工作能力；</div>\r\n	<div>\r\n		3、 身体健康、能坚持日常工作；</div>\r\n	<div>\r\n		4、 最高任职年龄不超过65岁；</div>\r\n	<div>\r\n		5、 具有完全民事行为能力。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十四条 本会会长、副会长、秘书长如超过最高任职年龄的，须经理事会表决通过，报业务主管单位审查并经社团管理机关批准同意后，方可任职。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第四章 资 产 管 理</strong></div>\r\n	<div>\r\n		第二十五条 本会的基金必须用于本章程规定的业务范围和事业的发展。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十六条 本会建立严格的管理制度，配备具有专业资格的会计人员。对资产的管理使用，依照会计法的规定进行核算和管理。日常会计核算要做到及时、真实、准确。会计档案（包括帐薄、凭证、报表等）要完整保存。会计人员调动工作或离职时，必须与接管人员办清交接手续。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十七条 本会的资产管理必须执行国家规定的财务管理制度，接受中国人民银行和审计部门的稽查、检查和监督。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十八条 本会换届或更换法定代表人必须接受社团管理机关和业务主管单位的财务审计。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十九条 本会的资产，任何单位、个人不得侵占、私分和挪用。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十条 本会在职工作人员的工资和保险、福利待遇，参照国家事业单位的有关规定执行。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第五章 终止程序及终止后的财物处理</strong></div>\r\n	<div>\r\n		第三十一条 本会自行解散或由于分立、合并等原因需要注销的，由理事会或常务理事会提出最终动议，报业务主管部门同意。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十二条 本会经中国人民银行和社团管理机构办理注销手续后即为终止。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十三条 本会终止前，须在业务主管单位及有关机关指导下成立清算组织，清理债权债务，处理善后事宜。清算期间，不开展清算以外的活动。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十四条 本会终止后剩余财产，在业务主管单位和中国人民银行、社团管理机关的监督下上缴国库，或按照国家有关规定用于发展与本会宗旨相关的事业。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第六章 附 则</strong></div>\r\n	<div>\r\n		第三十五条 本章程须经理事会或常务理事会讨论通过，报业务主管部门审查同意，修改时亦同。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十六条 本章程经中国人民银行核准，社团管理机关登记后生效。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十七条 本章程的解释权属本会理事会。</div>\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('3', '1', '1', '3', '名词释义', '{cmspath}/a/jigougaikuang/mingcishiyi', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '名词释义,INCC,资质,验证,商品', '名词释义,INCC,资质,验证,商品', '名词释义', '0', '{cmspath}/a/jigougaikuang/', '', '0', '0', '0', '<ul>\r\n	<li>\r\n		<strong>INCC</strong>：英文全称为 Identification of Network Commodity Compliance，简称INCC，是由&ldquo;中国保护消费者基金会&rdquo;发起，基于充分保护网络商品消费者权益的主旨，用于对商品资质和品质状态进行标示的一项消费者权益保护活动 。</li>\r\n</ul>\r\n<hr />\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<strong>CFCP</strong>：中国保护消费者基金会，英文全称：China&nbsp; Foundation&nbsp; of&nbsp; Consumer&nbsp; Protection，简称：CFCP，是经中国人民银行批准、民政部登记注册的全国性、非营利的独立社团法人，于1989年11月正式成立。归口管理部门为国务院资产管理委员会。建会宗旨是，保护消费者合法权益、提高消费者地位、推进保护消费者事业的发展。</li>\r\n</ul>\r\n<hr />\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<strong>云端数据库</strong>：特指CFCPINCC标识用于供消费者查询的储存商品信息的数据库，消费者可通过智能移动终端识别与商品对应的CFCPINCC中内置的二维码登陆数据库查询该商品全部合规信息。</li>\r\n</ul>\r\n<hr />\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<strong>商品合规资质</strong>：指商品上市流通时，具备国家工商行政管理部门以及其它有关部门所强制要求的，商品经营机构基本经营资格许可和商品资质许可，包含但不限于商品经营主体应拥有齐备的法人机构资质，如法人代表身份证，法人机构营业执照，组织机构代码，需要国家行政监管机构特批的特种行业／商品的流通、生产等特殊行政许可等，商品拥有上市销售所必需的国家行政法规所强制要求的检则、备案、认证认定文书和文件等。</li>\r\n</ul>\r\n<hr />\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<strong>中国商品<strong>合规</strong>资质验证中心</strong>:是CFCPINCC标识的信息库入口，中国商品合规资质认证中心含有二维码对应的验证信息，识别该二维码后可直接跳转至云端数据库查询该标识所对应商品的出品单位资质、商品资质信息、以及国家工商监管机构对该商品上市销售所强制要求必需取得的相关检测、备案、认证等信息；</li>\r\n</ul>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('4', '1', '1', '2', '联系我们', '{cmspath}/a/jigougaikuang/lianxiwomen', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '联系我们,INCC,资质,验证,商品', '联系我们,INCC,资质,验证,商品', '联系我们', '0', '{cmspath}/a/jigougaikuang/', '', '0', '0', '0', '<strong>中国商品</strong><strong>合规</strong><strong>资质中心</strong><br />\r\n<strong>总部</strong><br />\r\n邮箱：cfcpincc@163.com<br />\r\n地址：北京市东城区朝阳门内大街225号<br />\r\n电话：010-65135566转2706或010-64076280<br />\r\n手机：13311179866<br />\r\n地址：北京市西城区阜成门外大街乙22号<br />\r\n电话:010-68396728<br />\r\n<hr />\r\n<p>\r\n	<strong>上海授权中心</strong><br />\r\n	电话：<br />\r\n	地址：</p>\r\n<hr />\r\n<p>\r\n	<strong>深圳授权中心</strong><br />\r\n	电话：<br />\r\n	地址：</p>\r\n<hr />\r\n<p>\r\n	<strong>浙江授权中心</strong><br />\r\n	电话：<br />\r\n	地址：</p>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('5', '0', '0', '2', '新闻动态', '{cmspath}/a/xinwendongtai', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '新闻动态,INCC,资质,验证,商品', '新闻动态,INCC,资质,验证,商品', '新闻动态', '0', '{cmspath}/a/xinwendongtai', '', '0', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('6', '5', '5', '0', '中心发布', '{cmspath}/a/xinwendongtai/zhongxinfabu', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '中心发布,INCC,资质,验证,商品', '中心发布,INCC,资质,验证,商品', '中心发布', '0', '{cmspath}/a/xinwendongtai', '', '0', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('7', '5', '5', '1', '行业要闻', '{cmspath}/a/xinwendongtai/hangyeyaowen', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '行业要闻,INCC,资质,验证,商品', '行业要闻,INCC,资质,验证,商品', '行业要闻', '0', '{cmspath}/a/xinwendongtai', '', '0', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('13', '0', '0', '4', '技术标准', '{cmspath}/a/jishubiaozhun', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '技术标准,INCC,资质,验证,商品', '技术标准,INCC,资质,验证,商品', '技术标准', '0', '{cmspath}/a/jishubiaozhun', '', '0', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('14', '13', '13', '0', '技术概要', '{cmspath}/a/jishubiaozhun/jishu', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_news.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '技术概要,INCC,资质,验证,商品', '技术概要,INCC,资质,验证,商品', '技术概要', '0', '{cmspath}/a/jishubiaozhun', '', '0', '0', '0', '<div style=\"text-align: center;\">\r\n	<strong><span style=\"font-size:16px;\">INCC技术概要</span></strong></div>\r\n<div>\r\n	<span style=\"font-size:12px;\"><strong><span style=\"font-size:14px;\">1、首页</span></strong></span></div>\r\n<div style=\"margin-left: 40px;\">\r\n	作为用户浏览行业法规信息、中心要闻发布、注册申请认证</div>\r\n<div>\r\n	<br />\r\n	<span style=\"font-size:12px;\"><strong><span style=\"font-size:14px;\">2、</span></strong></span><span style=\"font-size:14px;\"><strong>认证平台操作台</strong></span><br />\r\n	<div style=\"margin-left: 40px;\">\r\n		操作台：企业、代理商、财务、审核员相关工作人员的操作台</div>\r\n	<div>\r\n		<div style=\"margin-left: 40px;\">\r\n			云端数据库：储存企业资质信息、储存INCC标识</div>\r\n		<div style=\"margin-left: 40px;\">\r\n			核对：工商、质检、食药监、卫计委、其他监管部门<br />\r\n			&nbsp;</div>\r\n		<div>\r\n			<strong><span style=\"font-size:14px;\">3、INCC标识</span></strong></div>\r\n	</div>\r\n</div>\r\n<div style=\"margin-left: 40px;\">\r\n	认证平台通过对比云端数据库生成INCC标识</div>\r\n<div style=\"margin-left: 40px;\">\r\n	消费者通过手机端微信、支付宝等扫码设备访问云端数据库获取企业资质信息<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	&nbsp;</div>\r\n<div style=\"text-align: center;\">\r\n	<strong><span style=\"font-size:14px;\"><img alt=\"\" src=\"/uploads/allimg/180919/1-1P919134952944.png\" style=\"width: 600px; height: 515px;\" /></span></strong></div>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('15', '0', '13', '1', '政策法规', '{cmspath}/a/jishubiaozhun/zhengcefagui', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '政策法规,INCC,资质,验证,商品', '政策法规,INCC,资质,验证,商品', '政策法规', '0', '{cmspath}/a/jishubiaozhun', '', '0', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('17', '0', '0', '5', '行业应用', '{cmspath}/a/hangyeyingyong/', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '行业应用,INCC,资质,验证,商品', '行业应用,INCC,资质,验证,商品', '行业应用', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '0', '&nbsp;<b>一、递交资料：</b>\r\n<ol>\r\n	<li>\r\n		<strong>&middot;⽣产主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;⽣产许可证/号</li>\r\n			<li>\r\n				&middot;质量体系认证（ISO／GMP／FDA／其它）</li>\r\n			<li>\r\n				&middot;其它信息（⽔质／环保／其它）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;经营主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;⻝品经营许可证／号</li>\r\n			<li>\r\n				&middot;认证相关／荣誉/</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;商品资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商品图⽚</li>\r\n			<li>\r\n				&middot;商品名称</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;品牌资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商标受理通知书／号（TM）</li>\r\n			<li>\r\n				&middot;商标注册证／号（R）/</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n</ol>\r\n<div>\r\n	<hr />\r\n</div>\r\n二、案例展示：', '');
INSERT INTO `dede_arctype` VALUES ('18', '17', '17', '0', '食品行业', '{cmspath}/a/hangyeyingyong/shipin', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '食品行业,INCC,资质,验证,商品', '食品行业,INCC,资质,验证,商品', '食品行业', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '0', '<div>\r\n	<b>一、递交资料：</b></div>\r\n<ol>\r\n	<li>\r\n		<strong>&middot;⽣产主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;⽣产许可证/号</li>\r\n			<li>\r\n				&middot;质量体系认证（ISO／GMP／FDA／其它）</li>\r\n			<li>\r\n				&middot;其它信息（⽔质／环保／其它）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;经营主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;⻝品经营许可证／号</li>\r\n			<li>\r\n				&middot;认证相关／荣誉/</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;商品资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商品图⽚</li>\r\n			<li>\r\n				&middot;商品名称</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;品牌资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商标受理通知书／号（TM）</li>\r\n			<li>\r\n				&middot;商标注册证／号（R）/</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n</ol>\r\n<div>\r\n	<hr />\r\n</div>\r\n二、案例展示：', '');
INSERT INTO `dede_arctype` VALUES ('19', '17', '17', '1', '保健品行业', '{cmspath}/a/hangyeyingyong/baojianpin', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '保健品行业,INCC,资质,验证,商品', '保健品行业,INCC,资质,验证,商品', '保健品行业', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '0', '&nbsp;<strong>&nbsp;一、递交资料：</strong>\r\n<p>\r\n	<strong>&nbsp; &nbsp; &nbsp;</strong>&middot;<strong>生产资格信息；</strong></p>\r\n<ol style=\"margin-left: 80px;\">\r\n	<li>\r\n		&middot;⽣产许可审批；</li>\r\n	<li>\r\n		&middot;ISO体系认证；</li>\r\n	<li>\r\n		&middot;GMP良好规范认证；</li>\r\n	<li>\r\n		&middot;其它；</li>\r\n</ol>\r\n<div>\r\n	<strong>&nbsp; &nbsp; &nbsp;</strong>&middot;<strong>商品测评信息；</strong></div>\r\n<ol style=\"margin-left: 80px;\">\r\n	<li>\r\n		&middot;感观</li>\r\n	<li>\r\n		&middot;体验</li>\r\n</ol>\r\n<div>\r\n	<strong>&nbsp; &nbsp; &nbsp;</strong>&middot;<strong>商品资格信息；</strong></div>\r\n<ol style=\"margin-left: 80px;\">\r\n	<li>\r\n		&middot;保健⻝品资格</li>\r\n	<li style=\"margin-left: 40px;\">\r\n		<div>\r\n			&middot;使⽤⽬录内原料</div>\r\n		<ol>\r\n			<li style=\"margin-left: 80px;\">\r\n				&middot;备案审批</li>\r\n			<li style=\"margin-left: 80px;\">\r\n				&middot;原材料检测</li>\r\n		</ol>\r\n	</li>\r\n	<li style=\"margin-left: 40px;\">\r\n		<div>\r\n			&middot;使⽤⽬录外新原料</div>\r\n		<ol>\r\n			<li style=\"margin-left: 80px;\">\r\n				&middot;注册审批</li>\r\n			<li style=\"margin-left: 80px;\">\r\n				&middot;原材料备案</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		&middot;商品可视化信息</li>\r\n	<li>\r\n		&middot;品牌注册</li>\r\n</ol>\r\n<div>\r\n	<strong>&nbsp; &nbsp; &nbsp;</strong>&middot;<strong>商品检测信息；</strong></div>\r\n<ol style=\"margin-left: 80px;\">\r\n	<li>\r\n		&middot;CNAS</li>\r\n	<li>\r\n		&middot;CMA</li>\r\n</ol>\r\n<hr />\r\n<p>\r\n	<strong>二、案例展示：<br />\r\n	&nbsp; &nbsp; &nbsp;</strong></p>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('20', '0', '0', '6', '参考资料', '{cmspath}/a/cankaoziliao', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '参考资料', '参考资料', '参考资料', '0', '{cmspath}/a/cankaoziliao', '', '1', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('23', '0', '0', '7', '业务办理', '{cmspath}/a/yewubanli', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '业务办理,INCC,商品合规资质', '业务办理,INCC,商品合规资质', '业务办理', '0', '{cmspath}/a/yewubanli', '', '0', '0', '0', '<div>\r\n	<strong>&middot;在线注册</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;填报企业资质信息</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;支付费用</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;分支机构初审</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;中心审核</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;分支机构颁发INCC标识及电子证书</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;企业领取标识及证书</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;分支机构存档</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('24', '23', '23', '0', '办理流程', '{cmspath}/a/shiyanpingtai/banliliucheng', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '办理流程', '办理流程', '办理流程', '0', '{cmspath}/a/yewubanli', '', '0', '0', '0', '<div>\r\n	<strong>&middot;在线注册</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;填报企业资质信息</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;支付费用</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;分支机构初审</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;中心审核</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;分支机构颁发INCC标识及电子证书</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;企业领取标识及证书</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div>\r\n	<strong>&middot;系统数据库存档</strong>\r\n	<hr />\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('25', '23', '23', '1', '收费管理', '{cmspath}/a/shiyanpingtai/shoufeiguanli', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '收费管理', '收费管理', '收费管理', '0', '{cmspath}/a/yewubanli', '', '0', '0', '0', '<strong>加入费：</strong><br />\r\n一次性收费&nbsp; &nbsp; &nbsp;1000元<br />\r\n<br />\r\n<strong>维护费（单个品类）：</strong><br />\r\n服务年限：一年<br />\r\n维护费用：500元<br />\r\n<br />\r\n<span style=\"color:#b22222;\"><strong>注：所有资质信息完全一致属于单个品类。</strong></span>', '');
INSERT INTO `dede_arctype` VALUES ('27', '0', '0', '9', '首页幻灯', '{cmspath}/a/shouyehuandeng', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '首页幻灯', '0', '{cmspath}/a/shouyehuandeng', '', '1', '0', '0', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('28', '17', '17', '50', '化妆品行业', '{cmspath}/a/hangyeyingyong/huangzhuangpin', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '化妆品行业,INCC,资质,验证,商品', '化妆品行业,INCC,资质,验证,商品', '化妆品行业', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '', '&nbsp;一、递交资料：\r\n<ol>\r\n	<li>\r\n		<strong>&middot;⽣产主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;化妆品⽣产许可证/号</li>\r\n			<li>\r\n				&middot;质量体系认证（ISO／GMP／FDA／其它）</li>\r\n			<li>\r\n				&middot;其它信息（⽔质／环保／其它）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;经营主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;认证相关／荣誉</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;品牌资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商标受理通知书／号（TM）</li>\r\n			<li>\r\n				&middot;商标注册证／号（R）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;商品资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;国产⾮特殊⽤途化妆品备案证／号</li>\r\n			<li>\r\n				&middot;进⼝⾮特殊⽤途化妆品备案证／号</li>\r\n			<li>\r\n				&middot;国产特殊⽤途化妆品备案证／号</li>\r\n			<li>\r\n				&middot;进⼝特殊⽤途化妆品备案证／号</li>\r\n			<li>\r\n				&middot;商品图⽚</li>\r\n			<li>\r\n				&middot;商品名称</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n</ol>\r\n<strong>​</strong>\r\n<hr />\r\n二、案例展示：', '');
INSERT INTO `dede_arctype` VALUES ('29', '17', '17', '50', '服装行业', '{cmspath}/a/hangyeyingyong/shipin/fuzhuang', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '服装行业,INCC,资质,验证,商品', '服装行业,INCC,资质,验证,商品', '服装行业', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '', '<strong>&nbsp;一、递交资料：</strong>\r\n<ol>\r\n	<li>\r\n		<strong>&middot;⽣产主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;质量体系认证（ISO／其它）</li>\r\n			<li>\r\n				&middot;其它信息（环保／其它）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;经营主体资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;⼀般⼯商注册信息</li>\r\n			<li>\r\n				&middot;认证相关／荣誉</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;品牌资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商标受理通知书／号（TM）</li>\r\n			<li>\r\n				&middot;商标注册证／号（R）</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;商品资质</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;商品图⽚</li>\r\n			<li>\r\n				&middot;商品名称</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;检测信息</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;pH值检测</li>\r\n			<li>\r\n				&middot;致癌芳⾹染料检测</li>\r\n			<li>\r\n				&middot;甲醛值检测</li>\r\n			<li>\r\n				&middot;耐洗／褪⾊强度检测</li>\r\n			<li>\r\n				&middot;成份检测</li>\r\n		</ol>\r\n	</li>\r\n</ol>\r\n<hr />\r\n<p>\r\n	<strong>二、案例展示:</strong></p>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('31', '17', '17', '50', '⽇化产品', '{cmspath}/a/hangyeyingyong/riyongchanpin', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '⽇化产品,INCC,资质,验证,商品', '⽇化产品,INCC,资质,验证,商品', '⽇化产品', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '', '<strong>一、递交资料：</strong>\r\n<ol>\r\n	<li>\r\n		<strong>&middot;卫⽣护理／消毒⽤品</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				<strong>&middot;⽣产主体资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;⼀般⼯商注册信息</li>\r\n					<li>\r\n						&middot;⽣产许可证（QS）/号</li>\r\n					<li>\r\n						&middot;质量体系认证（ISO／GMP／FDA／其它）</li>\r\n					<li>\r\n						&middot;其它信息（⽔质／环保／其它）</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;经营主体资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;⼀般⼯商注册信息</li>\r\n					<li>\r\n						&middot;认证相关／荣誉</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;品牌资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;商标受理通知书／号（TM）</li>\r\n					<li>\r\n						&middot;商标注册证／号（R）</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;商品资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;消毒卫⽣许可批件／号</li>\r\n					<li>\r\n						&middot;商品图⽚</li>\r\n					<li>\r\n						&middot;商品名称</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;洗涤产品／清洁产品／空⽓清新产品</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				<strong>&middot;⽣产主体资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;⼀般⼯商注册信息</li>\r\n					<li>\r\n						&middot;⽣产许可证（QS）/号</li>\r\n					<li>\r\n						&middot;质量体系认证（ISO／GMP／FDA／其它）</li>\r\n					<li>\r\n						&middot;其它信息（⽔质／环保／其它）</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;经营主体资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;⼀般⼯商注册信息</li>\r\n					<li>\r\n						&middot;认证相关／荣誉</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;品牌资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;商标受理通知书／号（TM）</li>\r\n					<li>\r\n						&middot;商标注册证／号（R）</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;商品资质</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						&middot;商品图⽚</li>\r\n					<li>\r\n						&middot;商品名称</li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n		</ol>\r\n	</li>\r\n</ol>\r\n<strong>​</strong>\r\n<hr />\r\n二、案例展示：', '');
INSERT INTO `dede_arctype` VALUES ('32', '17', '17', '50', '婴⼉／孕妇⽤品／玩具', '{cmspath}/a/hangyeyingyong/yinger', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '婴⼉／孕妇⽤品／玩具,INCC,资质,验证,商品', '婴⼉／孕妇⽤品／玩具,INCC,资质,验证,商品', '婴⼉／孕妇⽤品／玩具', '0', '{cmspath}/a/hangyeyingyong/', '', '0', '0', '', '<strong>一、递交资质：</strong>\r\n<ol>\r\n	<li>\r\n		<strong>&middot;玩具</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				<strong>&middot;童⻋类／电玩具／塑胶玩具 ⾦属玩具／弹射玩具／娃娃玩具</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						<strong>&middot;⽣产主体资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;⼀般⼯商注册信息</li>\r\n							<li>\r\n								&middot;质量体系认证（ISO／其它）</li>\r\n							<li>\r\n								&middot;其它信息（环保／其它）</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;经营主体资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;⼀般⼯商注册信息</li>\r\n							<li>\r\n								&middot;认证相关／荣誉</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;品牌资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;商标受理通知书／号（TM）</li>\r\n							<li>\r\n								&middot;商标注册证／号（R）</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;商品资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;商品图⽚</li>\r\n							<li>\r\n								&middot;商品名称</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n				</ol>\r\n			</li>\r\n			<li>\r\n				<strong>&middot;其它玩具</strong>\r\n				<ol style=\"margin-left: 40px;\">\r\n					<li>\r\n						<strong>&middot;⽣产主体资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;⼀般⼯商注册信息</li>\r\n							<li>\r\n								&middot;质量体系认证（ISO／其它）</li>\r\n							<li>\r\n								&middot;其它信息（环保／其它）</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;经营主体资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;⼀般⼯商注册信息</li>\r\n							<li>\r\n								&middot;认证相关／荣誉</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;品牌资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;商标受理通知书／号（TM）</li>\r\n							<li>\r\n								商标注册证／号（R）</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;商品资质</strong>\r\n						<ol style=\"margin-left: 40px;\">\r\n							<li>\r\n								&middot;商品图⽚</li>\r\n							<li>\r\n								&middot;商品名称</li>\r\n						</ol>\r\n					</li>\r\n					<li>\r\n						<strong>&middot;检测信息（建议提供，⾮强制）</strong></li>\r\n				</ol>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n	<li>\r\n		<strong>&middot;婴⼉⽤品</strong>\r\n		<ol style=\"margin-left: 40px;\">\r\n			<li>\r\n				&middot;洗护⽤品</li>\r\n			<li>\r\n				&middot;喂养⽤品</li>\r\n			<li>\r\n				&middot;奶粉／营养辅⻝</li>\r\n			<li>\r\n				&middot;尿裤湿⼱</li>\r\n			<li>\r\n				&middot;电器</li>\r\n			<li>\r\n				&middot;家具</li>\r\n			<li>\r\n				&middot;纺织服饰</li>\r\n			<li>\r\n				&middot;防护⽤品</li>\r\n		</ol>\r\n	</li>\r\n</ol>\r\n<hr />\r\n<p>\r\n	<strong>案例展示：</strong></p>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('33', '1', '1', '1', '机构简介', '{cmspath}/a/jigougaikuang/jianjie', '1', 'index.html', '0', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '机构简介,INCC,资质', '机构简介,INCC,资质', '机构简介', '0', '{cmspath}/a/jigougaikuang/', '', '0', '0', '', '<div>\r\n	<strong>中国</strong><strong>合规</strong><strong>商品资质验证中心简介</strong><br />\r\n	中国合规商品资质验证中心简介隶属于中国保护消费者基金会，由商验（北京）认证服务有限公司承担运营和技术服务。工作内容：为促进商品经济持续健康发展，保护消费者和经营者的合法权益，建立优质商品与消费者之间信任机制与信息畅通机制，依据《网络交易管理办法》《消费者权益保护法》《产品质量法》等有关法律、法规之有关内容开展；通过 CFCPINCC的应用，维护与规范商品市场主体行为，维护市场秩序，有效减少网络欺诈、销售假冒伪劣商品、不正当竞争等行为，为商品交易主体创造公平的经营环境，为消费者营造便利、安全、放心的消费环境，进一步促进商品交易市场的健康发展。</div>\r\n<div>\r\n	<hr />\r\n	<p>\r\n		<br />\r\n		<strong>中国保护消费者基金会简介</strong><br />\r\n		中国保护消费者基金会经中国人民银行批准、民政部登记注册，于1989年11月正式成立。本会为全国性的、非营利的独立社团法人，归口管理部门为国资委。中国保护消费者基金会依据《中华人民共和国消费者权益保护法》，属于消费者组织，依据《中华人民共和国公益事业捐赠法》又是公益性社会团体。宗旨是，保护消费者合法权益、提高消费者地位、推进保护消费者事业的发展。中国保护消费者基金会接受国内外捐赠的资金和实物，用以推进保护消费者事业；积极履行《中华人民共和国消费者权益保护法》赋予消费者组织对商品和服务进行社会监督的职责，正确引导消费。 地址：北京市阜外大街乙22号</p>\r\n	<hr />\r\n	<p>\r\n		<br />\r\n		<strong>中国保护消费者基金会章程</strong></p>\r\n	<div>\r\n		<strong>第一章 总 则</strong></div>\r\n	<div>\r\n		第一条 基金会名称：中国保护消费者基金会，英文：CHINA FOUNDATION OF CONSUMER PROTECTION,为全国性的社团法人。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二条 本会以保护消费者合法权益、提高消费者地位、推进保护消费者事业的发展为宗旨，严格遵守宪法、法律、法规和国家政策，遵守社会道德风尚。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三条 本会接受国内外捐赠的资金和实物，用于保护消费者事业。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第四条 本会积极履行《中华人民共和国消费者权益保护法》赋予消费者组织对商品和服务进行社会监督的职责，不从事营利性经营活动，不以牟利为目的向社会推荐商品和服务。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第五条 本会致力于国内外热心保护消费者权益的社会团体和其它组织以及知名人士的友好合作和国际交流。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第六条 本会接受国家经济贸易委员会和中国人民银行、民政部的业务指导和监督管理。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第七条 本会设于北京西城区阜外大街 乙 22号</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第二章 基 金</strong></div>\r\n	<div>\r\n		第八条 本会的注册基金为八百万人民币。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第九条 基金来源：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 国内企业、事业单位、机关、团体的捐赠；</div>\r\n	<div>\r\n		2、 国外人士、港、澳、台同胞及海外侨胞的捐赠；</div>\r\n	<div>\r\n		3、 消费者个人捐赠；</div>\r\n	<div>\r\n		4、 基金存入金融机构的利息收入以及依法可用于购买有价证券获得的收益；</div>\r\n	<div>\r\n		5、 其它合法收入。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十条 基金的用途：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 奖励为保护消费者权益作出突出贡献的单位和个人；</div>\r\n	<div>\r\n		2、 资助和参与商品检验、消费调查和引导消费工作；</div>\r\n	<div>\r\n		3、 开展消费教育和出版消费书籍；</div>\r\n	<div>\r\n		4、 资助保护消费者问题研究和宣传活动；</div>\r\n	<div>\r\n		5、 支持受损害的消费者提起诉讼；</div>\r\n	<div>\r\n		6、 救助受损害的消费者。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十一条 为消费者服务事项：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、进行市场调查帮助消费者了解市场形势和走向，向消费者提供消费信息和商品知识；协助企业分析市场、开拓市场；</div>\r\n	<div>\r\n		2、帮助消费者学习和掌握国家有关保护消费者权益的法律、法规，提高消费者的维权意识；</div>\r\n	<div>\r\n		3、参与有关行政部门对消费品质量、服务质量的监督、检查工作；</div>\r\n	<div>\r\n		4、支持和参与各种方式的打假活动；</div>\r\n	<div>\r\n		5、向政府和有关部门反映消费者的意见、要求、批评和建议；</div>\r\n	<div>\r\n		6、 热情受理消费者投诉，为消费者排忧解难；</div>\r\n	<div>\r\n		7、 参与为消费者服务的其他事项。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第三章 组 织 机 构</strong></div>\r\n	<div>\r\n		第十二条 本会聘请热心于保护消费者事业的各界代表组成理事会。理事会是本会的最高权力机构。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十三条 理事会选举会长一人，副会长若干人。会长为本会法定代表人。理事会设常务理事会，由会长、副会长、秘书长组成。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十四条 本会聘请名誉会长、顾问若干人。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十五条 会长、副会长每届任期五年，可连选连任，但最长不超过两届。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十六条 秘书长由会长提名，理事会通过。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十七条 理事会职权：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 制定和修改基金会章程；</div>\r\n	<div>\r\n		2、 选举和罢免正副会长，通过和否定秘书长、副秘书长；</div>\r\n	<div>\r\n		3、 审定工作报告和制定工作计划；</div>\r\n	<div>\r\n		4、 审定财务报告；</div>\r\n	<div>\r\n		5、 决定其它重要事宜。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十八条 理事的权利和义务：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、参加理事会和本会举办的各项活动；</div>\r\n	<div>\r\n		2、在理事会上享有选举权和被选举权；</div>\r\n	<div>\r\n		3、对本会的工作有权提出意见、建议和批评；</div>\r\n	<div>\r\n		4、获得本会提供的国内外信息；</div>\r\n	<div>\r\n		5、享有本会编辑出版的资料、报刊和书籍；</div>\r\n	<div>\r\n		6、 积极宣传本会的宗旨，大力支持本会的各项工作；</div>\r\n	<div>\r\n		7、 积极向本会捐赠保护消费者事业需要的资金的实物。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第十九条 理事会全体会议每年召开一次，特殊情况，也可提前或推迟召开。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十条 理事会须有三分之二理事出席方能召开，其决议必须经到会三分之二以上理事表决通过方能生效。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十一条 本会设立常务理事会，在理事会闭会期间常务理事会行使理事会职权，对理事会负责。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十二条 理事会设立办事机构，由秘书长组织协调日常事物工作，副秘书长协助。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十三条 本会的会长、副会长、秘书长必须具备下列条件：</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		1、 坚持党的路线、方针、政策，政治素质好；</div>\r\n	<div>\r\n		2、 有较强的业务工作能力；</div>\r\n	<div>\r\n		3、 身体健康、能坚持日常工作；</div>\r\n	<div>\r\n		4、 最高任职年龄不超过65岁；</div>\r\n	<div>\r\n		5、 具有完全民事行为能力。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十四条 本会会长、副会长、秘书长如超过最高任职年龄的，须经理事会表决通过，报业务主管单位审查并经社团管理机关批准同意后，方可任职。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第四章 资 产 管 理</strong></div>\r\n	<div>\r\n		第二十五条 本会的基金必须用于本章程规定的业务范围和事业的发展。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十六条 本会建立严格的管理制度，配备具有专业资格的会计人员。对资产的管理使用，依照会计法的规定进行核算和管理。日常会计核算要做到及时、真实、准确。会计档案（包括帐薄、凭证、报表等）要完整保存。会计人员调动工作或离职时，必须与接管人员办清交接手续。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十七条 本会的资产管理必须执行国家规定的财务管理制度，接受中国人民银行和审计部门的稽查、检查和监督。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十八条 本会换届或更换法定代表人必须接受社团管理机关和业务主管单位的财务审计。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第二十九条 本会的资产，任何单位、个人不得侵占、私分和挪用。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十条 本会在职工作人员的工资和保险、福利待遇，参照国家事业单位的有关规定执行。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第五章 终止程序及终止后的财物处理</strong></div>\r\n	<div>\r\n		第三十一条 本会自行解散或由于分立、合并等原因需要注销的，由理事会或常务理事会提出最终动议，报业务主管部门同意。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十二条 本会经中国人民银行和社团管理机构办理注销手续后即为终止。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十三条 本会终止前，须在业务主管单位及有关机关指导下成立清算组织，清理债权债务，处理善后事宜。清算期间，不开展清算以外的活动。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十四条 本会终止后剩余财产，在业务主管单位和中国人民银行、社团管理机关的监督下上缴国库，或按照国家有关规定用于发展与本会宗旨相关的事业。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>第六章 附 则</strong></div>\r\n	<div>\r\n		第三十五条 本章程须经理事会或常务理事会讨论通过，报业务主管部门审查同意，修改时亦同。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十六条 本章程经中国人民银行核准，社团管理机关登记后生效。</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		第三十七条 本章程的解释权属本会理事会。</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('34', '23', '23', '50', '资料变更', '{cmspath}/a/yewubanli/biangeng', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '资料变更', '资料变更', '资料变更', '0', '{cmspath}/a/yewubanli', '', '0', '0', '', '', '');
INSERT INTO `dede_arctype` VALUES ('35', '0', '0', '8', '真伪验证', 'http://www.cfcpincc.com/cha/default.html', '1', 'index.html', '0', '1', '-1', '2', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '合规查询', '合规查询', '合规查询', '0', 'http://www.cfcpincc.com/cha/default.html', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('37', '0', '0', '50', '服务项目', '{cmspath}/a/fuwuxiangmu', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '服务项目', '服务项目', '服务项目', '0', '{cmspath}/a/fuwuxiangmu', '', '0', '0', '', '<p>\r\n	<strong>　　●资质验证</strong></p>\r\n<p>\r\n	　　FCPINCC利用大数据技术，通过检验、鉴定、认证、测试等技术，对种植、生产、加工、物流等商品信息自动生成了不可逆和不能更改的数据，并呈现以电子格式的溯源报告，该报告的所有商品信息将融合至云端数据库并自动生成单类商品的唯一CFCPINCC二维码标识，消费者 只需扫描产品包装上的CFCPINCC二维码标识即可通过平台的海量数据，追溯到经营主体信息、生产主体信息、质检报告、合规证书、品质证书、物流信息，以及产品生产、加工、销售等各个环节，为商品验明正身，让消费者明白消费。</p>\r\n<hr />\r\n<p>\r\n	<strong>　　●产品追溯</strong></p>\r\n<p>\r\n	　　通过网络爬虫、视频直播、云计算等技术，使得生产、加工、销售、物流整个过程传输至 CFCPINCC，并通过二维码标识供消费者查看，做到数据的可视化、实时化、同步化。实现产品来源可查、去向可追，责任可究。</p>\r\n<hr />\r\n<p>\r\n	<strong>　　●智能防伪</strong></p>\r\n<p>\r\n	　　智能防伪不需要靠肉眼进行识别，也不需要通过数码方式(短信、电话或网站验证防伪码)进行查询，而是将防伪信息通过一定的技术处理形成独特的信息矩阵图，并将该信息矩阵图附着在企业标识物上的一种技术。这种以信息矩阵方式承载的防伪信息唯有通过特有的识读设备才能够将其还 原，还原出的信息可以是文字、声音、图片甚至是视频。</p>\r\n<hr />\r\n<p>\r\n	<strong>　　●产品检测</strong></p>\r\n<p>\r\n	　　提供农药兽药残留检测、水质检测、农产品检测、化妆品检测等产品检测，数据直接链接CFCPINCC云端数据库，深入分析、对比，最后呈现给消费者精准信息。</p>\r\n<hr />\r\n<p>\r\n	<strong>　　●合规查询</strong></p>\r\n<p>\r\n	　　企业信息合规查询，以公开数据为切入点，在帮助传统企业或个人降低成本、防范化解商品主体不明确等方面提供了产品化的解决方案。高效率获取更多更全面可靠的企业经营状况信息，以确保消费过程的安全性，同时也为媒体在新闻报道中提供高效、可靠的线索查询渠道，优化信息求证方式。</p>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('38', '0', '0', '50', '合作伙伴', '{cmspath}/a/hezuohuoban', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '合作伙伴', '合作伙伴', '合作伙伴', '0', '{cmspath}/a/hezuohuoban', '', '0', '0', '', '尊敬的合作伙伴：<br />\r\n<br />\r\n您好！<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 感谢您开始关注并即将理解CFCP INCC对商业活动的积极作用和长久意义，CFCP INCC的实施，将是对商品交易活动中消费者和经营者的重要保护。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 信任，是商业活动能够长久开展的本质之一，也是互联网时代开展商品交易活动的基石。经过十数年的发展，互联网已成为消费者进行商业消费不可或缺的重要途径，建立用户信任是商品经营者最为重要的工作内容之一。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 具有共识的是，互联网提高了信息的传播效率，但随之而来的信息爆炸，使信息前所未有的失真与混乱。基于这一现实，我们需要承认，在物质大丰富的今天，消费者在海量信息中识别商品合规信息是极为艰难的，需要具备多个领域的技能和知识储备，这为消费者选择商品带来了不确定性和权益损失风险，这一问题同样为商品经营者带来了困扰。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 世事进程中，挑战往往与机遇并存。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; CFCP INCC合规商品资质验证由中国最具公信力的消费者权益保护机构&ldquo;中国保护消费者基金会&rdquo;发起，旨在通过识别CFCP INCC标识，追溯到商品的经营主体信息、生产主体信息、质检报告、合规证书、品质证书、物流信息，以及产品生产、加工、销售等各个环节，为商品验明正身，让消费者明白消费。通过网络爬虫、视频直播、云计算等技术，使得生产、加工、销售、物流整个过程传输至 CFCPINCC，并通过二维码标识供消费者查看，做到数据的可视化、实时化、同步化。实现产品来源可查、去向可追，责任可究。在开展商品交易活动中，协助商品经营者建立健康的用户信任体系，获得长久的业务增长和受益能力的提升。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 在这个前提下，我们深切希望合作伙伴的加入，与我们一道将CFCP INCC服务提供给更多的商品经营者，全面促进商品合规率的提升，建立消费者信任、安心的消费环境。我们将通过丰富的资源和工具、技能，为合作伙伴提供支持和服务，帮助合作伙伴扩展规模与收益。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 现在，就让我们共同完成一份意义非凡的事业。<br />\r\n<br />\r\n<div style=\"text-align: right;\">\r\n	CFCPINCC项目办公室<br />\r\n	2018年8月</div>\r\n', '');


--------------------------------------------------
/*
一篇文章内容分别放在两张表中 ，

一张是他的主表,该主表是通用的 dede_archives ,

另一张是附件表 dede_addonXXX.

默认包括：

dede_addonarticle 文章附件表

dede_addonimages 图片附件表

dede_addoninfos 分类信息附件表

dede_addonshop 商品附件表

dede_addonsoft 软件附件表

dede_addonspec 专题附件表

六张附件表

*/
--------------------------------------------------

DROP TABLE IF EXISTS `dede_addonarticle`;
CREATE TABLE `dede_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 分类信息附件表dede_addoninfos


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addoninfos`
-- ----------------------------
DROP TABLE IF EXISTS `dede_addoninfos`;
CREATE TABLE `dede_addoninfos` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(60) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT ' ',
  `senddate` int(11) NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nativeplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `linkman` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addoninfos
-- ----------------------------


-- 软件附件表dede_addonsoft


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addonsoft`
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonsoft`;
CREATE TABLE `dede_addonsoft` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `softtype` varchar(10) NOT NULL DEFAULT '',
  `accredit` varchar(10) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `softrank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `officialUrl` varchar(30) NOT NULL DEFAULT '',
  `officialDemo` varchar(50) NOT NULL DEFAULT '',
  `softsize` varchar(10) NOT NULL DEFAULT '',
  `softlinks` text,
  `introduce` text,
  `daccess` smallint(5) NOT NULL DEFAULT '0',
  `needmoney` smallint(5) NOT NULL DEFAULT '0',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `softMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonsoft
-- ----------------------------


 --- 商品附件表dede_addonshop

 SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addonshop`
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonshop`;
CREATE TABLE `dede_addonshop` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(250) NOT NULL DEFAULT '',
  `units` varchar(250) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  `vocation` char(20) NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonshop
-- ----------------------------

-- 图片附件表dede_addonimages

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addonimages`
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonimages`;
CREATE TABLE `dede_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagestyle` smallint(6) NOT NULL DEFAULT '1',
  `maxwidth` smallint(6) NOT NULL DEFAULT '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL DEFAULT '0',
  `col` smallint(6) NOT NULL DEFAULT '0',
  `isrm` smallint(6) NOT NULL DEFAULT '0',
  `ddmaxwidth` smallint(6) NOT NULL DEFAULT '200',
  `pagepicnum` smallint(6) NOT NULL DEFAULT '12',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonimages
-- ----------------------------



-- 专题附件表dede_addonspec


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addonspec`
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonspec`;
CREATE TABLE `dede_addonspec` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `note` text,
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonspec
-- ----------------------------
INSERT INTO `dede_addonspec` VALUES ('181', '0', '{dede:specnote imgheight=\'90\' imgwidth=\'120\'\r\n                infolen=\'160\' titlelen=\'60\' col=\'1\' idlist=\'\'\r\n                name=\'默认节点\' noteid=\'default\' isauto=\'0\' rownum=\'10\'\r\n                keywords=\'\' typeid=\'0\'}\r\n                <li><span class=\"date\">[field:typename/]</span><a href=\"[field:arcurl /]\" target=\"_blank\">[field:title /]</a></li>\r\n                {/dede:specnote}\r\n', 'default/article_spec.htm', '111.199.122.206', '');





























