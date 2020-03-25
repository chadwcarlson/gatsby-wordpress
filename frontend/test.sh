#!/usr/bin/env bash

# PLATFORM_ROUTES=$(cat test.txt)

WP_BACKEND_URL=$( echo $PLATFORM_ROUTES | base64 --decode | jq '. | values[]' | jq 'if .id == "wordpress" then .to else empty end')
echo $WP_BACKEND_URL
