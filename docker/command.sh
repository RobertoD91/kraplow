#sudo docker run --name tomcat -it -p 8080:8080  -v /tmp/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml -v /tmp/context.xml:/tmp/context.xml tomcat:9.0 /bin/bash -c "mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2; mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps; cp /tmp/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml; catalina.sh run"

#docker pull tomcat:9-jdk14-openjdk-oracle
docker run --name tomcat --rm -it -p 8080:8080  -v $PWD/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml -v $PWD/context.xml:/tmp/context.xml tomcat:9-jdk14-openjdk-oracle /bin/bash -c "mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2; mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps; cp /tmp/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml; catalina.sh run"