#!/bin/bash

# SIP2 endpoint details
HOST="library.example.com"
PORT=6001
USER="sipuser"
PASS="sippassword"
LOCATION="branch1"

# SIP2 login command (93 message)
LOGIN="9300CN${USER}|CO${PASS}|CP${LOCATION}"

# Send the command and receive the response
echo "$LOGIN" | nc -w 5 "$HOST" "$PORT"