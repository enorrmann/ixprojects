#!/bin/bash
mvn clean package
scp /home/ubuntu/workspace/ixprojects/target/proyectos-0.1.0.BUILD-SNAPSHOT.war 5755f74c7628e1f6410000e1@ix-solidstate.rhcloud.com:jbossews/webapps/proyectos.war
mvn clean