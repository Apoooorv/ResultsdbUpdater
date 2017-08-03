FROM centos:latest

ADD setup.sh /home/

ARG resultsdb_updater_rpm
COPY $resultsdb_updater_rpm /tmp

RUN yum install -y epel-release && \
    yum update -y && \
    yum install -y /tmp/$(basename $resultsdb_updater_rpm) && \
    yum -y clean all && \
    chmod -R 777 /etc/fedmsg.d/ 

ENTRYPOINT ["/bin/sh", "/home/setup.sh"]

