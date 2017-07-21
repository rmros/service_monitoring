# Dockerfile for ELK stack
# Elasticsearch, Logstash, Kibana 5.5.0

# Build with:
# docker build -t <repo-user>/elk .

# Run with:
# docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk <repo-user>/elk

FROM phusion/baseimage
MAINTAINER Ramin Rostami rm.rostami@gmail.com
ENV REFRESHED_AT 2017-07-19


###############################################################################
#                                INSTALLATION
###############################################################################

### i am using http://www.bogotobogo.com Article about ELK 
### Java install
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean && \
	java -version && \
	readlink -f $(which javac)

### Download / Install Elastic Search

### Configuring Elastic

### Configuring Elastic

### Checking the cluster health

### Using the REST API

### Elasticsearch Indexing

### Creating an Index

### Indexing and Querying a Document

### Delete an Index

### The REST API pattern

### Modifying Data : Indexing/Replacing Documents

### Updating Documents

### Deleting Documents

### Batch Processing
###########################
### Download logstash

### Configuring logstash

### Sample : Beat input

### Running logstash

### Output Format

### Storing logs with Elasticsearch

### Sample : Apache logs

### Parsing logs with Filebeat

### Configuring Filebeat to Send Log Lines to Logstash

### Setting up Logstash to receive event from Beat

### Updating the Beats Input Plugin for Logstash

### Query into Elasticsearch

### What's Kibana?

### Testing Elasticsearch

### Install Kibana 4.6

### Connecting Kibana with Elasticsearch

### Configure elasticsearch-head

### Nginx proxy setup

### Marvel - Install

### syslog file

### Logstash configure file

### Logstash with elasticsearch

### Logstash shippers

### Redis as a broker between the shipper and the indexer

### MONITORING SERVER:

### SHIPPER NODE SETTING:
