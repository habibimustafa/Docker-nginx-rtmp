#!/bin/sh

cat <<EOF > /etc/stunnel/fblive.conf 
verify = 2
foreground=yes

[fb-live]
client = yes
accept = 127.0.0.1:19350
connect = live-api-s.facebook.com:443
EOF

exec /usr/bin/stunnel /etc/stunnel/fblive.conf