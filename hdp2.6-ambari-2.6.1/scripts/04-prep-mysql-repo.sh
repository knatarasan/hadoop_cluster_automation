mysqlserver=`echo "sudo yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm"|tr -s '\n' ';'`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-2.field.hortonworks.com `echo $mysqlserver`
