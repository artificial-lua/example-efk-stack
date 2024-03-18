apt install sudo

curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-focal-td-agent4.sh | sh

sed -i "s/^\(User\s*=\s*\).*\$/\1root/" /lib/systemd/system/td-agent.service
sed -i "s/^\(Group\s*=\s*\).*\$/\1root/" /lib/systemd/system/td-agent.service

systemctl enable td-agent # --now

rm ./startup.sh