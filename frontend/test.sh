#!/usr/bin/env bash

WP_BACKEND_URL="nothing"
ROUTES=$( echo $PLATFORM_ROUTES | base64 --decode )
echo $ROUTES | jq
echo $ROUTES | jq '. | values[]' | jq 'if .id == "wordpress" then .to else "nope" end'
echo $WP_BACKEND_URL
