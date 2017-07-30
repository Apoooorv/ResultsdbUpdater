cp /files/Eng_Ops_CA.crt /etc/pki/ca-trust/source/anchors/
cp /files/Red_Hat_IS_CA.crt /etc/pki/ca-trust/source/anchors/
cp /files/Red_Hat_IT_Root_CA.crt /etc/pki/ca-trust/source/anchors/
update-ca-trust
#yum install -y epel-release
#cp /files/eng-rhel.repo /etc/yum.repos.d/
#yum update -y
#yum install -y resultsdb-updater
cp /files/resultsdb-updater.py /etc/fedmsg.d/
sed -i -e 's/validate_signatures=True/validate_signatures=False/g' /etc/fedmsg.d/ssl.py
sed -i -e 's/{{ resultsdb_updater_user }}/'$RESULTSDB_USERNAME'/g' /etc/fedmsg.d/resultsdb-updater.py
sed -i -e 's/{{ resultsdb_updater_password }}/'$RESULTSDB_PASSWORD'/g' /etc/fedmsg.d/resultsdb-updater.py
fedmsg-hub
