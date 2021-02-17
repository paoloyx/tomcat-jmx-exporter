FROM tomcat:9.0
LABEL version="1.0"
LABEL author="paolofilippelli"
LABEL email="paolo.filippelli@gmail.com"

RUN mkdir /data

ADD jmx_prometheus_javaagent-0.15.0.jar /data/jmx_prometheus_javaagent-0.15.0.jar
ADD tomcat.yml /data/tomcat.yml
ADD setenv.sh /usr/local/tomcat/bin