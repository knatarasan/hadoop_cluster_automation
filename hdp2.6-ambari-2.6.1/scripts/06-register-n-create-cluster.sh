#List Blueprints
curl -H "X-Requested-By: ambari" -X GET -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/

#Delete
curl -H "X-Requested-By: ambari" -X DELETE -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/redtailhdp


#Register
curl -H "X-Requested-By: ambari" -X POST -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/blueprints/redtailhdp -d @HDP-Blueprint-cisco.json

#Pull the trigger

curl -H "X-Requested-By: ambari" -X POST -u admin:admin http://cent7-hdp-1.field.hortonworks.com:8080/api/v1/clusters/bpcluster -d @HDP_HOSTMAPPING-field.json
