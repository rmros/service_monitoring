# Dockerfile for ELK stack
# Elasticsearch, Logstash, Kibana 5.5.0

# Build with:
# docker build -t <repo-user>/elk .

# Run with:
# docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk <repo-user>/elk

FROM phusion/baseimage
MAINTAINER Ramin Rostami rm.rostami@gmail.com
ENV REFRESHED_AT 2017-07-21


###############################################################################
#                                INSTALLATION
###############################################################################

### i am using http://www.bogotobogo.com Article about ELK 
### Java install
RUN apt-get update && \
    apt-get -y install sudo && \
    sudo apt-get upgrade -y && \
    sudo apt-get install -y  software-properties-common && \
    sudo add-apt-repository ppa:webupd8team/java -y && \
    sudo apt-get update && \
    sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    sudo apt-get install -y oracle-java8-installer && \
    sudo apt-get clean && \
	java -version && \
	readlink -f $(which javac)
#   To set JAVA_HOME in .bashrc:
RUN JAVA_HOME=/usr/lib/jvm/java-8-oracle && \
    export JAVA_HOME && \
    PATH=$JAVA_HOME/bin:$PATH && \
    export PATH
#   OpenJDK:
RUN sudo add-apt-repository ppa:openjdk-r/ppa && \
    sudo apt-get update -y  && \
    sudo apt-get install -y openjdk-8-jdk
#	Run the following command to set the default Java
RUN sudo update-alternatives --config java && \
	java -version && \
	echo java installed - ok!
### Download / Install Elastic Search
#   Download and install the package
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.0.deb && \
    sudo dpkg -i elasticsearch-5.5.0.deb
#   Download and install the Public Signing Key and start:
RUN wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - && \
    sudo systemctl enable elasticsearch.service && \
    sudo systemctl start elasticsearch.service
#  To check the version, simply issue the following: 
RUN curl -XGET 'localhost:9200'
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
