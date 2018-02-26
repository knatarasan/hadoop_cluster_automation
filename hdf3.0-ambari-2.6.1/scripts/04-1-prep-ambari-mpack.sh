ambmpack=`echo "sudo cp -r /var/lib/ambari-server/resources /var/lib/ambari-server/resources.backup
sudo wget https://s3.amazonaws.com/public-repo-1.hortonworks.com/HDF/centos7/3.x/updates/3.0.2.0/tars/hdf_ambari_mp/hdf-ambari-mpack-3.0.2.0-76.tar.gz
sudo ambari-server install-mpack --mpack=hdf-ambari-mpack-3.0.2.0-76.tar.gz --purge --verbose
sudo ambari-server restart"|tr -s '\n' ';'`


ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdf-1.field.hortonworks.com `echo $ambmpack`

