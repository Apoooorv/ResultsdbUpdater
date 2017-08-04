#!/bin/bash
sed -i -e 's/validate_signatures=True/validate_signatures=False/g' /etc/fedmsg.d/ssl.py
ln -s /etc/resultsdb-updater/resultsdb-updater.py /etc/fedmsg.d/resultsdb-updater.py

exec fedmsg-hub
