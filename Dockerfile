FROM centos:latest

#ADD Files/eng-rhel.repo /etc/yum.repos.d/

ARG resultsdb_updater_rpm
COPY $resultsdb_updater_rpm /tmp

#RUN yum install -y epel-release && \
#    yum update -y && \
#    yum install -y /tmp/$(basename $resultsdb_updater_rpm) && \
#    yum -y clean all && \
    #yum install -y resultsdb-updater && \
#    chmod -R 777 /etc/fedmsg.d/

#ADD Files /home/
 
#RUN sed -i -e 's/replace-me/12replace-me/g' /etc/resultsdb/settings.py
#ENTRYPOINT ["/bin/sh", "/files/setup.sh"]
ENTRYPOINT ["sleep", "99999999"]

