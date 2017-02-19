/*
 Navicat MySQL Data Transfer

 Source Server         : Vivian
 Source Server Version : 50631
 Source Host           : localhost
 Source Database       : amc

 Target Server Version : 50631
 File Encoding         : utf-8

 Date: 02/07/2017 23:20:47 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `againPurchase`
-- ----------------------------
DROP TABLE IF EXISTS `againPurchase`;
CREATE TABLE `againPurchase` (
  `againPurchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`againPurchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `againPurchaseDetail`
-- ----------------------------
DROP TABLE IF EXISTS `againPurchaseDetail`;
CREATE TABLE `againPurchaseDetail` (
  `againPurchaseDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `againPurchaseID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `purchaseAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`againPurchaseDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(30) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `receiveAddress` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `receiver` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `outDemandTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `orderDetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderDetail`;
CREATE TABLE `orderDetail` (
  `orderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `demand` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `outDemand`
-- ----------------------------
DROP TABLE IF EXISTS `outDemand`;
CREATE TABLE `outDemand` (
  `outDemandID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`outDemandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `outDemandDetail`
-- ----------------------------
DROP TABLE IF EXISTS `outDemandDetail`;
CREATE TABLE `outDemandDetail` (
  `outDemandDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `outDemandID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `outDemandAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`outDemandDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `payable`
-- ----------------------------
DROP TABLE IF EXISTS `payable`;
CREATE TABLE `payable` (
  `payableID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) DEFAULT NULL,
  `payableDetailID` int(11) DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  `invoiceState` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `payState` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`payableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `payableDetail`
-- ----------------------------
DROP TABLE IF EXISTS `payableDetail`;
CREATE TABLE `payableDetail` (
  `payableDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `payableID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `productName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `salePrice` double DEFAULT NULL,
  `replenishAmount` int(11) DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  PRIMARY KEY (`payableDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) COLLATE utf8_bin NOT NULL,
  `productSize` varchar(20) COLLATE utf8_bin NOT NULL,
  `salePrice` double NOT NULL,
  `stock` int(11) NOT NULL,
  `safeStock` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `purchasePrice` double DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `purchase`
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `purchaseAccount`
-- ----------------------------
DROP TABLE IF EXISTS `purchaseAccount`;
CREATE TABLE `purchaseAccount` (
  `purchaseAccountlID` int(11) NOT NULL AUTO_INCREMENT,
  `payableID` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  PRIMARY KEY (`purchaseAccountlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `purchaseDetail`
-- ----------------------------
DROP TABLE IF EXISTS `purchaseDetail`;
CREATE TABLE `purchaseDetail` (
  `purchaseDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `purchaseAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchaseDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `receivable`
-- ----------------------------
DROP TABLE IF EXISTS `receivable`;
CREATE TABLE `receivable` (
  `receivableID` int(11) NOT NULL AUTO_INCREMENT,
  `stockUpID` int(11) DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  `payState` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`receivableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `receivableDetail`
-- ----------------------------
DROP TABLE IF EXISTS `receivableDetail`;
CREATE TABLE `receivableDetail` (
  `receiveDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `receivableID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `productName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `salePrice` double DEFAULT NULL,
  `saleAmount` int(11) DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  PRIMARY KEY (`receiveDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) COLLATE utf8_bin NOT NULL,
  `roleDescription` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `saleAccount`
-- ----------------------------
DROP TABLE IF EXISTS `saleAccount`;
CREATE TABLE `saleAccount` (
  `saleAccountlID` int(11) NOT NULL AUTO_INCREMENT,
  `receivableID` int(11) DEFAULT NULL,
  `receiveDate` datetime DEFAULT NULL,
  `totalAccount` double DEFAULT NULL,
  PRIMARY KEY (`saleAccountlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `stockUp`
-- ----------------------------
DROP TABLE IF EXISTS `stockUp`;
CREATE TABLE `stockUp` (
  `stockUpID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`stockUpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `stockUpDetail`
-- ----------------------------
DROP TABLE IF EXISTS `stockUpDetail`;
CREATE TABLE `stockUpDetail` (
  `stockUpDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `stockUpID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `stockUpAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`stockUpDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL AUTO_INCREMENT,
  `supplierCompany` varchar(50) COLLATE utf8_bin NOT NULL,
  `linkMan` varchar(30) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `productScope` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `roleID` int(11) NOT NULL,
  `userName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `realName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `department` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET FOREIGN_KEY_CHECKS = 1;
