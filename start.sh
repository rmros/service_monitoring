#!/bin/bash
service elasticsearch restart
service elasticsearch start
whereis elasticsearch
cat /var/log/elasticsearch/elasticsearch.log
curl --head http://127.0.0.1:9200