#!/bin/sh

set -e

# change local mvn repository.
echo -e '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"\n  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"\n  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">\n  <localRepository>/usr/src/mymaven/localrepo</localRepository>\n</settings>' > /root/.m2/settings.xml

# install third party libraries.
mvn install:install-file -DgroupId=javax.jms -DartifactId=jms -Dversion=1.1 -Dpackaging=jar -Dfile=../third-party-libraries/jms-1.1.jar
mvn install:install-file -DgroupId=com.sun.jmx -DartifactId=jmxri -Dversion=1.2.1 -Dpackaging=jar -Dfile=../third-party-libraries/jmxri.jar
mvn install:install-file -DgroupId=com.sun.jdmk -DartifactId=jmxtools -Dversion=1.2.1 -Dpackaging=jar -Dfile=../third-party-libraries/jmxtools.jar
mvn install:install-file -DgroupId=jndi -DartifactId=jndi -Dversion=1.2.1 -Dpackaging=jar -Dfile=../third-party-libraries/jndi.jar
mvn install:install-file -DgroupId=jta -DartifactId=jta -Dversion=1.0.1 -Dpackaging=jar -Dfile=../third-party-libraries/jta-1.0.1b.jar
mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=12.1.0.1.0 -Dpackaging=jar -Dfile=../third-party-libraries/ojdbc7.jar

# build Atlassian JIRA
./build.sh

exec "$@"