#!/bin/sh

# Download and install V2Ray
mkdir /opt/mtg
git clone https://github.com/9seconds/mtg.git
cd /opt/mtg
make docker
# new configuration
#cat << EOF > /etc/mtg.toml
#{
#  "log": {
#    "loglevel": "none"
#  },
#  "inbounds": [
#   {
#  "port": $PORT,
#  "protocol": "mtproto",
#  "settings": {
#    "users": [{"secret": "$SECRET"}]
#  }
#}
#  ],
#  "outbounds": [
#   {
#   "protocol": "freedom"
#   }
#  ]
#}
#EOF

# Run V2Ray
/usr/local/bin/mtg simple-run 0.0.0.0:443 ee788eabf5aae8fa02c7253c0701dffa9262696c6962696c692e636f6d
