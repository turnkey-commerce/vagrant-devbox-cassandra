vagrant-devbox-cassandra
========================

Vagrant setup to quickly provision a Cassandra dev environment.  It is relatively simple
as it employs a bash script to provision the Java 7 dependencies.

To use it Vagrant and Virtual Box should be installed on the host machine.

Then clone the repository and enter the command:

>vagrant up

The port 8888 is setup to forward the output of the Datastax Opscenter to the host web browser:

>http://localhost:8888

More information on Opscenter is available at:

[http://www.datastax.com/documentation/getting_started/doc/getting_started/gsSetupOpscC.html?scroll=gsSetUpOPSC__step1](Setting Up Opscenter) 
