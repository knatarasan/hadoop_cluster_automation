
#HDF
usergrouplog=`echo "sudo groupadd hadoop -g 1001
sudo groupadd nifi -g 1003

sudo useradd -m -d /home/ambari -u 1001 ambari

sudo useradd -m -d /home/logsearch -u 1002 -g 1001 logsearch
sudo useradd -m -d /home/zookeeper -u 1003 -g 1001 zookeeper
sudo useradd -m -d /home/infra-solr -u 1004 -g 1001 infra-solr
sudo useradd -m -d /home/ams -u 1005 -g 1001 ams
sudo useradd -m -d /home/ambari-qa -u 1006 -g 1001 ambari-qa
sudo useradd -m -d /home/kafka -u 1007 -g 1001 kafka
sudo useradd -m -d /home/nifi -u 1008 -g 1001 nifi


sudo mkdir -p /data/disk1/log/zookeeper
sudo chown zookeeper:hadoop /data/disk1/log/zookeeper
sudo ln -sf /data/disk1/log/zookeeper /var/log/zookeeper

sudo mkdir -p /data/disk1/log/nifi
sudo chown nifi:nifi /data/disk1/log/nifi
sudo ln -sf /data/disk1/log/nifi /var/log/nifi

sudo mkdir -p /data/disk1/log/kafka
sudo chown kafka:hadoop /data/disk1/log/kafka
sudo ln -sf /data/disk1/log/kafka /var/log/kafka
sudo mkdir -p /data/disk1/log/ambari-metrics-collector
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-collector
sudo ln -sf /data/disk1/log/ambari-metrics-collector /var/log/ambari-metrics-collector

sudo mkdir -p /data/disk1/log/ambari-metrics-grafana
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-grafana
sudo ln -sf /data/disk1/log/ambari-metrics-grafana /var/log/ambari-metrics-grafana

sudo mkdir -p /data/disk1/log/ambari-metrics-monitor
sudo chown ams:hadoop /data/disk1/log/ambari-metrics-monitor
sudo ln -sf /data/disk1/log/ambari-metrics-monitor /var/log/ambari-metrics-monitor


sudo mkdir -p /data/disk1/log/ambari-infra-solr
sudo chown infra-solr:hadoop /data/disk1/log/ambari-infra-solr
sudo ln -sf /data/disk1/log/ambari-infra-solr /var/log/ambari-infra-solr

sudo mkdir -p /data/disk1/log/ambari-infra-solr-client
sudo chown root:root /data/disk1/log/ambari-infra-solr-client
sudo ln -sf /data/disk1/log/ambari-infra-solr-client /var/log/ambari-infra-solr-client

sudo mkdir -p /data/disk1/log/ambari-logsearch-portal
sudo chown logsearch:hadoop /data/disk1/log/ambari-logsearch-portal
sudo ln -sf /data/disk1/log/ambari-logsearch-portal /var/log/ambari-logsearch-portal

sudo mkdir -p /data/disk1/log/ambari-logsearch-logfeeder
sudo chown root:root /data/disk1/log/ambari-logsearch-logfeeder
sudo ln -sf /data/disk1/log/ambari-logsearch-logfeeder /var/log/ambari-logsearch-logfeeder


sudo mkdir -p /data/disk1/log/smartsense-activity
sudo chown root:root /data/disk1/log/smartsense-activity
sudo ln -sf /data/disk1/log/smartsense-activity /var/log/smartsense-activity

sudo mkdir -p /data/disk1/log/hst
sudo chown root:root /data/disk1/log/hst
sudo ln -sf /data/disk1/log/hst /var/log/hst"|tr -s '\n' ';'`


ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-1.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-2.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-3.field.hortonworks.com `echo $usergrouplog`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-4.field.hortonworks.com `echo $usergrouplog`
