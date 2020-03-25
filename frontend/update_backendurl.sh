#!/usr/bin/env bash

export BACKEND_ID="wordpress"
WP_BACKEND_URL=$( echo $PLATFORM_ROUTES | base64 --decode | jq '. | values[]' | jq 'if .id==$ENV.BACKEND_ID then .to else empty end')
export $WP_BACKEND_URL
