/*
 Navicat Premium Data Transfer

 Source Server         : fisher
 Source Server Type    : MySQL
 Source Server Version : 100134
 Source Host           : localhost:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 100134
 File Encoding         : 65001

 Date: 03/11/2018 09:42:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 9, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 9, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 9, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (35, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 13, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 13, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 13, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can add 城市', 14, 'add_citydict');
INSERT INTO `auth_permission` VALUES (41, 'Can change 城市', 14, 'change_citydict');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 城市', 14, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (43, 'Can add 课程机构', 15, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (44, 'Can change 课程机构', 15, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 课程机构', 15, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (46, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (47, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户咨询', 17, 'add_userask');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户咨询', 17, 'change_userask');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户咨询', 17, 'delete_userask');
INSERT INTO `auth_permission` VALUES (52, 'Can add 课程评论', 18, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (53, 'Can change 课程评论', 18, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 课程评论', 18, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (55, 'Can add 用户收藏', 19, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (56, 'Can change 用户收藏', 19, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 用户收藏', 19, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (58, 'Can add 用户消息', 20, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (59, 'Can change 用户消息', 20, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 用户消息', 20, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户课程', 21, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户课程', 21, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户课程', 21, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (64, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (65, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (66, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (67, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (68, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (69, 'Can view 课程资源', 13, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (70, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (71, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程评论', 18, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (73, 'Can view 用户咨询', 17, 'view_userask');
INSERT INTO `auth_permission` VALUES (74, 'Can view 用户课程', 21, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (75, 'Can view 用户收藏', 19, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户消息', 20, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (77, 'Can view 城市', 14, 'view_citydict');
INSERT INTO `auth_permission` VALUES (78, 'Can view 课程机构', 15, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (79, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (80, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (81, 'Can view 轮播图', 9, 'view_banner');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (84, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 25, 'add_log');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 25, 'change_log');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 25, 'delete_log');
INSERT INTO `auth_permission` VALUES (96, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (97, 'Can view log entry', 25, 'view_log');
INSERT INTO `auth_permission` VALUES (98, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (99, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (100, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can view captcha store', 26, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (104, 'Can add 邮箱验证码', 27, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (105, 'Can change 邮箱验证码', 27, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (106, 'Can delete 邮箱验证码', 27, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (107, 'Can view 邮箱验证码', 27, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (108, 'Can add 轮播课程', 10, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (109, 'Can change 轮播课程', 10, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (110, 'Can delete 轮播课程', 10, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (111, 'Can view 轮播课程', 28, 'view_bannercourse');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (45, 'UJEL', 'ujel', '920ddf30018a9cffb8ff9b953c570cbcde3bcaca', '2018-09-15 17:27:34');
INSERT INTO `captcha_captchastore` VALUES (46, 'MUDZ', 'mudz', 'b58192dd77c18a9b27b582c296ec10dc9b63373b', '2018-09-17 10:07:18');
INSERT INTO `captcha_captchastore` VALUES (47, 'COIV', 'coiv', '628d54f886b8e5095e4b2eb943058f59c5b42c27', '2018-10-22 16:55:54');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_11456c5a`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE,
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, 'django入门', 'django入门', 'django入门', 'cj', 0, 0, 0, 'courses/2018/09/mysql.jpg', 9, '2018-09-13', 1, '后端开发', 'django', 1, '你可以学到django精通', 'django基础', 0);
INSERT INTO `courses_course` VALUES (2, 'django与vuejs实战项目', 'django与vuejs实战项目', 'django与vuejs实战项目', 'zj', 0, 1, 0, 'courses/2018/09/540e57300001d6d906000338-240-135.jpg', 41, '2018-09-20', 1, '后端开发', 'python', 1, '你可以学到django精通', 'django基础', 0);
INSERT INTO `courses_course` VALUES (3, 'go语言入门', 'django与vuejs实战项目', 'django与vuejs实战项目django与vuejs实战项目', 'zj', 0, 0, 0, 'courses/2018/09/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', 8, '2018-09-20', 1, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (4, 'django与vuejs实战项目2', 'django与vuejs实战项目', 'django与vuejs实战项目django与vuejs实战项目django与vuejs实战项目', 'gj', 0, 0, 0, 'courses/2018/09/python错误和异常.jpg', 5, '2018-09-20', 4, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (5, 'python入门', 'python入门', 'python入门', 'cj', 0, 0, 0, 'courses/2018/09/python文件处理.jpg', 0, '2018-09-20', 2, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (6, 'python入门2', 'python入门', 'python入门python入门python入门', 'zj', 0, 0, 0, 'courses/2018/09/python面向对象.jpg', 0, '2018-09-20', 5, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (7, 'python入门3', 'python入门', 'python入门python入门python入门python入门', 'zj', 0, 0, 0, 'courses/2018/09/python错误和异常_x5GjSkP.jpg', 0, '2018-09-20', 3, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (8, 'python入门6', 'python入门python入门', 'python入门python入门python入门python入门', 'cj', 0, 0, 0, 'courses/2018/09/57035ff200014b8a06000338-240-135_dHfj8Nq_JA2RhBe.jpg', 0, '2018-09-20', 2, '后端开发', 'python', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (9, 'flask入门', 'flask入门', 'flask入门', 'cj', 0, 0, 0, 'courses/2018/09/540e57300001d6d906000338-240-135_mvvGYHL.jpg', 3, '2018-09-26', 2, '后端开发', 'flask', 2, 'flask精通', 'flask基础', 0);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_course_id_5eba1332_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, '前端页面', 'course/resource/2018/09/media.zip', '2018-09-25', 2);
INSERT INTO `courses_courseresource` VALUES (2, '代码', 'course/resource/2018/09/curl_wget.rar', '2018-09-25', 1);

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_course_id_16bc4882_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '第一节', '2018-09-13', 1);
INSERT INTO `courses_lesson` VALUES (2, '第一章 基础知识', '2018-09-21', 8);
INSERT INTO `courses_lesson` VALUES (3, '第二章 进阶开发', '2018-09-21', 8);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_lesson_id_59f2396e_fk_courses_lesson_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '2.1 helloworld', '2018-09-21', 3, 'http://www.imooc.com/video/1430', 0);
INSERT INTO `courses_video` VALUES (2, '1.2 基本概念', '2018-09-21', 1, 'http://www.imooc.com/video/1430', 0);
INSERT INTO `courses_video` VALUES (3, '1.1 helloworld', '2018-09-21', 2, 'http://www.imooc.com/video/1430', 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (5, '2018-09-12 21:57:06', '6', 'shuaibikong', 1, '已添加。', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (28, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (27, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-09-12 07:32:48');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-09-12 07:32:53');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-09-12 07:32:55');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-09-12 07:32:55');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-09-12 07:32:56');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-09-12 07:32:56');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2018-09-12 07:32:57');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2018-09-12 10:27:00');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2018-09-12 21:45:21');
INSERT INTO `django_migrations` VALUES (15, 'operation', '0001_initial', '2018-09-12 21:45:25');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2018-09-12 21:45:27');
INSERT INTO `django_migrations` VALUES (17, 'users', '0002_banner_emainverifyrecord', '2018-09-12 21:45:27');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0001_initial', '2018-09-13 08:54:00');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0002_log', '2018-09-13 08:54:00');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0003_auto_20160715_0100', '2018-09-13 08:54:01');
INSERT INTO `django_migrations` VALUES (21, 'courses', '0002_auto_20180913_1518', '2018-09-13 15:18:35');
INSERT INTO `django_migrations` VALUES (22, 'users', '0003_auto_20180913_1635', '2018-09-13 16:35:54');
INSERT INTO `django_migrations` VALUES (23, 'captcha', '0001_initial', '2018-09-14 20:17:58');
INSERT INTO `django_migrations` VALUES (24, 'users', '0004_auto_20180915_1226', '2018-09-15 12:26:56');
INSERT INTO `django_migrations` VALUES (25, 'organization', '0002_auto_20180917_2022', '2018-09-17 20:22:40');
INSERT INTO `django_migrations` VALUES (26, 'organization', '0003_auto_20180918_1953', '2018-09-18 19:53:36');
INSERT INTO `django_migrations` VALUES (27, 'courses', '0003_course_course_org', '2018-09-19 15:36:43');
INSERT INTO `django_migrations` VALUES (28, 'organization', '0004_teacher_image', '2018-09-19 19:20:43');
INSERT INTO `django_migrations` VALUES (29, 'courses', '0004_course_category', '2018-09-20 20:45:24');
INSERT INTO `django_migrations` VALUES (30, 'courses', '0005_course_tag', '2018-09-21 08:27:27');
INSERT INTO `django_migrations` VALUES (31, 'courses', '0006_video_url', '2018-09-21 15:37:21');
INSERT INTO `django_migrations` VALUES (32, 'courses', '0007_video_learn_times', '2018-09-25 08:18:00');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0008_course_teacher', '2018-09-25 08:52:30');
INSERT INTO `django_migrations` VALUES (34, 'organization', '0005_auto_20180925_0939', '2018-09-25 09:39:14');
INSERT INTO `django_migrations` VALUES (35, 'courses', '0009_auto_20180925_0941', '2018-09-25 09:41:16');
INSERT INTO `django_migrations` VALUES (36, 'organization', '0006_auto_20180925_0941', '2018-09-25 09:41:16');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0007_teacher_age', '2018-09-26 16:02:37');
INSERT INTO `django_migrations` VALUES (38, 'organization', '0008_auto_20180926_1908', '2018-09-26 19:08:33');
INSERT INTO `django_migrations` VALUES (39, 'users', '0005_auto_20180928_2016', '2018-09-28 20:17:01');
INSERT INTO `django_migrations` VALUES (40, 'users', '0006_auto_20180928_2123', '2018-09-28 21:23:19');
INSERT INTO `django_migrations` VALUES (41, 'courses', '0010_bannercourse', '2018-10-08 08:33:12');
INSERT INTO `django_migrations` VALUES (42, 'courses', '0011_course_is_banner', '2018-10-09 13:27:30');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(0) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5yqjrxlp5czqp956rwhxbf3u98a1irib', 'YWFlNTY0NGZmYjMxMGQ2YTNlYjZmMzBlZjU4MWM1NTQ4OGZiMGQ1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJjZWVmMTE3MmFkODFkYmE3ZmRlMjUwMzk1MTllNzNiNzkzMDM2M2UiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2018-10-22 09:00:11');
INSERT INTO `django_session` VALUES ('75tbn3x6iaifbeb3wfy8f3rg55aiqhrh', 'MWU1MmQwYzQ0ZjJlNGRmZTUzMzQ2ZjJmMWNkZjM4OWFhMDVlODdmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJjZWVmMTE3MmFkODFkYmE3ZmRlMjUwMzk1MTllNzNiNzkzMDM2M2UifQ==', '2018-10-13 14:26:35');
INSERT INTO `django_session` VALUES ('bg04aaj46fdk0z26pvdcl6omvwhrmmuf', 'YTQ1ZTA0N2QyOThjZDY0MmE4ZTg0NzBkMjRlNjNmYjAxMzk0MzIxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlY2QwMDNhYWZhZjVlZjgwYmZkMmRlNmJkOTg4NGY2OWRiZmViMjIiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsImJhbm5lciJdLCIiXX0=', '2018-10-09 19:29:21');
INSERT INTO `django_session` VALUES ('ez2vb95gjwv3mkq9p1sxf5080x2874h4', 'NmNjNTNhYTljNTkwM2ExODVlZGNjNGRlMDY4MWRjZTRlYzE4N2U3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlY2QwMDNhYWZhZjVlZjgwYmZkMmRlNmJkOTg4NGY2OWRiZmViMjIiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==', '2018-10-09 11:30:07');
INSERT INTO `django_session` VALUES ('pts50aeypo5k3f5y6i7co2qgceqcbluq', 'ZThjMTZkNTZiOWVkOTMxODUzNGM2MTg5NDNmYmE3NTZkZjgyMzc0MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlY2QwMDNhYWZhZjVlZjgwYmZkMmRlNmJkOTg4NGY2OWRiZmViMjIiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdfQ==', '2018-10-03 19:24:48');
INSERT INTO `django_session` VALUES ('pvhj4nxwzue1oraezpzyytybqppqe39f', 'MWU1MmQwYzQ0ZjJlNGRmZTUzMzQ2ZjJmMWNkZjM4OWFhMDVlODdmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJjZWVmMTE3MmFkODFkYmE3ZmRlMjUwMzk1MTllNzNiNzkzMDM2M2UifQ==', '2018-11-05 17:37:53');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '666', '2018-09-25', 2, 1);
INSERT INTO `operation_coursecomments` VALUES (2, '讲的很好', '2018-09-25', 2, 1);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (10, '空比', '13101746156', 'django', '2018-09-19');
INSERT INTO `operation_userask` VALUES (11, '空比', '13101746156', 'django', '2018-09-19');
INSERT INTO `operation_userask` VALUES (12, '空比', '13101746156', 'django', '2018-09-21');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2018-09-20', 2, 23);
INSERT INTO `operation_usercourse` VALUES (2, '2018-09-25', 2, 1);
INSERT INTO `operation_usercourse` VALUES (3, '2018-09-25', 4, 1);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (19, 2, 2, '2018-09-29', 1);
INSERT INTO `operation_userfavorite` VALUES (20, 1, 3, '2018-09-29', 1);
INSERT INTO `operation_userfavorite` VALUES (21, 9, 1, '2018-09-29', 1);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 1, '欢迎注册慕学在线网', 1, '2018-09-30');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '北京市', '北京市', '2018-09-17');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '上海市', '2018-09-17');
INSERT INTO `organization_citydict` VALUES (3, '广州市', '广州市', '2018-09-17');
INSERT INTO `organization_citydict` VALUES (4, '深圳市', '深圳市', '2018-09-17');
INSERT INTO `organization_citydict` VALUES (5, '天津市', '天津市', '2018-09-17');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` date NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_course_city_id_4a842f85_fk_organization_citydict_id`(`city_id`) USING BTREE,
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n  慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc.png', '北京市', '2018-09-17', 1, 'pxjg', 0, 0);
INSERT INTO `organization_courseorg` VALUES (2, '慕课网2', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。 慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc_Gn1sRjp.png', '上海市', '2018-09-17', 2, 'gx', 0, 0);
INSERT INTO `organization_courseorg` VALUES (3, '慕课网3', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。 慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc_klgAUn5.png', '广州市', '2018-09-17', 3, 'pxjg', 0, 0);
INSERT INTO `organization_courseorg` VALUES (4, '慕课网4', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。 慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc_OO2ykYP.png', '天津市', '2018-09-17', 5, 'gr', 0, 0);
INSERT INTO `organization_courseorg` VALUES (5, '慕课网5', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。 慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc_qEaMov1.png', '深圳市', '2018-09-17', 4, 'pxjg', 0, 0);
INSERT INTO `organization_courseorg` VALUES (6, '北京大学', '北京大学', 0, 0, 'org/2018/09/bjdx.jpg', '北京市', '2018-09-17', 1, 'gx', 0, 0);
INSERT INTO `organization_courseorg` VALUES (7, '慕课网666', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。 慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。', 0, 0, 'org/2018/09/imooc_V0TJOyb.png', '深圳市', '2018-09-17', 2, 'pxjg', 0, 0);

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, 'bobby1', 5, 'xxx', 'python讲师', 'xxx', 0, 0, '2018-09-19', 1, 'teacher/2018/09/default_middile_1.png', 0);
INSERT INTO `organization_teacher` VALUES (2, '还是bobby', 5, '达内', '总监', '言简意赅', 0, 0, '2018-09-19', 1, 'teacher/2018/09/aobama_20161113225004_372.png', 18);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (11, '3qpwh1AgLv4G2uO4', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (12, '6rRMNKvcrMUNBlYc', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (13, 'IlOw9eSWv7i2Iq3M', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'XoJc690sjFgX4GxV', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'I1ZLV8copbHTuzsw', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (16, 'AD0Z5560Dfo8GJBL', '331009573@qq.com', 'register', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (17, 'wBRJszfuoGwcN6cc', '331009573@qq.com', 'forget', '2018-09-15');
INSERT INTO `users_emailverifyrecord` VALUES (25, '6mjE', '331009573@qq.com', 'update_email', '2018-09-28');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(0) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$24000$mZk29EYMNd4K$0LNwCLW60TStUkltuFOw8obLtocPMduCZWg67zIBY60=', '2018-10-22 17:40:34', 1, 'ch1996816', '', '', '331009573@qq.com', 1, 1, '2018-09-12 13:21:00', '忘却谐音', '1996-08-16', 'male', '达内', '13101746156', 'image/2018/09/psb_azk6eIh.jpg');
INSERT INTO `users_userprofile` VALUES (23, 'pbkdf2_sha256$24000$HR9IthjyDYGX$O4A6qanmKqYf8PJOtCMACtfxw+PK3XfVXb4ull12iPk=', '2018-09-15 16:03:00', 0, '3310095731@qq.com', '', '', '3310095731@qq.com', 0, 1, '2018-09-15 15:02:00', '帅比空', NULL, 'female', '达内', '', 'image/2018/09/default_middile_1.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-09-13 12:40:17', '127.0.0.1', '1', 'EmainVerifyRecord object', 'create', '已添加。', NULL, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-09-13 12:46:37', '127.0.0.1', '1', 'EmainVerifyRecord object', 'delete', '', NULL, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-09-13 12:46:47', '127.0.0.1', '2', 'EmainVerifyRecord object', 'create', '已添加。', NULL, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-09-13 15:19:13', '127.0.0.1', '1', 'Course object', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-09-13 15:23:35', '127.0.0.1', '1', 'Lesson object', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-09-17 19:51:38', '127.0.0.1', '1', '北京市', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-09-17 19:51:50', '127.0.0.1', '2', '上海市', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-09-17 19:52:01', '127.0.0.1', '3', '广州市', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-09-17 19:52:11', '127.0.0.1', '4', '深圳市', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-09-17 19:52:17', '127.0.0.1', '5', '天津市', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-09-17 20:08:07', '127.0.0.1', '1', '慕课网', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-09-17 20:11:42', '127.0.0.1', '2', '慕课网2', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-09-17 20:13:26', '127.0.0.1', '3', '慕课网3', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-09-17 20:14:36', '127.0.0.1', '4', '慕课网4', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-09-17 20:15:12', '127.0.0.1', '5', '慕课网5', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-09-17 20:15:59', '127.0.0.1', '6', '北京大学', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-09-17 20:16:33', '127.0.0.1', '7', '慕课网666', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-09-19 15:32:44', '127.0.0.1', '1', 'Teacher object', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-09-19 15:33:48', '127.0.0.1', '2', '还是bobby', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-09-19 15:37:33', '127.0.0.1', '1', 'django入门', 'change', '已修改 course_org 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-09-19 18:24:17', '127.0.0.1', '1', 'django入门', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-09-19 19:21:10', '127.0.0.1', '2', '还是bobby', 'change', '已修改 image 。', 16, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-09-19 19:21:28', '127.0.0.1', '1', 'bobby', 'change', '已修改 image 。', 16, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-09-20 15:17:27', '127.0.0.1', '2', 'django与vuejs实战项目', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-09-20 15:18:07', '127.0.0.1', '3', 'go语言入门', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-09-20 15:18:33', '127.0.0.1', '4', 'django与vuejs实战项目2', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-09-20 15:18:59', '127.0.0.1', '5', 'python入门', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-09-20 15:19:23', '127.0.0.1', '6', 'python入门2', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-09-20 15:19:52', '127.0.0.1', '7', 'python入门3', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-09-20 15:26:05', '127.0.0.1', '8', 'python入门6', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-09-20 21:33:55', '127.0.0.1', '23', '帅比空', 'change', '已修改 last_login，nickname，address 和 image 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-09-20 21:37:25', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-09-20 21:37:39', '127.0.0.1', '1', 'UserCourse object', 'change', '已修改 course 。', 21, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-09-21 08:35:35', '127.0.0.1', '2', 'django与vuejs实战项目', 'change', '已修改 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-09-21 08:35:53', '127.0.0.1', '8', 'python入门6', 'change', '已修改 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-09-21 15:33:52', '127.0.0.1', '2', 'Lesson object', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-09-21 15:34:11', '127.0.0.1', '3', 'Lesson object', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-09-21 15:38:08', '127.0.0.1', '1', 'Video object', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-09-21 15:38:55', '127.0.0.1', '1', 'Video object', 'change', '已修改 name 。', 12, 1);
INSERT INTO `xadmin_log` VALUES (40, '2018-09-21 15:39:31', '127.0.0.1', '2', 'Video object', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (41, '2018-09-21 15:40:03', '127.0.0.1', '3', 'Video object', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (42, '2018-09-25 08:26:35', '127.0.0.1', '1', 'CourseResource object', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (43, '2018-09-25 08:59:16', '127.0.0.1', '2', 'CourseResource object', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (44, '2018-09-25 09:26:30', '127.0.0.1', '1', 'django入门', 'change', '已修改 teacher 和 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (45, '2018-09-25 09:44:02', '127.0.0.1', '1', 'django入门', 'change', '已修改 youneed_know 和 teacher_tell 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (46, '2018-09-25 19:30:41', '127.0.0.1', '1', 'chx', 'change', '已修改 last_login，nickname，gender，address 和 image 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (47, '2018-09-25 19:40:51', '127.0.0.1', '2', 'django与vuejs实战项目', 'change', '已修改 teacher，youneed_know 和 teacher_tell 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (48, '2018-09-26 16:11:25', '127.0.0.1', '2', '还是bobby', 'change', '已修改 age，work_company，work_position 和 points 。', 16, 1);
INSERT INTO `xadmin_log` VALUES (49, '2018-09-26 18:49:49', '127.0.0.1', '9', 'flask入门', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (50, '2018-09-27 15:15:23', '127.0.0.1', '1', 'chx', 'change', '已修改 last_login 和 birday 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (51, '2018-09-27 15:15:40', '127.0.0.1', '1', 'chx', 'change', '已修改 mobile 。', 7, 1);
INSERT INTO `xadmin_log` VALUES (52, '2018-09-30 09:04:05', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加。', 20, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
