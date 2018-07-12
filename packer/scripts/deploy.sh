#!/bin/bash
git clone -b monolith https://github.com/express42/reddit.git
pushd reddit/
bundle install
popd

cat <<EOF > /etc/systemd/system/puma.service
[Unit]
Description=reddit monolith
After=network-online.target

[Service]
User=bytamine
SyslogIdentifier=reddit monolith
WorkingDirectory=/home/bytamine/reddit
ExecStart=/usr/local/bin/puma -d
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

systemctl enable puma.service
