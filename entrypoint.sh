#!/bin/sh

# Run Caddy and suppress error output, but still log stdout
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile 2>/dev/null &

# Wait for a moment to allow Caddy to initialize
sleep 2

# List the contents of /data/caddy
ls /data/caddy/pki/authorities/local/

# Check if intermediate.key exists and is not empty
ls -l /data/caddy/pki/authorities/local/intermediate.key

if [ ! -s /data/caddy/pki/authorities/local/intermediate.key ]; then
    echo "The file is empty or does not exist."
else
    echo "The file exists and is not empty."
fi