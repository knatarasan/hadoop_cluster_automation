mysqlserver=`echo "sudo yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo yum install mysql-community-server
sudo systemctl start mysqld
sudo mysql
create database hive;
CREATE USER 'hive'@'%' IDENTIFIED BY 'hive';
GRANT ALL PRIVILEGES ON hive.* TO 'hive'@'%' WITH GRANT OPTION ;
exit;"|tr -s '\n' ';'`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-2.field.hortonworks.com `echo $mysqlserver`
