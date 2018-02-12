#!/bin/bash
##############################
# @file create_db_mysql.sh
# @brief create database and tables in mysql
# @author ZhaoJian
# @version 0.1
# @date 2018-02-12
##############################
USER="root"
DATABASE="log"
TABLE="tms_log_total"
######################
#crate database
mysql -u $USER << EOF 2>/dev/null
CREATE DATABASE $DATABASE
EOF
[ $? -eq 0 ] && echo "created DB" || echo DB already exists
######################
#create table
mysql -u $USER $DATABASE << EOF 2>/dev/null
pid INT PRIMARY KEY AUTO_INCREMENT,  
  level VARCHAR(16),  
  time DATETIME,
  uid VARCHAR(100),
  url VARCHAR(250),
  userAgent VARCHAR(250),
  msgs VARCHAR(400)
);
EOF
[ $? -eq 0 ] && echo "Created table tms_log_total" || echo "Table tms_log_total already exist" 
######################
#delete data
mysql -u $USER $DATABASE << EOF 2>/dev/null
DELETE FROM $TABLE;
EOF