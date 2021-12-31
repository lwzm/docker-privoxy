#!/bin/sh

cat >config <<'EOF'
listen-address 0.0.0.0:8118
socket-timeout 300
keep-alive-timeout 300
default-server-timeout 60
connection-sharing 1
EOF

for cfg in "$@"; do
	echo "$cfg" >>config
done

cat config

exec privoxy --no-daemon
