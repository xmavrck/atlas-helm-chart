# atlas-helm-chart
This chart will install the apache atlas and used solr for indexing and cassandra as backend storage.

To install the chart. clone the repo and run following command to install chart

```sh
helm install --name <any release name> -f atlas-helm-chart/values.yaml atlas-helm-chart
```
This will run the solr, atlas, Cassandra and zookeeper pods

solr version : 7.5

atlas version : 1.1.0

cassandra version : 3.11.3

zookeeper version : 3.4.x
