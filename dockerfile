FROM mysql:5.6

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY logcreateTable.sql /mysql/logcreateTable.sql


#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]