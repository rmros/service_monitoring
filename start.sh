#!/bin/bash
service elasticsearch restart
service elasticsearch start
whereis elasticsearch
cat /var/log/elasticsearch/elasticsearch.log