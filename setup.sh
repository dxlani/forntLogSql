#!/bin/bash
##############################
# @file create_db_mysql.sh
# @brief create database and tables in mysql
# @author ZhaoJian
# @version 0.1
# @date 2018-02-12
##############################
mysql -uroot  -ppassword <<EOF
    SET NAMES UTF8;
DROP DATABASE IF EXISTS log;
CREATE DATABASE log CHARSET=UTF8;
USE log;

/**ccp日志表**/
CREATE TABLE ccp_log_total(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  level VARCHAR(16),
  time DATETIME,
  uid VARCHAR(100),
  url VARCHAR(250),
  userAgent VARCHAR(250),
  msgs VARCHAR(400)
);
/**tms日志表**/
CREATE TABLE tms_log_total(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  level VARCHAR(16),
  time DATETIME,
  uid VARCHAR(100),
  url VARCHAR(250),
  userAgent VARCHAR(250),
  msgs VARCHAR(400)
);

/**csp日志表**/
CREATE TABLE csp_log_total(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  level VARCHAR(16),
  time DATETIME,
  uid VARCHAR(100),
  url VARCHAR(250),
  userAgent VARCHAR(250),
  msgs VARCHAR(400)
);

 
EOF  