mysqldb=`echo "sudo mysql
create database registry;
create database streamline;
CREATE USER 'registry'@'%' IDENTIFIED BY 'Registry200$';
CREATE USER 'streamline'@'%' IDENTIFIED BY 'Streamline200$';
commit;"|tr -s '\n' ';'`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-1.field.hortonworks.com `echo $mysqldb`
