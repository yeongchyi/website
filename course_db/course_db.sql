-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Jan 20, 2016, 03:25 AM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `course_db`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `all_course`
-- 

CREATE TABLE `all_course` (
  `course_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `course_name` varchar(40) collate utf8_unicode_ci NOT NULL,
  `dep_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `required` varchar(40) collate utf8_unicode_ci NOT NULL,
  `credit` smallint(6) NOT NULL,
  PRIMARY KEY  (`course_ID`),
  KEY `dep_ID` (`dep_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `all_course`
-- 

INSERT INTO `all_course` VALUES ('90B252', '資料庫管理系統', '11', '必', 4);
INSERT INTO `all_course` VALUES ('90B253', '資料結構', '11', '必', 4);
INSERT INTO `all_course` VALUES ('90A902', '電腦動畫設計', '10', '選', 2);
INSERT INTO `all_course` VALUES ('90A900', '數位內容概論', '10', '選', 2);
INSERT INTO `all_course` VALUES ('909257', '互動式網頁設計', '09', '必', 3);
INSERT INTO `all_course` VALUES ('90B908', '資料庫程式設計', '11', '必', 3);
INSERT INTO `all_course` VALUES ('909915', '網路程式設計(一)', '09', '必', 3);
INSERT INTO `all_course` VALUES ('409A13', '企業資訊網?', '09', '選', 3);
INSERT INTO `all_course` VALUES ('40BQ31', 'Java程式設計(一)', '11', '必', 3);
INSERT INTO `all_course` VALUES ('40BQ32', 'Java程式設計(二)', '11', '選', 3);
INSERT INTO `all_course` VALUES ('409C05', '物件導向程式設計', '09', '選', 3);
INSERT INTO `all_course` VALUES ('40BC06', '伺服器系統管理', '11', '必', 3);
INSERT INTO `all_course` VALUES ('40BQ40', '資訊安全', '11', '必', 2);
INSERT INTO `all_course` VALUES ('40BQ41', '網路管理技術', '11', '選', 3);

-- --------------------------------------------------------

-- 
-- 資料表格式： `classes`
-- 

CREATE TABLE `classes` (
  `class_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `class_name` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Dep_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `year` varchar(40) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`class_ID`),
  KEY `Dep_ID` (`Dep_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `classes`
-- 

INSERT INTO `classes` VALUES ('902113', '進四資管二丙', '11', '02');
INSERT INTO `classes` VALUES ('903111', '進四資管一甲', '11', '03');
INSERT INTO `classes` VALUES ('903112', '進四資管一乙', '11', '03');
INSERT INTO `classes` VALUES ('902111', '進四資管二甲', '11', '02');
INSERT INTO `classes` VALUES ('902112', '進四資管二乙', '11', '02');
INSERT INTO `classes` VALUES ('400111', '日四資管三甲', '11', '02');
INSERT INTO `classes` VALUES ('400112', '日四資管四乙', '11', '00');
INSERT INTO `classes` VALUES ('400101', '日四企管四甲', '10', '00');
INSERT INTO `classes` VALUES ('400102', '日四企管四乙', '10', '00');
INSERT INTO `classes` VALUES ('401081', '日四電子四甲', '08', '01');
INSERT INTO `classes` VALUES ('401091', '日四資工三甲', '09', '01');
INSERT INTO `classes` VALUES ('403091', '四資工一乙', '09', '03');

-- --------------------------------------------------------

-- 
-- 資料表格式： `department`
-- 

CREATE TABLE `department` (
  `Dep_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Dep_name` varchar(40) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`Dep_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `department`
-- 

INSERT INTO `department` VALUES ('11', '資訊管理系');
INSERT INTO `department` VALUES ('10', '企業管理系');
INSERT INTO `department` VALUES ('09', '資訊工程系');
INSERT INTO `department` VALUES ('08', '電子工程系');
INSERT INTO `department` VALUES ('12', '金融管理系');
INSERT INTO `department` VALUES ('13', '國際企業系');
INSERT INTO `department` VALUES ('07', '電機工程系');
INSERT INTO `department` VALUES ('06', '機械工程系');
INSERT INTO `department` VALUES ('05', '建築與室內設計系');
INSERT INTO `department` VALUES ('14', '休閒與運動系');
INSERT INTO `department` VALUES ('15', ' 餐飲管理系');

-- --------------------------------------------------------

-- 
-- 資料表格式： `open_course`
-- 

CREATE TABLE `open_course` (
  `open_course_ID` int(40) NOT NULL auto_increment,
  `course_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `class_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `teacher_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`open_course_ID`),
  KEY `course_ID` (`course_ID`,`class_ID`,`teacher_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

-- 
-- 列出以下資料庫的數據： `open_course`
-- 

INSERT INTO `open_course` VALUES (1, '90B252', '902113', '0108');
INSERT INTO `open_course` VALUES (3, '90B252', '902112', '0116');
INSERT INTO `open_course` VALUES (4, '90B253', '902111', '0109');
INSERT INTO `open_course` VALUES (5, '90A902', '902112', '0114');
INSERT INTO `open_course` VALUES (6, '90A900', '902113', '0107');
INSERT INTO `open_course` VALUES (7, '909257', '902111', '0111');
INSERT INTO `open_course` VALUES (8, '90B908', '902112', '0115');
INSERT INTO `open_course` VALUES (9, '909915', '902112', '0110');
INSERT INTO `open_course` VALUES (10, '409A13', '401081', '0113');
INSERT INTO `open_course` VALUES (11, '40BQ31', '400112', '0108');
INSERT INTO `open_course` VALUES (12, '40BQ31', '400111', '0109');
INSERT INTO `open_course` VALUES (13, '40BQ32', '400102', '0113');
INSERT INTO `open_course` VALUES (14, '40BQ32', '400101', '0116');
INSERT INTO `open_course` VALUES (15, '409C05', '401081', '0114');
INSERT INTO `open_course` VALUES (16, '40BC06', '401081', '0115');
INSERT INTO `open_course` VALUES (17, '40BQ40', '401091', '0107');
INSERT INTO `open_course` VALUES (18, '40BQ41', '401091', '0108');
INSERT INTO `open_course` VALUES (19, '409A13', '401091', '0116');
INSERT INTO `open_course` VALUES (20, '40BC06', '401081', '0109');
INSERT INTO `open_course` VALUES (23, '409A13', '400112', '0109');

-- --------------------------------------------------------

-- 
-- 資料表格式： `select_course`
-- 

CREATE TABLE `select_course` (
  `student_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `open_course_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `normal` smallint(6) default NULL,
  `midTerm` smallint(6) default NULL,
  `finalTerm` smallint(6) default NULL,
  `final` smallint(6) default NULL,
  PRIMARY KEY  (`student_ID`,`open_course_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `select_course`
-- 

INSERT INTO `select_course` VALUES ('90209218', '1', 0, 0, 100, 90);
INSERT INTO `select_course` VALUES ('90209218', '4', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('90211233', '1', 0, 0, 99, 90);
INSERT INTO `select_course` VALUES ('90211233', '4', 0, 0, 0, 91);
INSERT INTO `select_course` VALUES ('90211302', '1', 0, 0, 98, 86);
INSERT INTO `select_course` VALUES ('90211302', '6', 0, 0, 0, 87);
INSERT INTO `select_course` VALUES ('90211302', '4', 0, 0, 0, 88);
INSERT INTO `select_course` VALUES ('90211303', '1', 0, 0, 0, 90);
INSERT INTO `select_course` VALUES ('90211303', '6', 0, 0, 0, 77);
INSERT INTO `select_course` VALUES ('90211303', '7', 0, 0, 0, 78);
INSERT INTO `select_course` VALUES ('90211304', '1', 0, 0, 0, 100);
INSERT INTO `select_course` VALUES ('90211304', '7', 0, 0, 0, 79);
INSERT INTO `select_course` VALUES ('90211305', '1', 0, 0, 0, 78);
INSERT INTO `select_course` VALUES ('90211305', '8', 0, 0, 0, 79);
INSERT INTO `select_course` VALUES ('90211305', '9', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('90211306', '1', 0, 0, 0, 70);
INSERT INTO `select_course` VALUES ('90211306', '4', 0, 0, 0, 71);
INSERT INTO `select_course` VALUES ('90211306', '5', 0, 0, 0, 72);
INSERT INTO `select_course` VALUES ('90211307', '1', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('90211307', '6', 0, 0, 0, 81);
INSERT INTO `select_course` VALUES ('90211307', '7', 0, 0, 0, 82);
INSERT INTO `select_course` VALUES ('90211308', '1', 0, 0, 0, 81);
INSERT INTO `select_course` VALUES ('90211308', '7', 0, 0, 0, 82);
INSERT INTO `select_course` VALUES ('90211308', '8', 0, 0, 0, 83);
INSERT INTO `select_course` VALUES ('90211309', '1', 0, 0, 0, 82);
INSERT INTO `select_course` VALUES ('90211309', '6', 0, 0, 0, 83);
INSERT INTO `select_course` VALUES ('90211309', '9', 0, 0, 0, 84);
INSERT INTO `select_course` VALUES ('90211310', '1', 0, 0, 0, 83);
INSERT INTO `select_course` VALUES ('90211310', '18', 0, 0, 0, 84);
INSERT INTO `select_course` VALUES ('90211310', '5', 0, 0, 0, 85);
INSERT INTO `select_course` VALUES ('90211311', '12', 0, 0, 0, 84);
INSERT INTO `select_course` VALUES ('90211312', '14', 0, 0, 0, 85);
INSERT INTO `select_course` VALUES ('90211313', '7', 0, 0, 0, 86);
INSERT INTO `select_course` VALUES ('90211314', '7', 0, 0, 0, 87);
INSERT INTO `select_course` VALUES ('90211315', '7', 0, 0, 0, 58);
INSERT INTO `select_course` VALUES ('90211316', '7', 0, 0, 0, 59);
INSERT INTO `select_course` VALUES ('90211318', '8', 0, 0, 0, 60);
INSERT INTO `select_course` VALUES ('90211319', '7', 0, 0, 0, 61);
INSERT INTO `select_course` VALUES ('90211320', '5', 0, 0, 0, 62);
INSERT INTO `select_course` VALUES ('90211321', '11', 0, 0, 0, 63);
INSERT INTO `select_course` VALUES ('90211322', '12', 0, 0, 0, 64);
INSERT INTO `select_course` VALUES ('90211323', '16', 0, 0, 0, 65);
INSERT INTO `select_course` VALUES ('90211324', '15', 0, 0, 0, 66);
INSERT INTO `select_course` VALUES ('90211325', '20', 0, 0, 0, 67);
INSERT INTO `select_course` VALUES ('90211326', '23', 0, 0, 0, 68);
INSERT INTO `select_course` VALUES ('90211327', '20', 0, 0, 0, 69);
INSERT INTO `select_course` VALUES ('90211329', '19', 0, 0, 0, 70);
INSERT INTO `select_course` VALUES ('90211330', '18', 0, 0, 0, 71);
INSERT INTO `select_course` VALUES ('90211331', '16', 0, 0, 0, 72);
INSERT INTO `select_course` VALUES ('90211332', '17', 0, 0, 0, 73);
INSERT INTO `select_course` VALUES ('90211333', '14', 0, 0, 0, 74);
INSERT INTO `select_course` VALUES ('90211335', '11', 0, 0, 0, 75);
INSERT INTO `select_course` VALUES ('90211336', '11', 0, 0, 0, 76);
INSERT INTO `select_course` VALUES ('90211338', '13', 0, 0, 0, 77);
INSERT INTO `select_course` VALUES ('90211339', '8', 0, 0, 0, 78);
INSERT INTO `select_course` VALUES ('90211340', '4', 0, 0, 0, 79);
INSERT INTO `select_course` VALUES ('90211341', '3', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('40011101', '4', 0, 0, 0, 81);
INSERT INTO `select_course` VALUES ('40011101', '10', 0, 0, 0, 82);
INSERT INTO `select_course` VALUES ('40011101', '9', 0, 0, 0, 83);
INSERT INTO `select_course` VALUES ('40011103', '11', 0, 0, 0, 84);
INSERT INTO `select_course` VALUES ('40011103', '12', 0, 0, 0, 85);
INSERT INTO `select_course` VALUES ('40011103', '10', 0, 0, 0, 86);
INSERT INTO `select_course` VALUES ('40011104', '12', 0, 0, 0, 87);
INSERT INTO `select_course` VALUES ('40011104', '15', 0, 0, 0, 53);
INSERT INTO `select_course` VALUES ('40011104', '6', 0, 0, 0, 54);
INSERT INTO `select_course` VALUES ('40011105', '13', 0, 0, 0, 55);
INSERT INTO `select_course` VALUES ('40011105', '14', 0, 0, 0, 56);
INSERT INTO `select_course` VALUES ('40011105', '15', 0, 0, 0, 57);
INSERT INTO `select_course` VALUES ('40011107', '16', 0, 0, 0, 58);
INSERT INTO `select_course` VALUES ('40011107', '17', 0, 0, 0, 60);
INSERT INTO `select_course` VALUES ('40011107', '18', 0, 0, 0, 61);
INSERT INTO `select_course` VALUES ('40011109', '19', 0, 0, 0, 62);
INSERT INTO `select_course` VALUES ('40011109', '20', 0, 0, 0, 63);
INSERT INTO `select_course` VALUES ('40011109', '23', 0, 0, 0, 64);
INSERT INTO `select_course` VALUES ('40011110', '23', 0, 0, 0, 65);
INSERT INTO `select_course` VALUES ('40011110', '17', 0, 0, 0, 66);
INSERT INTO `select_course` VALUES ('40011110', '16', 0, 0, 0, 74);
INSERT INTO `select_course` VALUES ('40011111', '17', 0, 0, 0, 75);
INSERT INTO `select_course` VALUES ('40011111', '1', 0, 0, 0, 76);
INSERT INTO `select_course` VALUES ('40011111', '2', 0, 0, 0, 77);
INSERT INTO `select_course` VALUES ('40011112', '11', 0, 0, 0, 78);
INSERT INTO `select_course` VALUES ('40011112', '12', 0, 0, 0, 79);
INSERT INTO `select_course` VALUES ('40011112', '18', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('40011113', '11', 0, 0, 0, 90);
INSERT INTO `select_course` VALUES ('40011113', '3', 0, 0, 0, 91);
INSERT INTO `select_course` VALUES ('40011115', '4', 0, 0, 0, 92);
INSERT INTO `select_course` VALUES ('40011114', '5', 0, 0, 0, 93);
INSERT INTO `select_course` VALUES ('40011114', '14', 0, 0, 0, 94);
INSERT INTO `select_course` VALUES ('40011114', '15', 0, 0, 0, 95);
INSERT INTO `select_course` VALUES ('40011115', '11', 0, 0, 0, 82);
INSERT INTO `select_course` VALUES ('40011115', '13', 0, 0, 0, 83);
INSERT INTO `select_course` VALUES ('40011116', '12', 0, 0, 0, 84);
INSERT INTO `select_course` VALUES ('40011116', '18', 0, 0, 0, 85);
INSERT INTO `select_course` VALUES ('40011120', '13', 0, 0, 0, 86);
INSERT INTO `select_course` VALUES ('40011120', '17', 0, 0, 0, 52);
INSERT INTO `select_course` VALUES ('40011123', '14', 0, 0, 0, 53);
INSERT INTO `select_course` VALUES ('40011123', '13', 0, 0, 0, 54);
INSERT INTO `select_course` VALUES ('40011124', '15', 0, 0, 0, 55);
INSERT INTO `select_course` VALUES ('40011124', '10', 0, 0, 0, 80);
INSERT INTO `select_course` VALUES ('40011128', '16', 0, 0, 0, 81);
INSERT INTO `select_course` VALUES ('40011160', '11', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('40011161', '11', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('40011112', '8', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('40011105', '4', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('90211329', '6', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('90211335', '12', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('90211322', '9', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('90211305', '14', NULL, NULL, NULL, NULL);
INSERT INTO `select_course` VALUES ('90211311', '8', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- 資料表格式： `students`
-- 

CREATE TABLE `students` (
  `student_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `name` varchar(40) collate utf8_unicode_ci NOT NULL,
  `class_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `sex` varchar(40) collate utf8_unicode_ci NOT NULL,
  `tel` varchar(40) collate utf8_unicode_ci default NULL,
  `mailbox` varchar(40) collate utf8_unicode_ci default NULL,
  `address` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`student_ID`),
  KEY `class_ID` (`class_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `students`
-- 

INSERT INTO `students` VALUES ('90211233', '陳邦峰', '902113', '男', '073453211', 'stu3@csu.edu.tw', '高雄市三民區澄清路 102 號');
INSERT INTO `students` VALUES ('90209218', '劉奕佑', '902113', '男', '077310606', 'stu2@csu.edu.tw', '高雄市鳥松區澄清路 101 號');
INSERT INTO `students` VALUES ('90211302', '蔡明真', '902113', '男', '077310607', 'stu4@csu.edu.tw', '台南市三民區澄清路 103 號');
INSERT INTO `students` VALUES ('90211303', '李雯玲', '902113', '女', '077310609', 'stu5@csu.edu.tw', '高雄市三民區澄清路 104 號');
INSERT INTO `students` VALUES ('90211304', '劉雅玲', '902113', '女', '077310609', 'stu6@csu.edu.tw', '高雄市三民區澄清路 105 號');
INSERT INTO `students` VALUES ('90211305', '吳真儀', '902113', '女', '077310608', 'stu7@csu.edu.tw', '高雄市三民區澄清路 106 號');
INSERT INTO `students` VALUES ('90211306', '劉政維', '902113', '男', '077315643', 'stu8@csu.edu.tw', '高雄市三民區澄清路 107 號');
INSERT INTO `students` VALUES ('90211307', '張祥宇', '902113', '男', '077310709', 'stu9@csu.edu.tw', '高雄市三民區澄清路 108 號');
INSERT INTO `students` VALUES ('90211308', '張敦揮', '902113', '男', '077345670', 'stu10@csu.edu.tw', '高雄市三民區澄清路 109 號');
INSERT INTO `students` VALUES ('90211309', '劉郁萱', '902113', '女', '077310607', 'stu11@csu.edu.tw', '高雄市三民區澄清路 110 號');
INSERT INTO `students` VALUES ('90211310', '陳姿美', '902113', '女', '073219800', 'stu12@csu.edu.tw', '高雄市三民區澄清路 111 號');
INSERT INTO `students` VALUES ('90211311', '陳佳家', '902113', '女', '077310605', 'stu13@csu.edu.tw', '高雄市三民區澄清路 112 號');
INSERT INTO `students` VALUES ('90211312', '謝銘勇', '902113', '男', '077310608', 'stu14@csu.edu.tw', '高雄市三民區澄清路 113 號');
INSERT INTO `students` VALUES ('90211313', '黃冠仁', '902113', '男', '077310809', 'stu15@csu.edu.tw', '高雄市三民區澄清路 114 號');
INSERT INTO `students` VALUES ('90211314', '許芮名', '902113', '男', '077310978', 'stu16@csu.edu.tw', '高雄市三民區澄清路 115 號');
INSERT INTO `students` VALUES ('90211315', '蔡昌業', '902113', '男', '04567890', 'stu17@csu.edu.tw', '高雄市三民區澄清路 116 號');
INSERT INTO `students` VALUES ('90211316', '郭人真', '902113', '男', '023456789', 'stu18@csu.edu.tw', '高雄市三民區澄清路 117 號');
INSERT INTO `students` VALUES ('90211318', '唐仁傑', '902113', '男', '08909121', 'stu19@csu.edu.tw', '高雄市三民區澄清路 118 號');
INSERT INTO `students` VALUES ('90211319', '陳婉玲', '902113', '女', '084532199', 'stu20@csu.edu.tw', '高雄市三民區澄清路 119 號');
INSERT INTO `students` VALUES ('90211320', '劉啟原', '902113', '男', '042318961', 'stu21@csu.edu.tw', '高雄市三民區澄清路 120 號');
INSERT INTO `students` VALUES ('90211321', '劉嘉祥', '902113', '男', '062134561', 'stu22@csu.edu.tw', '高雄市三民區澄清路 121 號');
INSERT INTO `students` VALUES ('90211322', '王琪珍', '902113', '女', '083456712', 'stu23@csu.edu.tw', '高雄市三民區澄清路 122 號');
INSERT INTO `students` VALUES ('90211323', '張雅惠', '902113', '女', '032134562', 'stu24@csu.edu.tw', '高雄市三民區澄清路 123 號');
INSERT INTO `students` VALUES ('90211324', '吳廷豪', '902113', '男', '053217861', 'stu25@csu.edu.tw', '高雄市三民區澄清路 124 號');
INSERT INTO `students` VALUES ('90211325', '朱雅斐', '902113', '女', '032145678', 'stu26@csu.edu.tw', '高雄市三民區澄清路 125 號');
INSERT INTO `students` VALUES ('90211326', '劉嘉寶', '902113', '男', '056789012', 'stu27@csu.edu.tw', '高雄市三民區澄清路 126 號');
INSERT INTO `students` VALUES ('90211327', '劉文霖', '902113', '女', '0221345678', 'stu28@csu.edu.tw', '高雄市三民區澄清路 127 號');
INSERT INTO `students` VALUES ('90211329', '李宗孝', '902113', '男', '077310603', 'stu29@csu.edu.tw', '台南市安南區正光路 210 號');
INSERT INTO `students` VALUES ('90211330', '張禎穎', '902113', '男', '077310504', 'stu30@csu.edu.tw', '高雄市三民區澄清路 129 號');
INSERT INTO `students` VALUES ('90211331', '汪勝宏', '902113', '男', '08321456', 'stu31@csu.edu.tw', '高雄市三民區澄清路 130 號');
INSERT INTO `students` VALUES ('90211332', '張旭凱', '902113', '男', '06321452', 'tty30@gmail.com', '高雄市三民區澄清路500');
INSERT INTO `students` VALUES ('90211333', '劉信文', '902113', '男', '073217890', 'stu33@csu.edu.tw', '高雄市三民區澄清路 132 號');
INSERT INTO `students` VALUES ('90211335', '吳孟中', '902113', '男', '08431789', 'stu35@csu.edu.tw', '高雄市三民區澄清路 134 號');
INSERT INTO `students` VALUES ('90211336', '施欣新', '902113', '女', '068921345', 'stu36@csu.edu.tw', '高雄市三民區澄清路 135 號');
INSERT INTO `students` VALUES ('90211338', ' 張育儒', '902113', '男', '063414521', 'stu37@csu.edu.tw', '高雄市三民區澄清路 136 號');
INSERT INTO `students` VALUES ('90211339', '林伯緯', '902113', '男', '082134567', 'stu38@csu.edu.tw', '高雄市三民區澄清路 137 號');
INSERT INTO `students` VALUES ('90211340', '陳政名', '902113', '男', '083214567', 'stu39@csu.edu.tw', '高雄市三民區澄清路 138 號');
INSERT INTO `students` VALUES ('90211341', '林政諲', '902113', '男', '062318901', 'stu40@csu.edu.tw', '高雄市三民區澄清路 139 號');
INSERT INTO `students` VALUES ('40011101', '劉蘭曛', '400111', '女', '077310606', 'stu48@csu.edu.tw', '高雄市三民區澄清路 147 號');
INSERT INTO `students` VALUES ('40011103', '林文筆', '400111', '男', '077310607', 'stu49@csu.edu.tw', '高雄市三民區澄清路 148 號');
INSERT INTO `students` VALUES ('40011104', '李奕丞', '400111', '男', '077310608', 'stu50@csu.edu.tw', '高雄市三民區澄清路 149 號');
INSERT INTO `students` VALUES ('40011105', '張卉祈', '400111', '女', '077310609', 'stu51@csu.edu.tw', '高雄市三民區澄清路 150 號');
INSERT INTO `students` VALUES ('40011107', '劉育晏', '400111', '男', '077310610', 'stu52@csu.edu.tw', '高雄市三民區澄清路 151 號');
INSERT INTO `students` VALUES ('40011109', '吳思賢', '400111', '男', '077310611', 'stu53@csu.edu.tw', '高雄市鳳山區澄清路 152 號');
INSERT INTO `students` VALUES ('40011110', '張峻暐', '400111', '男', '077310612', 'stu54@csu.edu.tw', '高雄市鳳山區澄清路 153 號');
INSERT INTO `students` VALUES ('40011111', '王兟', '400111', '男', '077310613', 'stu55@csu.edu.tw', '台中市三民區澄清路 154 號');
INSERT INTO `students` VALUES ('40011112', '吳躍騰', '400111', '男', '077310614', 'stu56@csu.edu.tw', '高雄市三民區澄清路 155 號');
INSERT INTO `students` VALUES ('40011113', '林亭樺', '400111', '女', '077310615', 'stu57@csu.edu.tw', '新北市三民區澄清路 156 號');
INSERT INTO `students` VALUES ('40011114', '張曦文', '400111', '男', '077310616', 'stu58@csu.edu.tw', '高雄市三民區澄清路 157 號');
INSERT INTO `students` VALUES ('40011115', '林旭庭', '400111', '男', '077310617', 'stu59@csu.edu.tw', '新北市三民區澄清路 158 號');
INSERT INTO `students` VALUES ('40011116', '汪乙寶', '400111', '男', '077310618', 'stu60@csu.edu.tw', '台中市三民區澄清路 159 號');
INSERT INTO `students` VALUES ('40011120', '劉儀璟', '400111', '男', '077310619', 'stu61@csu.edu.tw', '台南市三民區澄清路 160 號');
INSERT INTO `students` VALUES ('40011124', '林名桂', '400111', '男', '077310621', 'stu63@csu.edu.tw', '高雄市三民區澄清路 162 號');
INSERT INTO `students` VALUES ('40011128', '林兆佳', '400111', '男', '077310622', 'stu64@csu.edu.tw', '高雄市鳥松區澄清路 163 號');

-- --------------------------------------------------------

-- 
-- 資料表格式： `teachers`
-- 

CREATE TABLE `teachers` (
  `teacher_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `name` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Dep_ID` varchar(40) collate utf8_unicode_ci NOT NULL,
  `sex` varchar(40) collate utf8_unicode_ci NOT NULL,
  `title` varchar(40) collate utf8_unicode_ci NOT NULL,
  `tel` varchar(40) collate utf8_unicode_ci default NULL,
  `mailbox` varchar(40) collate utf8_unicode_ci default NULL,
  `address` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`teacher_ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- 列出以下資料庫的數據： `teachers`
-- 

INSERT INTO `teachers` VALUES ('0107', '張永明', '11', '男', '系主任', '077310606', 'tech01@csu.edu.tw', '高雄市三民區澄清路100 號');
INSERT INTO `teachers` VALUES ('0108', '粘添壽', '11', '男', '教師', '07-7310607', 'tech2@csu.edu.tw', '高雄市鳥松區澄清路 101 號');
INSERT INTO `teachers` VALUES ('0109', '林正忠', '10', '男', '教師', '07-7310608', 'tech3@csu.edu.tw', '高雄市三民區澄清路 102 號');
INSERT INTO `teachers` VALUES ('0110', '林純純', '10', '女', '教師', '07-7310609', 'tech4@csu.edu.tw', '台南市大同區澄清路 103 號');
INSERT INTO `teachers` VALUES ('0111', '林自立', '09', '男', '教師', '07-7310610', 'tech5@csu.edu.tw', '高雄市岡山區澄清路 104 號');
INSERT INTO `teachers` VALUES ('0112', '吳錦秀', '08', '女', '教師', '07-7310611', 'tech6@csu.edu.tw', '高雄市三民區澄清路 105 號');
INSERT INTO `teachers` VALUES ('0113', '張群偉', '11', '男', '教師', '07-7310612', 'tech7@csu.edu.tw', '台北市大安區澄清路 106 號');
INSERT INTO `teachers` VALUES ('0114', '劉維銘', '11', '男', '教師', '07-7310613', 'tech8@csu.edu.tw', '高雄市左營區澄清路 107 號');
INSERT INTO `teachers` VALUES ('0115', '王玉珠', '10', '女', '教師', '07-7310614', 'tech9@csu.edu.tw', '高雄市新興區澄清路 108 號');
INSERT INTO `teachers` VALUES ('0116', '李詠勇', '11', '男', '教師', '07-7310615', 'tech10@csu.edu.tw', '高雄市三民區澄清路 109 號');
INSERT INTO `teachers` VALUES ('0124', '林曉梅', '05', '女', '系主任', '07-7310616', 'tech11@csu.edu.tw', '高雄市三民區澄清路 110 號');
INSERT INTO `teachers` VALUES ('0123', '張鴻雄', '06', '男', '系主任', '07-7310617', 'tech12@csu.edu.tw', '高雄市三民區澄清路 111 號');
INSERT INTO `teachers` VALUES ('0122', '吳正義', '07', '男', '系主任', '07-7310618', 'tech13@csu.edu.tw', '高雄市三民區澄清路 112 號');
INSERT INTO `teachers` VALUES ('0119', '李振聲', '08', '男', '系主任', '07-7310619', 'tech14@csu.edu.tw', '高雄市三民區澄清路 113 號');
INSERT INTO `teachers` VALUES ('0118', '張國正', '09', '男', '系主任', '07-7310620', 'tech15@csu.edu.tw', '高雄市三民區澄清路 114 號');
INSERT INTO `teachers` VALUES ('0117', '劉秩仁', '10', '男', '系主任', '07-7310621', 'tech16@csu.edu.tw', '高雄市三民區澄清路 115 號');
INSERT INTO `teachers` VALUES ('0120', '李婉貞', '12', '女', '系主任', '07-7310622', 'tech17@csu.edu.tw', '高雄市三民區澄清路 116 號');
INSERT INTO `teachers` VALUES ('0121', '吳育豪', '13', '男', '系主任', '07-7310623', 'tech18@csu.edu.tw', '高雄市三民區澄清路 117 號');
INSERT INTO `teachers` VALUES ('0125', '李克典', '14', '男', '系主任', '07-7310624', 'tech19@csu.edu.tw', '高雄市三民區澄清路 118 號');
INSERT INTO `teachers` VALUES ('0126', '汪崇濱', '15', '男', '系主任', '07-7310625', 'tech20@csu.edu.tw', '高雄市三民區澄清路 119 號');
