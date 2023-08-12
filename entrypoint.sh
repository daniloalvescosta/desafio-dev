#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /desafio-dev/tmp/pids/server.pid

echo "127.0.0.1 localhost" >> /etc/hosts

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
