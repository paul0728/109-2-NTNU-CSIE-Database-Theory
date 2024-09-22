SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
(28, 'Can view review', 7, 'view_review');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$216000$TMFu0qT5i79X$B1JUW0PDVD/imNqb4s8vViSqk+OotROOGutCjbWKz3U=', '2021-06-22 13:26:52.440629', 0, 'Leo', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:03:25.448932'),
(4, 'pbkdf2_sha256$216000$cKq6Kp9vNvBB$AA6g3RUFKc7bTv2dJJwo7uPdZVP/8wv4oSKimreBPJg=', '2021-06-22 13:07:19.418852', 0, 'Kevin', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:19.178623'),
(5, 'pbkdf2_sha256$216000$wWCo53rFbWMR$D9Jvk4ZfH+CmD6uJJw+mNgG5/glC1pCe9u7T7UEe334=', '2021-06-22 13:07:43.498330', 0, 'Lucy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:43.255585'),
(6, 'pbkdf2_sha256$216000$mpcfpYWSL0l0$nrLlOr18lpuXJbHqoGycs/xL8ugpHRcGPOQcx+Oj52s=', '2021-06-22 13:08:28.665128', 0, 'Andy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:08:28.418792'),
(7, 'pbkdf2_sha256$216000$RBlRLFbHWQc1$Lkg/pMFpEiLZEg4CO4TlHAFXA18CoVLGWBKt7VKbt34=', '2021-06-22 13:09:01.862818', 0, 'Peggy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:01.614825'),
(8, 'pbkdf2_sha256$216000$1KDLHE7oB5DC$QsILyqFwjqEWgdwRn97FP5uZSyPUMgnF8DeWJRafwY8=', '2021-06-22 13:09:24.645268', 0, 'Maxx', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:24.399649'),
(9, 'pbkdf2_sha256$216000$loMX1XZgw9B5$SkmXMHaP1VxBfJlaLi4lfBzDCQ1WtqDl6G82yuAmrtE=', '2021-06-22 13:09:45.920502', 0, 'Amy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:45.681669');


DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `C_ID` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `credits` int(11) DEFAULT NULL,
  `attributes` varchar(50) DEFAULT NULL,
  `I_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `I_ID` (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'forum', 'review'),
(6, 'sessions', 'session');


DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-22 08:04:29.139921'),
(2, 'auth', '0001_initial', '2021-06-22 08:04:29.304522'),
(3, 'admin', '0001_initial', '2021-06-22 08:04:29.702663'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-22 08:04:29.792638'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-22 08:04:29.800619'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-22 08:04:29.893828'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-22 08:04:29.945008'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-22 08:04:29.992478'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-22 08:04:30.001493'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-22 08:04:30.039979'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-22 08:04:30.042168'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-22 08:04:30.051147'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-22 08:04:30.098996'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-22 08:04:30.147578'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-22 08:04:30.193261'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-22 08:04:30.200205'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-22 08:04:30.251432'),
(18, 'forum', '0001_initial', '2021-06-22 08:04:30.288107'),
(19, 'sessions', '0001_initial', '2021-06-22 08:04:30.356005');


DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8dn1zmkigqgcjm21ckmw1m7dgjxylpyc', '.eJxVjDEOwjAMRe-SGUWtwbHLyM4ZqiR2SAElUtNOiLtDpQ6w_vfef5nRr0se16bzOIk5GzCH3y34-NCyAbn7cqs21rLMU7CbYnfa7LWKPi-7-3eQfcvfGgkHijF2HDwhoFM6srBLXpGEoAdR5BQVZEjCQIkYoA8Q5OQ6ZfP-AOOPN_Y:1lvc9s:cDtfzPZ4zZlDp9K06kjrmffTUZPy1su0_bxKDpqI6fo', '2021-07-06 08:53:24.722726'),
('kgmgrtxb0c9321m4uzv6k49by0sotint', '.eJxVjDEOwjAMRe-SGUWtwbHLyM4ZqiR2SAElUtNOiLtDpQ6w_vfef5nRr0se16bzOIk5GzCH3y34-NCyAbn7cqs21rLMU7CbYnfa7LWKPi-7-3eQfcvfGgkHijF2HDwhoFM6srBLXpGEoAdR5BQVZEjCQIkYoA8Q5OQ6ZfP-AOOPN_Y:1lvcYg:Bh2X3PDQZSO_tegP6YhusmYyqr3-5KQxb-Bu14Sa38c', '2021-07-06 09:19:02.683972'),
('oey4to6x7rb58uf2e1ig1f3u6raujn5g', '.eJxVjDEOwjAMRe-SGUWtwbHLyM4ZqiR2SAElUtNOiLtDpQ6w_vfef5nRr0se16bzOIk5GzCH3y34-NCyAbn7cqs21rLMU7CbYnfa7LWKPi-7-3eQfcvfGgkHijF2HDwhoFM6srBLXpGEoAdR5BQVZEjCQIkYoA8Q5OQ6ZfP-AOOPN_Y:1lvcN0:Ji2EwwPC1nLZdlUCw6uvfcLQYANm8sPkLUsbi3WAZtA', '2021-07-06 09:06:58.283052'),
('pdtlu1atfwbki3hxjo92thiy72qj25ib', '.eJxVjMsOwiAUBf-FtSFtLxRw6d5vIPcBUjWQ9LEy_rs26UK3Z2bOS0Xc1hK3Jc1xEnVWvTr9boT8SHUHcsd6a5pbXeeJ9K7ogy762iQ9L4f7d1BwKd_ajOQFyYwZDDHIGJI1SA6QwQ595kCUYGCfqcvOInRdEPHJuhw8hF69PwImOGs:1lvbec:7rSGYsZk6lvNtj9-QzfEeIe3vBFUNed_mBMtuvx4oNc', '2021-07-06 08:21:06.484057');


DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `I_ID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `office` varchar(50) DEFAULT NULL,
  `score` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `R_ID` varchar(50) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment_` varchar(1000) NOT NULL,
  `time_` datetime DEFAULT NULL,
  `C_ID` varchar(50) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`R_ID`),
  KEY `C_ID` (`C_ID`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);


ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);


ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);


ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);


ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`I_ID`) REFERENCES `instructor` (`I_ID`);


ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);


ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `course` (`C_ID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`username`) REFERENCES `auth_user` (`username`);
COMMIT;

