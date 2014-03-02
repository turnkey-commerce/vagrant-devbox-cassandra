vagrant-devbox-cassandra
========================

Vagrant setup to quickly provision a Cassandra dev environment in Ubuntu Precise 64.  It is relatively simple
in that it employs a bash script to provision the Java 7 dependencies and Cassandra/OpsCenter from the Datastax Community.

Prerequisites
-------------
Vagrant and Virtual Box must be installed on the host machine.

Usage
-----

    git clone git://github.com/turnkey-commerce/vagrant-devbox-cassandra.git
    cd vagrant-devbox-cassandra
    vagrant up

Verify Installation
--------------------
	vagrant ssh
	$ nodetool status

Port 8888 is set up to forward the output of the Datastax OpsCenter to the host web browser:

    http://localhost:8888

More information on OpsCenter is available at:

[Setting Up Opscenter](http://www.datastax.com/documentation/getting_started/doc/getting_started/gsSetupOpscC.html?scroll=gsSetUpOPSC__step1)
