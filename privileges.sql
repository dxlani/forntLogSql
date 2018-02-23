use mysql;
select host, user from user;
-- 因为mysql版本是5.6，因此新建用户为如下命令：
-- CREATE USER 'root'@'host' IDENTIFIED BY '123456'; 
create user root identified by '123456';
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为123456：
grant all on log.* to root@'%' identified by '123456' with grant option;
-- 这一条命令一定要有：
flush privileges;