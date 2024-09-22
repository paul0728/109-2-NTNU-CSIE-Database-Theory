-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2021-06-26 04:53:39
-- 伺服器版本： 5.7.31
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ntnucourse`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add review', 7, 'add_review'),
(26, 'Can change review', 7, 'change_review'),
(27, 'Can delete review', 7, 'delete_review'),
(28, 'Can view review', 7, 'view_review'),
(29, 'Can add instructor', 8, 'add_instructor'),
(30, 'Can change instructor', 8, 'change_instructor'),
(31, 'Can delete instructor', 8, 'delete_instructor'),
(32, 'Can view instructor', 8, 'view_instructor'),
(33, 'Can add course', 9, 'add_course'),
(34, 'Can change course', 9, 'change_course'),
(35, 'Can delete course', 9, 'delete_course'),
(36, 'Can view course', 9, 'view_course');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$216000$TMFu0qT5i79X$B1JUW0PDVD/imNqb4s8vViSqk+OotROOGutCjbWKz3U=', '2021-06-22 13:03:25.697298', 0, 'Leo', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:03:25.448932'),
(4, 'pbkdf2_sha256$216000$cKq6Kp9vNvBB$AA6g3RUFKc7bTv2dJJwo7uPdZVP/8wv4oSKimreBPJg=', '2021-06-22 13:07:19.418852', 0, 'Kevin', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:19.178623'),
(5, 'pbkdf2_sha256$216000$wWCo53rFbWMR$D9Jvk4ZfH+CmD6uJJw+mNgG5/glC1pCe9u7T7UEe334=', '2021-06-22 13:07:43.498330', 0, 'Lucy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:43.255585'),
(6, 'pbkdf2_sha256$216000$mpcfpYWSL0l0$nrLlOr18lpuXJbHqoGycs/xL8ugpHRcGPOQcx+Oj52s=', '2021-06-22 13:08:28.665128', 0, 'Andy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:08:28.418792'),
(7, 'pbkdf2_sha256$216000$RBlRLFbHWQc1$Lkg/pMFpEiLZEg4CO4TlHAFXA18CoVLGWBKt7VKbt34=', '2021-06-22 13:09:01.862818', 0, 'Peggy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:01.614825'),
(8, 'pbkdf2_sha256$216000$1KDLHE7oB5DC$QsILyqFwjqEWgdwRn97FP5uZSyPUMgnF8DeWJRafwY8=', '2021-06-22 13:09:24.645268', 0, 'Maxx', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:24.399649'),
(9, 'pbkdf2_sha256$216000$loMX1XZgw9B5$SkmXMHaP1VxBfJlaLi4lfBzDCQ1WtqDl6G82yuAmrtE=', '2021-06-22 13:09:45.920502', 0, 'Amy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:45.681669'),
(10, 'pbkdf2_sha256$216000$vhZpTwGYdevJ$WAOR5rHjLOpboKj30lfJH5uRoaB5/iYPHyWxr0ORAQM=', '2021-06-25 19:16:23.012330', 1, 'paul', '', '', '', 1, 1, '2021-06-24 14:52:28.054157');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `C_ID` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `credits` int(11) DEFAULT NULL,
  `attributes` varchar(50) DEFAULT NULL,
  `I_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `course_I_ID_9840282f_fk_instructor_I_ID` (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`C_ID`, `title`, `credits`, `attributes`, `I_ID`) VALUES
