ambagent=`echo "mv ~/knatarasan.pem ~/.ssh/id_rsa
sudo yum install -y ntp
sudo yum -y install vim-enhanced.x86_64
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo systemctl disable firewalld
sudo service firewalld stop
sudo setenforce 0
sudo umask 0022
sudo echo "umask 0022" >> /etc/profile
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sudo yum -y install wget
sudo wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.6.1.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
sudo yum -y install ambari-agent
sudo sed -i 's/hostname=localhost/hostname=cent7-hdp-1.field.hortonworks.com/g' /etc/ambari-agent/conf/ambari-agent.ini
sudo ambari-agent start"|tr -s '\n' ';'`


ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambagent`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-2.field.hortonworks.com `echo $ambagent`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-3.field.hortonworks.com `echo $ambagent`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-4.field.hortonworks.com `echo $ambagent`
