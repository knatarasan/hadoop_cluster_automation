List Blueprints
curl -H "X-Requested-By: ambari" -X GET -u admin:admin http://cent7-hdf-1.field.hortonworks.com:8080/api/v1/blueprints/

Delete
curl -H "X-Requested-By: ambari" -X DELETE -u admin:admin http://cent7-hdf-1.field.hortonworks.com:8080/api/v1/blueprints/redtail-bp-hdf


Register
curl -H "X-Requested-By: ambari" -X POST -u admin:admin http://cent7-hdf-1.field.hortonworks.com:8080/api/v1/blueprints/redtail-bp-hdf -d @HDF-Blueprint-cisco.json

Pull the trigger

curl -H "X-Requested-By: ambari" -X POST -u admin:admin http://cent7-hdf-1.field.hortonworks.com:8080/api/v1/clusters/ciscohdf -d @HDF_HOSTMAPPING-cisco.json
