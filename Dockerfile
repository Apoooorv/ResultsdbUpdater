FROM centos:latest

ADD Files/eng-rhel.repo /etc/yum.repos.d/

RUN yum install -y epel-release && \
    yum update -y && \
    yum install -y resultsdb-updater && \
    chmod -R 777 /etc/fedmsg.d/

#ADD Files /home/
 
#RUN sed -i -e 's/replace-me/12replace-me/g' /etc/resultsdb/settings.py
ENTRYPOINT ["/bin/sh", "/files/setup.sh"]

