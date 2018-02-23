#Check for registered Blueprints
ambarilistbp=`echo "sudo curl -H \"X-Requested-By: ambari\" -X GET -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/"`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambarilistbp`

#Register Blueprints
ambariregbp=`echo "curl -H \"X-Requested-By: ambari\" -X POST -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/redtail-bp -d @HDP_BLUEPRINT-field.json"`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambariregbp`

#Check for registered Blueprints
ambarilistbp=`echo "sudo curl -H \"X-Requested-By: ambari\" -X GET -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/"`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambarilistbp`

#Pull trigger Blueprints
ambaripullbp=`echo "curl -H \"X-Requested-By: ambari\" -X POST -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/clusters/redtail -d @HDP_HOSTMAPPING-field.json"`
ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambaripullbp`

#DELETE Blueprints
#ambaridelbp=`echo "curl -H \"X-Requested-By: ambari\" -X DELETE -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/redtail-bp"`
#ssh -i ~/.ssh/knatarasan.pem -t centos@cent7-hdp-1.field.hortonworks.com `echo $ambaridelbp`
