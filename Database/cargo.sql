-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 09, 2015 at 10:54 AM
-- Server version: 5.0.27
-- PHP Version: 5.2.1
-- 
-- Database: `cargo`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `package_tbl`
-- 

CREATE TABLE `package_tbl` (
  `package_id` int(10) unsigned NOT NULL auto_increment,
  `stu_id` int(10) unsigned NOT NULL,
  `pack` varchar(30) NOT NULL,
  `plength` varchar(10) NOT NULL,
  `pwidth` varchar(100) NOT NULL,
  `pheight` varchar(100) NOT NULL,
  `psection` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL,
  PRIMARY KEY  (`package_id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `package_tbl`
-- 

INSERT INTO `package_tbl` (`package_id`, `stu_id`, `pack`, `plength`, `pwidth`, `pheight`, `psection`, `detail`) VALUES 
(1, 15, 'PC45', '60', '55', '67', 'Section B', 'Kids'),
(2, 15, 'PC40', '30', '20', '10', 'Section C', 'Women'),
(3, 16, 'PC30', '30', '40', '40', 'Section A', 'Women'),
(4, 17, 'PC60', '30', '40', '60', 'Section A', 'Women');

-- --------------------------------------------------------

-- 
-- Table structure for table `stu_tbl`
-- 

CREATE TABLE `stu_tbl` (
  `stu_id` int(10) unsigned NOT NULL auto_increment,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `country` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY  (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `stu_tbl`
-- 

INSERT INTO `stu_tbl` (`stu_id`, `f_name`, `l_name`, `gender`, `country`, `address`, `phone`, `mail`, `note`) VALUES 
(15, 'Kawesi', 'Anthony', 'Male', 'Uganda    ', '  Mukono Senta', '0757344455', 'kawesianthny@gmail.com    ', 'Cleared'),
(16, 'Namakula', 'Esther', 'Female', 'Uganda', 'Bwaise', '07866664456', 'namakesther@gmail.com', 'Cleared'),
(17, 'Masembe', 'William', 'Male', 'Uganda', 'Entebbe', '0777734589', 'masewills@gmail.com', 'Not Cleared\r\nBal USD.290');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_tbl`
-- 

CREATE TABLE `users_tbl` (
  `u_id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY  (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `users_tbl`
-- 

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`, `note`) VALUES 
(4, 'admin', 'admin123', 'creator', 'assignment');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `package_tbl`
-- 
ALTER TABLE `package_tbl`
  ADD CONSTRAINT `package_tbl_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu_tbl` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
