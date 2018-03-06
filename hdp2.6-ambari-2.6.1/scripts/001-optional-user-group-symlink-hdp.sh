#HDP Users and Groups
usergrouplog=`echo "sudo groupadd hadoop -g 1001
sudo groupadd mapred -g 1002

sudo useradd -m -d /home/ambari -u 1001 ambari

sudo useradd -m -d /home/hive -u 1002 -g 1001 hive
sudo useradd -m -d /home/hcat -u 1003 -g 1001 hcat

sudo useradd -m -d /home/logsearch -u 1004 -g 1001 logsearch
sudo useradd -m -d /home/zookeeper -u 1005 -g 1001 zookeeper
sudo useradd -m -d /home/infra-solr -u 1006 -g 1001 infra-solr
sudo useradd -m -d /home/ams -u 1007 -g 1001 ams
sudo useradd -m -d /home/ambari-qa -u 1008 -g 1001 ambari-qa
sudo useradd -m -d /home/tez -u 1009 -g 1001 tez

sudo useradd -m -d /home/hdfs -u 1010 -g 1001 hdfs
sudo useradd -m -d /home/yarn -u 1011 -g 1001 yarn
sudo useradd -m -d /home/mapred -u 1012 -g 1001 mapred

sudo useradd -m -d /home/knox -u 1013 -g 1001 knox
sudo useradd -m -d /home/activity_analyzer -u 1014 -g 1001 activity_analyzer
sudo useradd -m -d /home/slider -u 1015 -g 1001 slider


sudo mkdir -p /data/disk1/log/zookeeper
sudo chown zookeeper:hadoop /data/disk1/log/zookeeper
sudo ln -sf /data/disk1/log/zookeeper /var/log/zookeeper 

sudo mkdir -p /data/disk1/log/hadoop
sudo chown root:hadoop /data/disk1/log/hadoop
sudo ln -sf /data/disk1/log/hadoop /var/log/hadoop 

sudo mkdir -p /data/disk1/log/hive
sudo chown hive:hadoop /data/disk1/log/hive
sudo ln -sf /data/disk1/log/hive /var/log/hive


sudo mkdir -p /data/disk1/log/webhcat
sudo chown hcat:hadoop /data/disk1/log/webhcat
sudo ln -sf /data/disk1/log/webhcat /var/log/webhcat

sudo mkdir -p /data/disk1/log/hadoop-yarn
sudo chown yarn:hadoop /data/disk1/log/hadoop-yarn
sudo ln -sf /data/disk1/log/hadoop-yarn /var/log/hadoop-yarn

sudo mkdir -p /data/disk1/log/hadoop-mapreduce
sudo chown mapred:hadoop /data/disk1/log/hadoop-mapreduce
sudo ln -sf /data/disk1/log/hadoop-mapreduce /var/log/hadoop-mapreduce


sudo mkdir -p /data/disk1/log/smartsense-activity
sudo chown root:root /data/disk1/log/smartsense-activity
sudo ln -sf /data/disk1/log/smartsense-activity /var/log/smartsense-activity

sudo mkdir -p /data/disk1/log/hst
sudo chown root:root /data/disk1/log/hst
sudo ln -sf /data/disk1/log/hst /var/log/hst

sudo mkdir -p /data/disk1/log/ambari-infra-solr
sudo chown infra-solr:hadoop /data/disk1/log/ambari-infra-solr
sudo ln -sf /data/disk1/log/ambari-infra-solr /var/log/ambari-infra-solr

sudo mkdir -p /data/disk1/log/ambari-infra-solr-client
sudo chown root:root /data/disk1/log/ambari-infra-solr-client
sudo ln -sf /data/disk1/log/ambari-infra-solr-client /var/log/ambari-infra-solr-client


sudo mkdir -p /data/disk1/log/ambari-metrics-collector
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-collector
sudo ln -sf /data/disk1/log/ambari-metrics-collector /var/log/ambari-metrics-collector

sudo mkdir -p /data/disk1/log/ambari-metrics-monitor
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-monitor
sudo ln -sf /data/disk1/log/ambari-metrics-monitor /var/log/ambari-metrics-monitor

sudo mkdir -p /data/disk1/log/ambari-metrics-grafana
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-grafana
sudo ln -sf /data/disk1/log/ambari-metrics-grafana /var/log/ambari-metrics-grafana

sudo mkdir -p /data/disk1/log/ambari-logsearch-portal
sudo chown logsearch:hadoop /data/disk1/log/ambari-logsearch-portal
sudo ln -sf /data/disk1/log/ambari-logsearch-portal /var/log/ambari-logsearch-portal

sudo mkdir -p /data/disk1/log/ambari-logsearch-logfeeder
sudo chown root:root /data/disk1/log/ambari-logsearch-logfeeder
sudo ln -sf /data/disk1/log/ambari-logsearch-logfeeder /var/log/ambari-logsearch-logfeeder"|tr -s '\n' ';'`


ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-2.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-3.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-4.field.hortonworks.com `echo $usergrouplog`
