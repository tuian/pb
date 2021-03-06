#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get install build-essential -y
apt-get install -y software-properties-common python-software-properties supervisor \
    cron curl git iptables letsencrypt
cd /vpn
tar xzvf softether*.tar.gz

cd vpnserver && make i_read_and_agree_the_license_agreement
chmod 600 *
chmod 700 vpnserver
chmod 700 vpncmd


exit 0
