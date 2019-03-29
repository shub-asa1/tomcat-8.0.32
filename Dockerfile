from centos:7
run yum -y install java-1.8.0-openjdk-devel 
run groupadd tomcat
run  useradd -M -s /bin/nologin -g tomcat -d /opt/COE tomcat
run yum -y install wget
workdir ~
run wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.32/bin/apache-tomcat-8.0.32.tar.gz


run mkdir /opt/COE
run tar xvf apache-tomcat-8.0.32.tar.gz -C /opt/COE 

workdir /opt/COE

CMD ["/opt/COE/bin/catalina.sh","run"] 

