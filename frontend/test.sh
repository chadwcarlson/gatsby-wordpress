#!/usr/bin/env bash

WP_BACKEND_URL="nothing"
PLATFORM_ROUTES=$(cat test.txt)
ROUTES=$( echo $PLATFORM_ROUTES | base64 --decode )
echo $ROUTES | jq
# echo $ROUTES | jq '. | values[]' | jq 'if .id == "wordpress" then .to else "nope" end'
# echo $WP_BACKEND_URL
