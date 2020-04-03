
FROM us.gcr.io/pro1-265115/serverjre
VOLUME /tmp
EXPOSE 8080
RUN yum install -y procps
RUN yum whatprovides netstat
RUN yum -y install net-tools
RUN yum install -y unzip
ADD app.jar app.jar
ENTRYPOINT ["echotesting"]
