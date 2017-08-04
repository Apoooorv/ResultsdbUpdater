#!/bin/bash

# Expect to find resultsdb-updater.py in a volume mounted
# by OpenShift at /etc/resultsdb-updater
ln -s /etc/resultsdb-updater/resultsdb-updater.py /etc/fedmsg.d/resultsdb-updater.py

exec fedmsg-hub
