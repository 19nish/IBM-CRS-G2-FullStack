/*
MySQL Data Transfer
Source Host: localhost
Source Database: test
Target Host: localhost
Target Database: test
Date: 18-06-2022 01:01:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Name` varchar(30) default NULL,
  `Email` varchar(30) default NULL,
  `Password` varchar(30) default NULL,
  `Course_Id` int(11) default NULL,
  `Student_Id` int(11) default NULL,
  `Professor_Id` int(11) default NULL,
  KEY `crs_id` (`Course_Id`),
  KEY `std_id` (`Student_Id`),
  KEY `prof_id` (`Professor_Id`),
  CONSTRAINT `crs_id` FOREIGN KEY (`Course_Id`) REFERENCES `course` (`Id`),
  CONSTRAINT `prof_id` FOREIGN KEY (`Professor_Id`) REFERENCES `professor` (`Id`),
  CONSTRAINT `std_id` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `Course_Name` varchar(30) default NULL,
  `Course_Detail` varchar(100) default NULL,
  `Course_Professor_name` varchar(30) default NULL,
  `Course_Category` varchar(30) default NULL,
  `Course_fees` decimal(10,0) default NULL,
  `Course_Duration` varchar(30) default NULL,
  `Course_Id` int(11) default NULL,
  KEY `course_id` (`Course_Id`),
  CONSTRAINT `course_id` FOREIGN KEY (`Course_Id`) REFERENCES `course` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Id` int(11) NOT NULL auto_increment,
  `course_name` varchar(40) default NULL,
  `Current_Student` int(11) default NULL,
  `Course_Section` varchar(30) default NULL,
  `Course_Type` varchar(30) default NULL,
  `Course_Status` varchar(30) default NULL,
  `Max_Student` int(11) default NULL,
  `Course_Price` decimal(10,0) default NULL,
  `Course_duration` int(11) default NULL,
  `Student_Id` int(11) default NULL,
  `Professor_Id` int(11) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Student_Id` (`Student_Id`),
  CONSTRAINT `Student_Id` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for course_reg
-- ----------------------------
DROP TABLE IF EXISTS `course_reg`;
CREATE TABLE `course_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `course_name` varchar(30) default NULL,
  `student_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(30) default NULL,
  `age` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for loginsession
-- ----------------------------
DROP TABLE IF EXISTS `loginsession`;
CREATE TABLE `loginsession` (
  `User_Name` varchar(30) default NULL,
  `User_Role` varchar(30) default NULL,
  `Login_DateTime` varchar(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `registration_msg` varchar(60) default NULL,
  `CourseAdd_msg` varchar(60) default NULL,
  `CourseDrop_msg` varchar(60) default NULL,
  `PasswordChange_msg` varchar(60) default NULL,
  `PaymentAlert_msg` varchar(60) default NULL,
  `PaymentSuccessfull_msg` varchar(60) default NULL,
  `PaymentFailed_msg` varchar(60) default NULL,
  `CourseDuration_msg` varchar(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for payment_fees
-- ----------------------------
DROP TABLE IF EXISTS `payment_fees`;
CREATE TABLE `payment_fees` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Payment_Method` varchar(30) default NULL,
  `Total_Amount` int(11) default NULL,
  `Student_Id` int(11) default NULL,
  `Date_Time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for payment_mode_detail
-- ----------------------------
DROP TABLE IF EXISTS `payment_mode_detail`;
CREATE TABLE `payment_mode_detail` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Card_Number` varchar(30) default NULL,
  `Upi_Number` varchar(30) default NULL,
  `Expiry_Date` varchar(255) default NULL,
  `Cvv` int(3) default NULL,
  `Student_Id` int(11) default NULL,
  `Date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for professor
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `Id` int(11) NOT NULL auto_increment,
  `Professor_Name` varchar(30) default NULL,
  `Professor_Department` varchar(30) default NULL,
  `Professor_Qualification` varchar(30) default NULL,
  `Professor_Address` varchar(60) default NULL,
  `Professor_Contact` bigint(10) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `User_Id` varchar(30) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `User_Id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `branch` varchar(40) default NULL,
  `address` varchar(60) default NULL,
  `contact` varchar(30) default NULL,
  `grade` varchar(10) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Name` varchar(30) default NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(30) default NULL,
  `approval` int(11) default NULL,
  PRIMARY KEY  (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `course` VALUES ('201', 'OOPs', null, 'computer Science', 'online', 'open', '10', '500', '1', null, '301');
INSERT INTO `course` VALUES ('202', 'OS', null, 'Comuter Science', 'online', 'open', '10', '600', '1', null, '301');
INSERT INTO `course` VALUES ('203', 'Networking', null, 'computer science', 'online', 'open', '10', '500', '2', null, '302');
INSERT INTO `course` VALUES ('204', 'Unit Operation', null, 'Instrumentation', 'online', 'open', '10', '500', '1', null, '302');
INSERT INTO `course` VALUES ('205', 'Process Instrumentation', null, 'Instrumentation', 'online', 'open', '10', '600', null, null, '302');
INSERT INTO `course` VALUES ('207', 'AI', null, 'Instrumentation', 'Offline', 'open', '8', '1200', '6', null, '302');
INSERT INTO `course` VALUES ('208', 'Artificial intelligence', null, 'computer science', 'online', null, '10', '500', '5', null, '302');
INSERT INTO `course_reg` VALUES ('2', 'nw', '103', '203');
INSERT INTO `course_reg` VALUES ('3', 'oops', '104', '204');
INSERT INTO `course_reg` VALUES ('8', 'OS', '104', '202');
INSERT INTO `course_reg` VALUES ('9', 'OS', '102', '202');
INSERT INTO `course_reg` VALUES ('14', 'OOPs', '101', '201');
INSERT INTO `course_reg` VALUES ('16', null, null, null);
INSERT INTO `course_reg` VALUES ('17', 'unitoperation', '102', '205');
INSERT INTO `course_reg` VALUES ('18', 'os', '102', '202');
INSERT INTO `course_reg` VALUES ('19', 'Artificial intelligence', '103', '208');
INSERT INTO `course_reg` VALUES ('20', 'Networking', '102', '203');
INSERT INTO `employee` VALUES ('101', 'shubham', '23');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/30/2022 15:12:11');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/30/2022 15:23:34');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/30/2022 15:25:02');
INSERT INTO `loginsession` VALUES ('Raghvendra', 'Admin', '05/30/2022 15:29:45');
INSERT INTO `loginsession` VALUES ('Raghvendra', 'Admin', '05/30/2022 15:31:48');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/30/2022 15:33:42');
INSERT INTO `loginsession` VALUES ('Raghvendra', 'Admin', '05/30/2022 15:34:18');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 09:38:59');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 10:23:57');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 10:29:28');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/31/2022 10:48:18');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/31/2022 10:51:00');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/31/2022 10:55:26');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/31/2022 10:57:58');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:06:46');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:28:31');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:29:52');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:31:45');
INSERT INTO `loginsession` VALUES ('parth', 'Professor', '05/31/2022 11:32:36');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:37:31');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:45:22');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:51:03');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 11:54:36');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:15:01');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:16:54');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:44:35');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:45:57');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:49:37');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 12:58:58');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 13:07:47');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 14:38:19');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 14:39:41');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 14:48:39');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 15:00:11');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 15:03:45');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 16:14:33');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 16:19:02');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:08:22');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:33:10');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:36:47');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:37:40');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:38:43');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:43:01');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '05/31/2022 17:44:16');
INSERT INTO `loginsession` VALUES ('Raghvendra', 'Admin', '06/02/2022 11:40:10');
INSERT INTO `loginsession` VALUES ('spring', 'Student', '06/02/2022 11:44:17');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '06/02/2022 16:09:25');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '06/02/2022 18:11:59');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '06/02/2022 18:19:23');
INSERT INTO `loginsession` VALUES ('Shubham', 'Student', '06/08/2022 13:42:11');
INSERT INTO `payment_fees` VALUES ('1', 'UPI', '600', null, '2022-05-24 17:33:54');
INSERT INTO `payment_fees` VALUES ('2', 'Cash', '600', '102', '2022-05-24 19:20:13');
INSERT INTO `payment_fees` VALUES ('3', 'Cash', '0', '102', '2022-05-25 00:45:37');
INSERT INTO `payment_fees` VALUES ('4', 'Cash', '500', '103', '2022-05-25 00:46:32');
INSERT INTO `payment_fees` VALUES ('5', 'Debit Card', '500', '103', '2022-05-25 10:51:11');
INSERT INTO `payment_fees` VALUES ('6', 'UPI', '500', '103', '2022-05-25 11:00:29');
INSERT INTO `payment_fees` VALUES ('7', 'Debit Card', '500', '103', '2022-05-25 17:43:18');
INSERT INTO `payment_fees` VALUES ('8', 'UPI', '600', '101', '2022-05-27 16:21:34');
INSERT INTO `payment_fees` VALUES ('9', 'Credit card', '500', '104', '2022-05-31 11:55:05');
INSERT INTO `payment_fees` VALUES ('10', 'UPI', '500', '104', '2022-05-31 13:08:16');
INSERT INTO `payment_fees` VALUES ('11', 'UPI', '1000', '103', '2022-06-10 17:08:44');
INSERT INTO `payment_mode_detail` VALUES ('1', '123456789012345', null, '11/22', '203', '103', '2022-05-25 10:51:11');
INSERT INTO `payment_mode_detail` VALUES ('2', null, '1234567810@paytm', null, '0', '103', '2022-05-25 11:00:29');
INSERT INTO `payment_mode_detail` VALUES ('3', '1234567890123456', null, '11/22', '304', '103', '2022-05-25 17:43:18');
INSERT INTO `payment_mode_detail` VALUES ('4', null, '7389564326@yml', null, '0', '101', '2022-05-27 16:21:34');
INSERT INTO `payment_mode_detail` VALUES ('5', null, '1234567819@paytm', null, '0', '104', '2022-05-31 11:38:44');
INSERT INTO `payment_mode_detail` VALUES ('6', '78897897987997', null, '07/29', '566', '104', '2022-05-31 11:55:05');
INSERT INTO `payment_mode_detail` VALUES ('7', '237468236742', null, '09/76', '564', '104', '2022-05-31 12:15:20');
INSERT INTO `payment_mode_detail` VALUES ('8', '32648727834', null, '78/98', '674', '104', '2022-05-31 12:17:13');
INSERT INTO `payment_mode_detail` VALUES ('9', null, '1212121212@yml', null, '0', '104', '2022-05-31 12:45:10');
INSERT INTO `payment_mode_detail` VALUES ('10', null, '1232123212@yml', null, '0', '104', '2022-05-31 12:46:37');
INSERT INTO `payment_mode_detail` VALUES ('11', '1212214322726', null, '11/22', '432', '104', '2022-05-31 12:50:02');
INSERT INTO `payment_mode_detail` VALUES ('12', null, '121212121212@paytm', null, '0', '104', '2022-05-31 12:59:24');
INSERT INTO `payment_mode_detail` VALUES ('13', null, '123887482174@axis', null, '0', '104', '2022-05-31 13:08:16');
INSERT INTO `payment_mode_detail` VALUES ('14', null, '254577924@ybl', null, '0', '104', '2022-05-31 15:00:42');
INSERT INTO `payment_mode_detail` VALUES ('15', '8976474673736', 'G2@ibm', '05/2030', '344', '102', '2022-06-08 13:04:35');
INSERT INTO `payment_mode_detail` VALUES ('16', 'null', 'G2@ibm', '0', '0', '102', '2022-06-10 14:15:11');
INSERT INTO `professor` VALUES ('301', 'Amit', 'CS', 'M.E', 'delhi', '8908932');
INSERT INTO `professor` VALUES ('302', 'rajesh', 'Intrumental', 'M.E', 'rajastan', '7987979');
INSERT INTO `role` VALUES ('401', 'Student', null);
INSERT INTO `role` VALUES ('402', 'Professor', null);
INSERT INTO `role` VALUES ('403', 'Admin', null);
INSERT INTO `student` VALUES ('101', 'Shubham', 'B. Tech', 'Computer Science', 'Madhya Pradesh', '9687457823', 'A');
INSERT INTO `student` VALUES ('102', 'Nishant', 'B.Tech', 'Intrumentation', 'Maharastra', '9123456780', 'C');
INSERT INTO `student` VALUES ('103', 'Kiruba', 'B.Tech', 'Computer Science', 'Tamilnadu', '6754379821', 'E');
INSERT INTO `student` VALUES ('104', 'Raghuvandra', 'B.tech', 'Computer Science', 'Karnataka', '8890745686', null);
INSERT INTO `student` VALUES ('105', 'Hemanth', 'B.tech', 'Electrical', 'Andhra Pradesh', '7173468983', 'A');
INSERT INTO `student` VALUES ('106', 'Ravi', 'B.Tech', 'Computer Science', 'Maharastra', '9968743567', null);
INSERT INTO `student` VALUES ('107', 'kiru', 'be', 'cse', 'tamilnadu', '8767656543', null);
INSERT INTO `student` VALUES ('108', 'kiru', 'be', 'Ece', 'tamilnadu', '8767656543', 'D');
INSERT INTO `student` VALUES ('109', 'Shubham', 'B.tech', 'Cs', 'Indor', '2635764624', 'B');
INSERT INTO `student` VALUES ('110', 'nishant2', 'B.E', 'cs', 'India', '8576867576', null);
INSERT INTO `student` VALUES ('111', 'kirtish', 'B.E', 'cs', 'India', '8576867576', null);
INSERT INTO `user` VALUES ('ABHISHEK', 'abhishek@gmail.com', 'Abhi@123', 'Student', '1');
INSERT INTO `user` VALUES ('hemant', 'hemant@gmail.com', 'hemant@gmail.com', 'Student', '0');
INSERT INTO `user` VALUES ('kiruba', 'kiru@gmail.com', 'kiru@123', 'Student', '1');
INSERT INTO `user` VALUES ('Nishant', 'nishant@gmail.com', 'Nishant@123', 'Student', '1');
INSERT INTO `user` VALUES ('nishant2', 'nishant@ibm.com', 'nishant@123', 'student', '0');
INSERT INTO `user` VALUES ('parth', 'parth@gmail.com', 'parth@123', 'Professor', '1');
INSERT INTO `user` VALUES ('Raghvendra', 'raga@gmail.com', 'rag@123', 'Admin', '1');
INSERT INTO `user` VALUES ('rajesh', 'raj@gmail.com', 'raj123', 'Professor', '1');
INSERT INTO `user` VALUES ('Src', 's@gmail.com', 's@123', 'Student', '0');
INSERT INTO `user` VALUES ('Sa', 'sa@gmail.com', 'sa@123', 'Student', '1');
INSERT INTO `user` VALUES ('Shubham', 'shubham@gmail.com', 'p123', 'Student', '1');
INSERT INTO `user` VALUES ('spring', 'spring@gmail.com', 'spring@123', 'Student', '1');
