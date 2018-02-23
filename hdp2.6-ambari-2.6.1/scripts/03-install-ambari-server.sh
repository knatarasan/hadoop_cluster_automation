#01 install ambari-server and start
#02 set up ambari-server
#03 start ambari-server

ambserver=`echo "sudo yum -y install wget
sudo wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.6.1.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
sudo yum install -y ambari-server
sudo yum install -y mysql-connector-java
sudo ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar
sudo ambari-server setup
sudo ambari-server start"|tr -s '\n' ';'`

ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambserver`
