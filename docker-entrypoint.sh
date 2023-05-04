#!/bin/bash

# if any command in the script fails, exit
set -e

tor -f /etc/tor/torrc &

exec nginx 