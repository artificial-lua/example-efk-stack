# install in ubuntu container
apt upgrade -y
apt update -y
apt install sudo -y
apt install curl -y
apt install systemctl -y

curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-focal-td-agent4.sh | sh

vi /etc/td-agent/td-agent.conf
# copy td-agent.conf file

systemctl enable td-agent # --now

sed -i "s/^\(User\s*=\s*\).*\$/\1root/" /lib/systemd/system/td-agent.service
sed -i "s/^\(Group\s*=\s*\).*\$/\1root/" /lib/systemd/system/td-agent.service

systemctl start td-agent