('0000', '區域性網路', 3, '選修', '0006'),
('0001', '資料探勘', 3, '選修', '0004'),
('0002', '電腦輔助VLSI設計', 3, '選修', '0003'),
('0003', '資訊安全', 3, '選修', '0005'),
('0004', '程式設計(一)', 3, '必修', '0005'),
('0005', '程式設計(二)', 3, '必修', '0007'),
('0006', '基礎電子學實驗', 1, '選修', '0002'),
('0007', '資料結構', 3, '必修', '0004'),
('0008', '機率論', 3, '必修', '0001'),
('0009', '線性代數', 3, '必修', '0006'),
('0010', '軟體工程', 3, '選修', '0005'),
('0011', '程式設計(一)', 3, '必修', '0007');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-24 13:35:36.345248', '30', '30', 1, '[{\"added\": {}}]', 7, 10),
(2, '2021-06-24 13:35:54.615929', '30', '30', 3, '', 7, 10),
(3, '2021-06-24 13:37:48.626164', '0031', '0031', 1, '[{\"added\": {}}]', 7, 10),
(4, '2021-06-24 13:37:52.712712', '0031', '0031', 2, '[]', 7, 10),
(5, '2021-06-24 13:38:08.245033', '0031', '0031', 3, '', 7, 10),
(6, '2021-06-24 15:20:33.581523', '30', '30', 1, '[{\"added\": {}}]', 7, 10),
(7, '2021-06-24 16:43:17.366815', '31', '31', 1, '[{\"added\": {}}]', 7, 10),
(8, '2021-06-24 16:43:28.001153', '31', '31', 2, '[]', 7, 10),
(9, '2021-06-26 04:32:02.463722', '37', 'paul-bad', 1, '[{\"added\": {}}]', 7, 10),
(10, '2021-06-26 04:34:47.005030', '38', 'ZACK-普通', 1, '[{\"added\": {}}]', 7, 10);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'forum', 'course'),
(8, 'forum', 'instructor'),
(7, 'forum', 'review'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-23 08:24:16.470520'),
(2, 'auth', '0001_initial', '2021-06-23 08:24:16.649684'),
(3, 'admin', '0001_initial', '2021-06-23 08:24:17.034894'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-23 08:24:17.123214'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-23 08:24:17.134186'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-23 08:24:17.224209'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-23 08:24:17.276068'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-23 08:24:17.340492'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-23 08:24:17.352460'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-23 08:24:17.402998'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-23 08:24:17.405994'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-23 08:24:17.415967'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-23 08:24:17.466827'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-23 08:24:17.519935'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-23 08:24:17.568812'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-23 08:24:17.576832'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-23 08:24:17.627721'),
(18, 'forum', '0001_initial', '2021-06-23 08:24:17.669473'),
(19, 'sessions', '0001_initial', '2021-06-23 08:24:17.740078'),
(20, 'forum', '0002_remove_review_name', '2021-06-24 13:24:29.314221'),
(21, 'forum', '0003_auto_20210624_2109', '2021-06-24 13:24:29.320238'),
(22, 'forum', '0004_auto_20210624_2319', '2021-06-24 15:19:17.778449'),
(23, 'forum', '0005_auto_20210625_0039', '2021-06-24 16:42:37.801459'),
(24, 'forum', '0006_auto_20210625_0040', '2021-06-24 16:42:37.803382'),
(25, 'forum', '0007_auto_20210625_0047', '2021-06-24 17:43:36.304885'),
(26, 'forum', '0008_auto_20210625_0142', '2021-06-24 17:43:36.310662'),
(27, 'forum', '0009_auto_20210625_0146', '2021-06-24 17:46:52.393437'),
(28, 'forum', '0010_auto_20210625_2134', '2021-06-25 13:34:56.143318'),
(29, 'forum', '0011_auto_20210625_2152', '2021-06-25 13:52:07.929614'),
(30, 'forum', '0012_auto_20210625_2329', '2021-06-25 15:29:10.084149'),
(31, 'forum', '0013_auto_20210626_0134', '2021-06-25 17:34:06.191940'),
(32, 'forum', '0002_auto_20210626_0214', '2021-06-25 18:14:47.957598');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rvs7tebg8nizb0bebfzowys1wxtkkx7m', '.eJxVjDsOwjAQBe_iGln-7sqU9JzBWq9tHECOFCcV4u4QKQW0b2beS0Ta1ha3UZY4ZXEWWonT75iIH6XvJN-p32bJc1-XKcldkQcd8jrn8rwc7t9Bo9G-NWoTKAfkZEqqwbsKFqytqMAjkweqTmeoWQGxRaWJ0bAtbJwrEEC8PwcIOAg:1lwnx0:by27fbFMN6y0jRZgwEsWpmCGzF5L8vG_vbwN8Ejg2yQ', '2021-07-09 15:41:02.459097');

-- --------------------------------------------------------

--
-- 資料表結構 `instructor`
--

DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `I_ID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `office` varchar(50) DEFAULT NULL,
  `score` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `instructor`
--

INSERT INTO `instructor` (`I_ID`, `name`, `email`, `office`, `score`) VALUES
('0000', '方瓊瑤', 'violet@csie.ntnu.edu.tw', '電腦視覺與影像解析實驗室', '0.00'),
('0001', '陳柏琳', 'berlin@csie.ntnu.edu.tw', '語音暨機器智能實驗室', '3.00'),
('0002', '王超', 'cw@ntnu.edu.tw', '網宇實體系統實驗室', '2.00'),
('0003', '黃文吉', 'whwang@ntnu.edu.tw', '多媒體通訊、系統晶片實驗室', '2.80'),
('0004', '柯佳伶', 'jlkoh@csie.ntnu.edu.tw', '資料探勘實驗室', '5.00'),
('0005', '紀博文', 'neokent@gapps.ntnu.edu.tw', '資訊安全研究室', '2.67'),
('0006', '蔡榮宗', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室', '2.00'),
('0007', '王弘倫', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室', '2.67');

-- --------------------------------------------------------

--
-- 資料表結構 `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `R_ID` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) NOT NULL,
  `comment_` varchar(1000) NOT NULL,
  `time_` datetime DEFAULT NULL,
  `C_ID` varchar(50) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`R_ID`),
  KEY `review_C_ID_db125f00_fk_course_C_ID` (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `review`
--

INSERT INTO `review` (`R_ID`, `rate`, `comment_`, `time_`, `C_ID`, `username`) VALUES
(1, 3, 'soso', '2021-06-24 23:16:55', '0005', 'Leo'),
(2, 4, 'good', '2021-06-24 23:16:55', '0005', 'Kevin'),
(3, 5, 'Very good', '2021-06-24 23:17:16', '0001', 'Lucy'),
(4, 1, 'very bad', '2021-06-24 23:17:16', '0000', 'Andy'),
(5, 3, 'soso', '2021-06-24 23:17:16', '0003', 'Peggy'),
(6, 5, 'Very good', '2021-06-24 23:17:16', '0001', 'Maxx'),
(7, 4, 'good', '2021-06-24 23:17:16', '0004', 'Amy'),
(8, 4, 'good', '2021-06-24 23:17:16', '0004', 'Leo'),
(9, 3, 'soso', '2021-06-24 23:17:16', '0008', 'Peggy'),
(10, 2, 'ok', '2021-06-24 23:17:16', '0009', 'Amy'),
(11, 2, 'ok', '2021-06-24 23:17:16', '0010', 'Kevin'),
(12, 2, 'ok', '2021-06-24 23:17:16', '0010', 'Maxx'),
(13, 2, 'ok', '2021-06-24 23:17:16', '0006', 'Andy'),
(14, 2, 'ok', '2021-06-24 23:17:16', '0006', 'Lucy'),
(15, 3, 'soso', '2021-06-24 23:17:16', '0002', 'Leo'),
(16, 3, 'soso', '2021-06-24 23:17:16', '0002', 'Kevin'),
(17, 5, 'Very good', '2021-06-24 23:17:16', '0007', 'Lucy'),
(18, 5, 'Very good', '2021-06-24 23:17:16', '0007', 'Andy'),
(19, 2, 'ok', '2021-06-24 23:17:16', '0008', 'Peggy'),
(20, 3, 'soso', '2021-06-24 23:17:16', '0008', 'Amy'),
(21, 5, 'Very good', '2021-06-24 23:17:16', '0002', 'Leo'),
(22, 1, 'very bad', '2021-06-24 23:17:16', '0003', 'Kevin'),
(23, 2, 'ok', '2021-06-24 23:17:16', '0000', 'Lucy'),
(24, 4, 'good', '2021-06-24 23:17:16', '0000', 'Andy'),
(25, 3, 'soso', '2021-06-24 23:17:16', '0002', 'Peggy'),
(26, 3, 'soso', '2021-06-24 23:17:17', '0011', 'Peggy'),
(27, 3, 'soso', '2021-06-24 23:17:17', '0011', 'Leo'),
(28, 2, 'ok', '2021-06-24 23:17:17', '0011', 'Amy'),
(30, 5, '普通', NULL, '0001', '10'),
(31, 7, '普通', NULL, '0001', '9'),
(32, 1, '普通', '2021-06-25 19:00:37', '0000', 'paul'),
(33, 4, '普通', '2021-06-25 19:16:38', '0008', 'paul'),
(34, 3, '爛', '2021-06-25 19:16:49', '0008', '王'),
(35, 3, '爛', '2021-06-25 19:17:05', '0008', '王'),
(36, 3, '爛', '2021-06-25 19:17:06', '0008', '王'),
(37, 1, 'bad', '2021-06-26 04:32:02', '0005', 'paul'),
(38, 0, '普通', '2021-06-26 04:34:47', '0002', 'ZACK');

--
-- 觸發器 `review`
--
DROP TRIGGER IF EXISTS `delete_score`;
DELIMITER $$
CREATE TRIGGER `delete_score` AFTER DELETE ON `review` FOR EACH ROW BEGIN


UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=OLD.C_ID);

END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_score`;
DELIMITER $$
CREATE TRIGGER `insert_score` AFTER INSERT ON `review` FOR EACH ROW BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=NEW.C_ID);


END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `update_score`;
DELIMITER $$
CREATE TRIGGER `update_score` AFTER UPDATE ON `review` FOR EACH ROW BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=OLD.C_ID);


END
$$
DELIMITER ;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_I_ID_9840282f_fk_instructor_I_ID` FOREIGN KEY (`I_ID`) REFERENCES `instructor` (`I_ID`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_C_ID_db125f00_fk_course_C_ID` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
