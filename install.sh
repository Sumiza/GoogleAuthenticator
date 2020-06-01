#!/bin/sh
yum install -y google-authenticator
google-authenticator -t -d -f --rate-limit=3 --rate-time=30 --window-size=3
echo auth required pam_google_authenticator.so >> /etc/pam.d/sshd
sed -i '/ChallengeResponseAuthentication yes/c\ChallengeResponseAuthentication yes' /etc/ssh/sshd_config
sed -i '/ChallengeResponseAuthentication no/c\#ChallengeResponseAuthentication no' /etc/ssh/sshd_config
systemctl restart sshd
echo "----------DONE---------------"