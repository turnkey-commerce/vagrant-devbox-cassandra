#!/usr/bin/env bash

print_db_usage () {
  echo "Your Datastax Community Cassandra database and Opscenter has been setup as a single node."
  echo "You can access the Datastax Opscenter on the host computer from http://localhost:8888"
}

apt-get update

# Base utilities
apt-get install -y git
apt-get install -y libpcre3-dev
apt-get install -y curl
apt-get install -y python-software-properties python g++ make


# Java 7
echo "Installing Java 7..."
add-apt-repository -y ppa:webupd8team/java
apt-get -y update
/bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get -y install oracle-java7-installer oracle-java7-set-default

# Cassandra from Datastax Community
echo "Installing Cassandra..."
echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
apt-get -y update
apt-get -y install dsc20

# OpsCenter from Datastax
echo "Installing OpsCenter..."
apt-get -y update
apt-get -y install opscenter
service opscenterd start

echo "Successfully created Cassandra dev virtual machine."
echo ""
print_db_usage
