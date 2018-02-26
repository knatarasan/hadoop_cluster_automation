mysqlserver=`echo "sudo yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo yum install mysql-community-server
systemctl start mysqld.service"|tr -s '\n' ';'`

ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-1.field.hortonworks.com `echo $mysqlserver`


