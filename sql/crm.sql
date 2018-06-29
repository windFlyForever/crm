/*
Navicat MySQL Data Transfer

Source Server         : mysqlLocal
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-06-24 16:52:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `manger_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'scb', '市场部', null, null, null);
INSERT INTO `department` VALUES ('2', 'jsb', '技术部', null, null, null);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `inputtime` date DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'admin', '超级管理员', '1', '119', 'xx@164.com', '1', '2018-06-11', '1', '1');
INSERT INTO `employee` VALUES ('3', 'kkk', '李霞', '1', '112', 'xx@164.com', '1', '2018-06-01', '0', '0');
INSERT INTO `employee` VALUES ('4', 'jf', '季峰', '1', '119', 'xx@164.com', '1', '2018-06-10', '0', '0');
INSERT INTO `employee` VALUES ('5', 'wind', 'ww', '1', '119', 'jif@163.com', '2', '2018-06-12', '1', '0');
INSERT INTO `employee` VALUES ('7', 'xue1', 'rr', '888888', '119', 'xx@164.com', '2', '2018-06-30', '1', '0');
INSERT INTO `employee` VALUES ('8', 'yy', '样', '888888', '112', 'jji@163.com', '2', '2018-06-29', '0', '0');
INSERT INTO `employee` VALUES ('9', 'jack', '杰克', '888888', '119', 'xx@164.com', '2', '2018-06-16', '1', '0');
INSERT INTO `employee` VALUES ('10', 'wind12', '风12', '888888', '119', 'xx@164.com', '1', '2018-06-14', '1', '0');
INSERT INTO `employee` VALUES ('11', 'wind13', '测试13', '888888', '112', 'xx@164.com', '2', '2018-06-21', '1', '0');
INSERT INTO `employee` VALUES ('12', 'wind14', '测试14', '888888', '119', 'xx@164.com', '1', '2018-06-28', '1', '0');
INSERT INTO `employee` VALUES ('15', '223', 'rr', '888888', '119', 'xx@164.com', '1', '2018-06-02', '1', '0');

-- ----------------------------
-- Table structure for emp_role
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `e_id` bigint(20) DEFAULT NULL,
  `r_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_role
-- ----------------------------
INSERT INTO `emp_role` VALUES ('9', '3');
INSERT INTO `emp_role` VALUES ('15', '3');
INSERT INTO `emp_role` VALUES ('10', '3');
INSERT INTO `emp_role` VALUES ('12', '9');
INSERT INTO `emp_role` VALUES ('7', '3');
INSERT INTO `emp_role` VALUES ('12', '3');
INSERT INTO `emp_role` VALUES ('1', '9');
INSERT INTO `emp_role` VALUES ('5', '11');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opUser_id` bigint(30) DEFAULT NULL,
  `opTime` datetime DEFAULT NULL,
  `opIp` varchar(255) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `params` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('50', '1', '2018-06-16 14:24:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('51', '1', '2018-06-16 14:24:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('52', '1', '2018-06-16 14:24:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('53', '1', '2018-06-16 14:24:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:insert', '[{\"id\":9,\"username\":\"jack\",\"realname\":\"杰克\",\"password\":\"888888\",\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2018-06-16\",\"state\":true,\"admin\":false}]');
INSERT INTO `log` VALUES ('54', '1', '2018-06-16 14:24:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('55', null, '2018-06-16 14:50:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"adminq\",\"1\"]');
INSERT INTO `log` VALUES ('56', null, '2018-06-16 14:50:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('57', '1', '2018-06-16 14:50:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('58', '1', '2018-06-16 14:50:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('59', null, '2018-06-16 14:51:28', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('60', '1', '2018-06-16 14:51:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('62', null, '2018-06-16 14:59:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('63', '1', '2018-06-16 14:59:59', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('65', '1', '2018-06-16 15:00:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('66', '1', '2018-06-16 15:02:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":4,\"name\":\"人事经理\",\"sn\":\"HRBOSS\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('67', '1', '2018-06-16 15:03:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('68', '1', '2018-06-16 15:03:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('69', '1', '2018-06-16 15:06:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('70', '1', '2018-06-16 15:06:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('71', '1', '2018-06-16 15:06:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":7,\"username\":\"xue1\",\"realname\":\"rr\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2018-06-30\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('72', '1', '2018-06-16 15:06:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('73', '1', '2018-06-16 15:06:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('74', '1', '2018-06-16 15:06:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":5,\"name\":\"测试人事1\",\"sn\":\"HR1\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('75', '1', '2018-06-16 15:08:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":6,\"name\":\"测试2\",\"sn\":\"HR2\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('76', '1', '2018-06-16 15:09:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('77', '1', '2018-06-16 15:10:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('78', '1', '2018-06-16 15:10:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('79', '1', '2018-06-16 15:10:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":7,\"name\":\"\",\"sn\":\"\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('80', '1', '2018-06-16 15:11:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":8,\"name\":\"\",\"sn\":\"\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('81', '1', '2018-06-16 15:11:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('82', '1', '2018-06-16 15:12:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":9,\"name\":\"rr\",\"sn\":\"HR\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('83', '1', '2018-06-16 15:12:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('84', '1', '2018-06-16 15:13:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":10,\"name\":\"人事5\",\"sn\":\"\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('85', '1', '2018-06-16 15:13:44', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":11,\"name\":\"rr66\",\"sn\":\"HR55\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('86', '1', '2018-06-16 15:14:56', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('87', '1', '2018-06-16 15:15:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":12,\"name\":\"ww\",\"sn\":\"e\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('88', null, '2018-06-16 15:34:34', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('89', '1', '2018-06-16 15:34:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('90', '1', '2018-06-16 15:34:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('91', '1', '2018-06-16 15:35:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('92', '1', '2018-06-16 15:35:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('93', '1', '2018-06-16 15:35:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('94', '1', '2018-06-16 15:35:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('95', '1', '2018-06-16 15:35:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('96', '1', '2018-06-16 15:35:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('97', null, '2018-06-16 15:36:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('98', '1', '2018-06-16 15:36:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('99', '1', '2018-06-16 15:36:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('100', '1', '2018-06-16 15:36:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":13,\"name\":\"hh\",\"sn\":\"jj\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('101', '1', '2018-06-16 15:36:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('102', '1', '2018-06-16 15:38:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('103', '1', '2018-06-16 15:38:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('104', '1', '2018-06-16 15:38:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('105', '1', '2018-06-16 15:38:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('106', '1', '2018-06-16 15:38:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('107', '1', '2018-06-16 15:38:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('108', '1', '2018-06-16 15:42:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('109', '1', '2018-06-16 15:42:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('110', null, '2018-06-16 16:10:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('111', '1', '2018-06-16 16:10:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('112', '1', '2018-06-16 16:10:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('113', null, '2018-06-16 16:13:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"q\"]');
INSERT INTO `log` VALUES ('114', null, '2018-06-16 16:13:12', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('115', '1', '2018-06-16 16:13:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('116', '1', '2018-06-16 16:13:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('117', '1', '2018-06-16 16:14:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('118', '1', '2018-06-16 16:14:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('119', '1', '2018-06-16 16:14:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('120', '1', '2018-06-16 16:14:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('121', '1', '2018-06-16 16:14:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":9}]');
INSERT INTO `log` VALUES ('122', '1', '2018-06-16 16:15:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":11}]');
INSERT INTO `log` VALUES ('123', null, '2018-06-16 16:42:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('124', '1', '2018-06-16 16:43:00', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('125', '1', '2018-06-16 16:43:00', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('126', '1', '2018-06-16 16:43:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":10}]');
INSERT INTO `log` VALUES ('128', null, '2018-06-16 16:44:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('129', '1', '2018-06-16 16:44:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('130', '1', '2018-06-16 16:44:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('131', '1', '2018-06-16 16:44:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":10}]');
INSERT INTO `log` VALUES ('132', '1', '2018-06-16 16:44:32', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"name\":\"人事5\",\"sn\":\"RR\",\"permissions\":[{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('133', '1', '2018-06-16 16:44:33', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('134', '1', '2018-06-16 16:44:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":10}]');
INSERT INTO `log` VALUES ('135', '1', '2018-06-16 16:44:44', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"name\":\"人事5\",\"sn\":\"RR\",\"permissions\":[{\"id\":2,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null},{\"id\":1,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('136', '1', '2018-06-16 16:44:45', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('137', '1', '2018-06-16 16:44:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('139', '1', '2018-06-16 16:45:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('141', '1', '2018-06-16 16:45:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('142', '1', '2018-06-16 16:45:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('143', '1', '2018-06-16 16:45:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('144', '1', '2018-06-16 16:46:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('145', '1', '2018-06-16 16:46:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('146', '1', '2018-06-16 16:46:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('147', '1', '2018-06-16 16:47:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('148', '1', '2018-06-16 16:47:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('149', '1', '2018-06-16 16:47:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('150', null, '2018-06-16 16:52:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('151', '1', '2018-06-16 16:52:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('152', '1', '2018-06-16 16:52:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('153', '1', '2018-06-16 16:52:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[13]');
INSERT INTO `log` VALUES ('154', '1', '2018-06-16 16:52:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('155', '1', '2018-06-16 16:59:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[11]');
INSERT INTO `log` VALUES ('156', '1', '2018-06-16 16:59:24', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('157', '1', '2018-06-16 16:59:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('158', '1', '2018-06-16 16:59:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('159', '1', '2018-06-16 16:59:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[12]');
INSERT INTO `log` VALUES ('160', '1', '2018-06-16 16:59:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('161', '1', '2018-06-16 16:59:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[10]');
INSERT INTO `log` VALUES ('162', '1', '2018-06-16 16:59:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('163', '1', '2018-06-16 17:00:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('164', '1', '2018-06-16 17:00:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('165', '1', '2018-06-16 17:00:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[6]');
INSERT INTO `log` VALUES ('166', '1', '2018-06-16 17:00:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('167', '1', '2018-06-16 17:00:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[5]');
INSERT INTO `log` VALUES ('168', '1', '2018-06-16 17:00:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('169', '1', '2018-06-16 17:00:24', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:deleteByPrimaryKey', '[4]');
INSERT INTO `log` VALUES ('170', '1', '2018-06-16 17:00:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('171', '1', '2018-06-16 17:00:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":9}]');
INSERT INTO `log` VALUES ('172', '1', '2018-06-16 17:00:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"name\":\"人事经理\",\"sn\":\"HRM\",\"permissions\":[{\"id\":3,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":1,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('173', '1', '2018-06-16 17:00:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('174', '1', '2018-06-16 17:00:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":9}]');
INSERT INTO `log` VALUES ('175', '1', '2018-06-16 17:00:58', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('176', '1', '2018-06-16 17:01:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('177', '1', '2018-06-16 17:01:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('178', null, '2018-06-19 20:39:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('179', '1', '2018-06-19 20:40:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('180', '1', '2018-06-19 20:40:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('181', '1', '2018-06-19 20:40:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('182', null, '2018-06-19 21:24:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('183', '1', '2018-06-19 21:24:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('184', '1', '2018-06-19 21:24:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('185', '1', '2018-06-19 21:24:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('186', '1', '2018-06-19 21:25:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:insert', '[{\"id\":10,\"username\":\"wind12\",\"realname\":\"风12\",\"password\":\"888888\",\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[],\"inputtime\":\"2018-06-14\",\"state\":true,\"admin\":false}]');
INSERT INTO `log` VALUES ('187', '1', '2018-06-19 21:25:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('188', '1', '2018-06-19 21:28:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:insert', '[{\"id\":11,\"username\":\"wind13\",\"realname\":\"测试13\",\"password\":\"888888\",\"tel\":\"112\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[],\"inputtime\":\"2018-06-21\",\"state\":true,\"admin\":false}]');
INSERT INTO `log` VALUES ('189', '1', '2018-06-19 21:28:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('190', null, '2018-06-19 21:31:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('191', '1', '2018-06-19 21:31:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('192', '1', '2018-06-19 21:31:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('193', '1', '2018-06-19 21:31:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('194', '1', '2018-06-19 21:31:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:insert', '[{\"id\":12,\"username\":\"wind14\",\"realname\":\"测试14\",\"password\":\"888888\",\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[],\"inputtime\":\"2018-06-28\",\"state\":true,\"admin\":false}]');
INSERT INTO `log` VALUES ('195', '1', '2018-06-19 21:31:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('196', null, '2018-06-19 21:37:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('197', '1', '2018-06-19 21:37:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('198', '1', '2018-06-19 21:37:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('199', '1', '2018-06-19 21:37:28', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('200', '1', '2018-06-19 21:38:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:insert', '[{\"id\":15,\"username\":\"223\",\"realname\":\"rr\",\"password\":\"888888\",\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null},{\"id\":9,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-02\",\"state\":true,\"admin\":false}]');
INSERT INTO `log` VALUES ('201', '1', '2018-06-19 21:38:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('202', null, '2018-06-19 22:11:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('203', '1', '2018-06-19 22:11:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('204', '1', '2018-06-19 22:11:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('205', '1', '2018-06-19 22:11:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('206', null, '2018-06-19 22:28:34', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('207', '1', '2018-06-19 22:28:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('208', '1', '2018-06-19 22:28:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('209', '1', '2018-06-19 22:28:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('210', '1', '2018-06-19 22:28:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[12]');
INSERT INTO `log` VALUES ('211', '1', '2018-06-19 22:29:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('212', '1', '2018-06-19 22:29:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('213', '1', '2018-06-19 22:29:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('214', '1', '2018-06-19 22:29:12', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":2,\"rows\":10,\"start\":10,\"keyword\":null}]');
INSERT INTO `log` VALUES ('215', '1', '2018-06-19 22:29:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[15]');
INSERT INTO `log` VALUES ('216', '1', '2018-06-19 22:29:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('217', '1', '2018-06-19 22:29:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[12]');
INSERT INTO `log` VALUES ('218', '1', '2018-06-19 22:29:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":2,\"rows\":10,\"start\":10,\"keyword\":null}]');
INSERT INTO `log` VALUES ('219', '1', '2018-06-19 22:29:28', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[15]');
INSERT INTO `log` VALUES ('220', null, '2018-06-19 22:48:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('221', '1', '2018-06-19 22:48:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('222', '1', '2018-06-19 22:48:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('223', '1', '2018-06-19 22:48:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('224', '1', '2018-06-19 22:48:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":2,\"rows\":10,\"start\":10,\"keyword\":null}]');
INSERT INTO `log` VALUES ('225', '1', '2018-06-19 22:48:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[15]');
INSERT INTO `log` VALUES ('226', '1', '2018-06-19 22:48:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":15,\"username\":\"223\",\"realname\":\"rr\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-02\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('227', '1', '2018-06-19 22:48:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":2,\"rows\":10,\"start\":10,\"keyword\":null}]');
INSERT INTO `log` VALUES ('228', '1', '2018-06-19 22:48:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('229', '1', '2018-06-19 22:48:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[9]');
INSERT INTO `log` VALUES ('230', '1', '2018-06-19 22:48:56', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"username\":\"jack\",\"realname\":\"杰克\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":9,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-16\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('231', '1', '2018-06-19 22:48:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('232', '1', '2018-06-19 22:49:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[10]');
INSERT INTO `log` VALUES ('233', '1', '2018-06-19 22:49:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"username\":\"wind12\",\"realname\":\"风12\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-14\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('234', '1', '2018-06-19 22:49:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('235', '1', '2018-06-19 22:49:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[11]');
INSERT INTO `log` VALUES ('236', '1', '2018-06-19 22:49:34', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[7]');
INSERT INTO `log` VALUES ('237', '1', '2018-06-19 22:49:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[8]');
INSERT INTO `log` VALUES ('238', '1', '2018-06-19 22:49:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('239', '1', '2018-06-19 22:49:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[12]');
INSERT INTO `log` VALUES ('240', '1', '2018-06-19 22:49:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":12,\"username\":\"wind14\",\"realname\":\"测试14\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":9,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-28\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('241', '1', '2018-06-19 22:49:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('242', '1', '2018-06-19 22:49:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[12]');
INSERT INTO `log` VALUES ('243', '1', '2018-06-19 22:49:58', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[11]');
INSERT INTO `log` VALUES ('244', '1', '2018-06-19 22:50:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[10]');
INSERT INTO `log` VALUES ('245', '1', '2018-06-19 22:50:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[9]');
INSERT INTO `log` VALUES ('246', '1', '2018-06-19 22:50:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[8]');
INSERT INTO `log` VALUES ('247', '1', '2018-06-19 22:50:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[7]');
INSERT INTO `log` VALUES ('248', '1', '2018-06-19 22:50:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":7,\"username\":\"xue1\",\"realname\":\"rr\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-30\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('249', '1', '2018-06-19 22:50:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('250', '1', '2018-06-19 22:50:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[12]');
INSERT INTO `log` VALUES ('251', '1', '2018-06-19 22:50:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":12,\"username\":\"wind14\",\"realname\":\"测试14\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":9,\"name\":null,\"sn\":null,\"permissions\":null},{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-28\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('252', '1', '2018-06-19 22:50:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('253', null, '2018-06-20 20:07:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('254', '1', '2018-06-20 20:08:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('255', '1', '2018-06-20 20:08:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('256', '1', '2018-06-20 20:08:20', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('257', null, '2018-06-20 20:11:25', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('258', '1', '2018-06-20 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('259', '1', '2018-06-20 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('260', '1', '2018-06-20 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('261', '1', '2018-06-20 20:13:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('262', '1', '2018-06-20 20:13:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('263', '1', '2018-06-20 20:15:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('264', '1', '2018-06-20 20:15:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('265', null, '2018-06-20 21:18:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('266', '1', '2018-06-20 21:18:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('267', '1', '2018-06-20 21:18:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('268', '1', '2018-06-20 21:18:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('269', '1', '2018-06-20 21:18:44', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[1]');
INSERT INTO `log` VALUES ('270', '1', '2018-06-20 21:18:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"username\":\"admin\",\"realname\":\"超级管理员\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":9,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-11\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('271', '1', '2018-06-20 21:18:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('272', '1', '2018-06-20 21:18:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('273', '1', '2018-06-20 21:18:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('274', '1', '2018-06-20 21:18:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":9}]');
INSERT INTO `log` VALUES ('275', '1', '2018-06-20 21:19:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"name\":\"人事经理\",\"sn\":\"HRM\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null},{\"id\":5,\"name\":null,\"resource\":null},{\"id\":4,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('276', '1', '2018-06-20 21:19:13', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('277', '1', '2018-06-20 21:19:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('278', '1', '2018-06-20 21:19:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('279', '1', '2018-06-20 21:19:31', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('280', '1', '2018-06-20 21:20:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('281', null, '2018-06-20 21:21:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('282', '1', '2018-06-20 21:21:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('283', '1', '2018-06-20 21:23:00', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('284', '1', '2018-06-20 21:23:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('285', '1', '2018-06-20 21:23:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('286', '1', '2018-06-20 21:23:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('287', '1', '2018-06-20 21:23:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"wind\",\"realname\":\"wind\",\"password\":null,\"tel\":\"119\",\"email\":\"jif@163.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-12\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('288', '1', '2018-06-20 21:23:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('289', '1', '2018-06-20 21:23:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"888888\"]');
INSERT INTO `log` VALUES ('290', '5', '2018-06-20 21:23:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('291', '5', '2018-06-20 21:24:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"888888\"]');
INSERT INTO `log` VALUES ('292', '5', '2018-06-20 21:24:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('293', null, '2018-06-20 21:25:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('294', '1', '2018-06-20 21:25:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('295', '1', '2018-06-20 21:25:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('296', '5', '2018-06-20 21:25:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('297', '5', '2018-06-20 21:27:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('298', '5', '2018-06-20 21:27:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('299', null, '2018-06-20 21:28:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('300', '5', '2018-06-20 21:28:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('301', '5', '2018-06-20 21:28:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('302', '5', '2018-06-20 21:28:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('303', '5', '2018-06-20 21:28:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('304', '5', '2018-06-20 21:31:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('305', '1', '2018-06-20 21:31:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('306', '1', '2018-06-20 21:31:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('307', '1', '2018-06-20 21:31:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('308', '1', '2018-06-20 21:31:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('309', '1', '2018-06-20 21:31:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('310', '1', '2018-06-20 21:31:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('311', '1', '2018-06-20 21:31:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('312', '1', '2018-06-20 21:31:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('313', '1', '2018-06-20 21:31:59', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":10,\"name\":\"ALL\",\"sn\":\"all\",\"permissions\":[{\"id\":5,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('314', '1', '2018-06-20 21:32:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('315', '1', '2018-06-20 21:32:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('316', '1', '2018-06-20 21:32:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('317', '1', '2018-06-20 21:32:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('318', '1', '2018-06-20 21:32:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('319', '1', '2018-06-20 21:32:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"wind\",\"realname\":\"ww\",\"password\":null,\"tel\":\"119\",\"email\":\"jif@163.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-12\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('320', '1', '2018-06-20 21:32:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('321', '1', '2018-06-20 21:32:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('322', '5', '2018-06-20 21:32:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('323', '5', '2018-06-20 21:32:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('324', '5', '2018-06-20 21:32:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('325', '5', '2018-06-20 21:32:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('326', '5', '2018-06-20 21:32:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateStateById', '[8]');
INSERT INTO `log` VALUES ('327', '5', '2018-06-20 21:32:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('328', '5', '2018-06-20 21:32:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('329', '5', '2018-06-20 21:33:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[9]');
INSERT INTO `log` VALUES ('330', '5', '2018-06-20 21:33:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[10]');
INSERT INTO `log` VALUES ('331', '5', '2018-06-20 21:33:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind12\",\"888888\"]');
INSERT INTO `log` VALUES ('332', '10', '2018-06-20 21:33:51', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[10]');
INSERT INTO `log` VALUES ('333', '10', '2018-06-20 21:33:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('334', '10', '2018-06-20 21:33:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('335', '10', '2018-06-20 21:34:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('336', '10', '2018-06-20 21:34:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('337', '10', '2018-06-20 21:34:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('338', '1', '2018-06-20 21:34:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('339', '1', '2018-06-20 21:34:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('340', '1', '2018-06-20 21:34:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('341', '1', '2018-06-20 21:34:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('342', '1', '2018-06-20 21:34:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('343', '1', '2018-06-20 21:34:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('344', '1', '2018-06-20 21:35:34', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:insert', '[{\"id\":11,\"name\":\"其他测试\",\"sn\":\"list\",\"permissions\":[{\"id\":4,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('345', '1', '2018-06-20 21:35:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('346', '1', '2018-06-20 21:35:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('347', '1', '2018-06-20 21:35:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('348', '1', '2018-06-20 21:36:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('349', '1', '2018-06-20 21:36:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('350', '1', '2018-06-20 21:36:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('351', '1', '2018-06-20 21:36:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('352', '1', '2018-06-20 21:36:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"wind\",\"realname\":\"ww\",\"password\":null,\"tel\":\"119\",\"email\":\"jif@163.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":11,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-12\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('353', '1', '2018-06-20 21:36:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('354', '1', '2018-06-20 21:36:24', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('355', '5', '2018-06-20 21:36:24', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('356', '5', '2018-06-20 21:36:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('357', '5', '2018-06-20 21:36:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('358', '5', '2018-06-20 21:36:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('359', '5', '2018-06-20 21:36:32', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[1]');
INSERT INTO `log` VALUES ('360', '5', '2018-06-20 21:37:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('361', '1', '2018-06-20 21:37:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('362', '1', '2018-06-20 21:37:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('363', '1', '2018-06-20 21:37:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('364', '1', '2018-06-20 21:37:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('365', '1', '2018-06-20 21:37:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('366', '1', '2018-06-20 21:37:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"wind\",\"realname\":\"ww\",\"password\":null,\"tel\":\"119\",\"email\":\"jif@163.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-12\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('367', '1', '2018-06-20 21:37:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('368', null, '2018-06-20 22:02:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('369', '1', '2018-06-20 22:02:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('370', '1', '2018-06-20 22:02:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('371', '1', '2018-06-20 22:02:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('372', '1', '2018-06-20 22:02:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('373', '1', '2018-06-20 22:02:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('374', '1', '2018-06-20 22:02:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('375', '1', '2018-06-20 22:03:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":11}]');
INSERT INTO `log` VALUES ('376', '1', '2018-06-20 22:03:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":11,\"name\":\"list员\",\"sn\":\"list\",\"permissions\":[{\"id\":4,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('377', '1', '2018-06-20 22:03:31', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('378', '1', '2018-06-20 22:03:36', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('379', '1', '2018-06-20 22:03:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('380', '1', '2018-06-20 22:03:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('381', '1', '2018-06-20 22:03:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('382', '1', '2018-06-20 22:03:46', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('383', '1', '2018-06-20 22:03:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"wind\",\"realname\":\"ww\",\"password\":null,\"tel\":\"119\",\"email\":\"jif@163.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":11,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-12\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('384', '1', '2018-06-20 22:03:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('385', '1', '2018-06-20 22:03:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('386', '1', '2018-06-20 22:04:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('387', '5', '2018-06-20 22:04:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('388', '5', '2018-06-20 22:04:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('389', '5', '2018-06-20 22:04:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('390', '5', '2018-06-20 22:04:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('391', '5', '2018-06-20 22:04:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('392', '5', '2018-06-20 22:04:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[9]');
INSERT INTO `log` VALUES ('393', null, '2018-06-20 22:06:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('394', '5', '2018-06-20 22:06:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('395', '5', '2018-06-20 22:06:47', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('396', '5', '2018-06-20 22:06:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('397', '5', '2018-06-20 22:06:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('398', '5', '2018-06-20 22:06:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('399', '5', '2018-06-20 22:07:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('400', '5', '2018-06-20 22:07:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('401', '5', '2018-06-20 22:07:04', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('402', null, '2018-06-20 22:57:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('403', '5', '2018-06-20 22:57:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('404', '5', '2018-06-20 22:57:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('405', '5', '2018-06-20 22:57:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('406', '5', '2018-06-20 22:57:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('407', '5', '2018-06-20 22:57:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('408', '5', '2018-06-20 22:57:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('409', '1', '2018-06-20 22:57:35', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('410', '1', '2018-06-20 22:57:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('411', '1', '2018-06-20 22:57:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('412', '1', '2018-06-20 22:57:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('413', '1', '2018-06-20 22:57:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('414', '1', '2018-06-20 22:57:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('415', '1', '2018-06-20 22:57:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('416', '1', '2018-06-20 22:57:58', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[9]');
INSERT INTO `log` VALUES ('417', '1', '2018-06-20 22:58:05', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"username\":\"jack\",\"realname\":\"杰克\",\"password\":null,\"tel\":\"119\",\"email\":\"xx@164.com\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manger\":null,\"parent\":null,\"state\":null},\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":null}],\"inputtime\":\"2018-06-16\",\"state\":null,\"admin\":null}]');
INSERT INTO `log` VALUES ('418', '1', '2018-06-20 22:58:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('419', '1', '2018-06-20 22:58:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"jack\",\"1\"]');
INSERT INTO `log` VALUES ('420', '1', '2018-06-20 22:58:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"jack\",\"888888\"]');
INSERT INTO `log` VALUES ('421', '9', '2018-06-20 22:58:21', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[9]');
INSERT INTO `log` VALUES ('422', '9', '2018-06-20 22:58:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('423', '9', '2018-06-20 22:58:23', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('424', '9', '2018-06-20 22:58:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('425', '1', '2018-06-20 22:58:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('426', '1', '2018-06-20 22:58:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('427', '1', '2018-06-20 22:58:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('428', '1', '2018-06-20 22:58:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('429', '1', '2018-06-20 22:58:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('430', '1', '2018-06-20 22:58:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('431', '1', '2018-06-20 22:58:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":3}]');
INSERT INTO `log` VALUES ('432', '1', '2018-06-20 22:59:07', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"人事\",\"sn\":\"HR\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":4,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('433', '1', '2018-06-20 22:59:08', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('434', '1', '2018-06-20 22:59:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"jack\",\"888888\"]');
INSERT INTO `log` VALUES ('435', '9', '2018-06-20 22:59:16', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[9]');
INSERT INTO `log` VALUES ('436', '9', '2018-06-20 22:59:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('437', '9', '2018-06-20 22:59:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('438', '9', '2018-06-20 22:59:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('439', null, '2018-06-21 07:45:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('440', '1', '2018-06-21 07:45:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('441', null, '2018-06-21 07:47:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('442', '1', '2018-06-21 07:47:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('443', '1', '2018-06-21 07:47:19', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('444', '1', '2018-06-21 07:47:27', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('445', null, '2018-06-21 07:49:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('446', '1', '2018-06-21 07:49:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('447', '1', '2018-06-21 07:49:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('448', null, '2018-06-21 19:34:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('449', '1', '2018-06-21 19:34:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('450', '1', '2018-06-21 19:34:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('451', '1', '2018-06-21 19:34:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('452', '1', '2018-06-21 19:34:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('453', '1', '2018-06-21 19:34:55', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":10}]');
INSERT INTO `log` VALUES ('454', '1', '2018-06-21 19:36:12', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('455', '1', '2018-06-21 19:36:12', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('456', '1', '2018-06-21 19:36:12', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('457', '1', '2018-06-21 19:36:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('458', '1', '2018-06-21 19:36:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('459', '1', '2018-06-21 19:36:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('460', '1', '2018-06-21 19:36:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('461', '1', '2018-06-21 19:36:26', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('462', '1', '2018-06-21 19:36:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":9}]');
INSERT INTO `log` VALUES ('463', '1', '2018-06-21 19:36:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"name\":\"人事经理\",\"sn\":\"HRM\",\"permissions\":[{\"id\":1,\"name\":null,\"resource\":null},{\"id\":2,\"name\":null,\"resource\":null},{\"id\":3,\"name\":null,\"resource\":null},{\"id\":4,\"name\":null,\"resource\":null},{\"id\":5,\"name\":null,\"resource\":null},{\"id\":6,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('464', '1', '2018-06-21 19:36:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('465', '1', '2018-06-21 19:36:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('466', '1', '2018-06-21 19:37:22', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryRolesByEid', '[5]');
INSERT INTO `log` VALUES ('467', '1', '2018-06-21 19:37:29', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":11}]');
INSERT INTO `log` VALUES ('468', '1', '2018-06-21 19:37:32', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":11,\"name\":\"list员\",\"sn\":\"list\",\"permissions\":[{\"id\":4,\"name\":null,\"resource\":null},{\"id\":6,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('469', '1', '2018-06-21 19:37:33', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('470', '1', '2018-06-21 19:37:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('471', '5', '2018-06-21 19:37:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('472', '5', '2018-06-21 19:37:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('473', '5', '2018-06-21 19:37:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('474', '5', '2018-06-21 19:37:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('475', '5', '2018-06-21 19:37:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('476', '5', '2018-06-21 19:37:52', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('477', '5', '2018-06-21 19:38:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('478', '5', '2018-06-21 19:38:01', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('479', '5', '2018-06-21 19:38:06', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":null,\"rows\":null,\"start\":0,\"rid\":11}]');
INSERT INTO `log` VALUES ('480', '5', '2018-06-21 19:38:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:updateByPrimaryKey', '[{\"id\":11,\"name\":\"list员\",\"sn\":\"list\",\"permissions\":[{\"id\":4,\"name\":null,\"resource\":null}]}]');
INSERT INTO `log` VALUES ('481', '5', '2018-06-21 19:38:15', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('482', '5', '2018-06-21 19:38:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('483', '5', '2018-06-21 19:38:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('484', '5', '2018-06-21 19:38:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('485', '5', '2018-06-21 19:38:32', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('486', '5', '2018-06-21 19:38:32', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('487', '5', '2018-06-21 19:40:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('488', '1', '2018-06-21 19:40:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('489', '1', '2018-06-21 19:40:18', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('490', '1', '2018-06-21 19:40:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('491', '1', '2018-06-21 19:40:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('492', '1', '2018-06-21 19:40:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('493', null, '2018-06-21 19:41:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('494', '1', '2018-06-21 19:41:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('495', '1', '2018-06-21 19:41:30', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('496', null, '2018-06-21 19:43:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('497', '1', '2018-06-21 19:43:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('498', '1', '2018-06-21 19:43:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('499', null, '2018-06-21 19:47:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('500', '1', '2018-06-21 19:47:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('501', '1', '2018-06-21 19:47:37', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('502', '1', '2018-06-21 19:47:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('503', '5', '2018-06-21 19:47:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('504', '5', '2018-06-21 19:47:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('505', '5', '2018-06-21 19:47:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('506', '5', '2018-06-21 19:47:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('507', '5', '2018-06-21 19:47:57', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('508', '5', '2018-06-21 19:49:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('509', '1', '2018-06-21 19:49:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('510', '1', '2018-06-21 19:49:14', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('511', '1', '2018-06-21 19:51:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('512', '1', '2018-06-21 19:51:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('513', '1', '2018-06-21 19:51:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('514', '1', '2018-06-21 19:52:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('515', '1', '2018-06-21 19:52:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('516', '1', '2018-06-21 19:52:11', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('517', null, '2018-06-21 19:54:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('518', '1', '2018-06-21 19:54:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('519', '1', '2018-06-21 19:54:09', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('520', null, '2018-06-21 20:06:31', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('521', '1', '2018-06-21 20:06:31', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('522', '1', '2018-06-21 20:06:31', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('523', '1', '2018-06-21 20:06:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.DepartmentServiceImpl:queryDepForEmp', '[]');
INSERT INTO `log` VALUES ('524', '1', '2018-06-21 20:06:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('525', '1', '2018-06-21 20:06:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"keyword\":null}]');
INSERT INTO `log` VALUES ('526', '1', '2018-06-21 20:06:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('527', '5', '2018-06-21 20:06:48', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('528', '5', '2018-06-21 20:06:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('529', '5', '2018-06-21 20:06:49', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('530', null, '2018-06-21 20:07:02', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('531', '1', '2018-06-21 20:07:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('532', '1', '2018-06-21 20:07:03', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('533', '1', '2018-06-21 20:07:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('534', '5', '2018-06-21 20:07:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('535', '5', '2018-06-21 20:07:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('536', null, '2018-06-21 20:07:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('537', '5', '2018-06-21 20:07:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('538', '5', '2018-06-21 20:07:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('539', '5', '2018-06-21 20:07:54', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('540', null, '2018-06-21 20:12:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('541', '5', '2018-06-21 20:12:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('542', '5', '2018-06-21 20:12:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('543', '5', '2018-06-21 20:12:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('544', '5', '2018-06-21 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('545', '1', '2018-06-21 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('546', '1', '2018-06-21 20:13:10', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('547', null, '2018-06-21 20:14:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('548', '5', '2018-06-21 20:14:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('549', '5', '2018-06-21 20:14:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('550', '5', '2018-06-21 20:14:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('551', '5', '2018-06-21 20:14:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('552', '1', '2018-06-21 20:14:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('553', '1', '2018-06-21 20:14:53', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('554', null, '2018-06-21 20:29:40', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('555', '5', '2018-06-21 20:29:41', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('556', '5', '2018-06-21 20:29:42', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('557', '5', '2018-06-21 20:29:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('558', '5', '2018-06-21 20:29:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('559', '5', '2018-06-21 20:29:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('560', '5', '2018-06-21 20:29:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('561', null, '2018-06-21 20:43:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"wind\",\"1\"]');
INSERT INTO `log` VALUES ('562', '5', '2018-06-21 20:43:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[5]');
INSERT INTO `log` VALUES ('563', '5', '2018-06-21 20:43:38', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('564', '5', '2018-06-21 20:43:39', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:selectAll', '[]');
INSERT INTO `log` VALUES ('565', '5', '2018-06-21 20:43:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.RoleServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0}]');
INSERT INTO `log` VALUES ('566', '5', '2018-06-21 20:43:43', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryForPage', '[{\"page\":1,\"rows\":10,\"start\":0,\"rid\":null}]');
INSERT INTO `log` VALUES ('567', '5', '2018-06-21 20:43:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('568', '1', '2018-06-21 20:43:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('569', '1', '2018-06-21 20:43:50', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');
INSERT INTO `log` VALUES ('570', '1', '2018-06-21 20:44:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.EmployeeServiceImpl:getEmployeeForLogin', '[\"admin\",\"1\"]');
INSERT INTO `log` VALUES ('571', '1', '2018-06-21 20:44:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.PermissionServiceImpl:queryPermissionByEid', '[1]');
INSERT INTO `log` VALUES ('572', '1', '2018-06-21 20:44:17', '0:0:0:0:0:0:0:1', 'com._520it.crm.service.impl.MenuServiceImpl:queryForRoot', '[]');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) DEFAULT NULL,
  `iconCls` varchar(100) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `attributes` varchar(500) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `function` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '系统管理', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('2', '员工管理', null, null, null, '{\"url\":\"/employee\"}', '1', 'com._520it.crm.web.controller.EmployeeController:index');
INSERT INTO `menu` VALUES ('3', '角色管理', null, null, null, '{\"url\":\"/role\"}', '1', null);
INSERT INTO `menu` VALUES ('4', '营销管理', null, null, null, null, null, '');
INSERT INTO `menu` VALUES ('5', '客户信息管理', null, null, null, null, '4', '');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `resource` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '员工更新', 'com._520it.crm.web.controller.EmployeeController:editEmp');
INSERT INTO `permission` VALUES ('2', '员工新增', 'com._520it.crm.web.controller.EmployeeController:saveEmp');
INSERT INTO `permission` VALUES ('3', '员工删除', 'com._520it.crm.web.controller.EmployeeController:delEmp');
INSERT INTO `permission` VALUES ('4', '员工列表', 'com._520it.crm.web.controller.EmployeeController:list');
INSERT INTO `permission` VALUES ('5', '员工所有', 'com._520it.crm.web.controller.EmployeeController:ALL');
INSERT INTO `permission` VALUES ('6', '员工页面', 'com._520it.crm.web.controller.EmployeeController:index');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3', '人事', 'HR');
INSERT INTO `role` VALUES ('9', '人事经理', 'HRM');
INSERT INTO `role` VALUES ('10', 'ALL', 'all');
INSERT INTO `role` VALUES ('11', 'list员', 'list');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `r_id` bigint(20) DEFAULT NULL,
  `p_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('9', '5');
INSERT INTO `role_permission` VALUES ('3', '2');
INSERT INTO `role_permission` VALUES ('9', '4');
INSERT INTO `role_permission` VALUES ('9', '3');
INSERT INTO `role_permission` VALUES ('10', '5');
INSERT INTO `role_permission` VALUES ('9', '2');
INSERT INTO `role_permission` VALUES ('9', '6');
INSERT INTO `role_permission` VALUES ('3', '4');
INSERT INTO `role_permission` VALUES ('9', '1');
INSERT INTO `role_permission` VALUES ('11', '4');
INSERT INTO `role_permission` VALUES ('3', '1');
