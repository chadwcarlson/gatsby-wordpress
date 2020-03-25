#!/usr/bin/env bash

PLATFORM_ROUTES=$( cat test.txt )

export BACKEND_ID="wordpress"
WP_BACKEND_URL=$( echo $PLATFORM_ROUTES | base64 --decode | jq '. | values[]' | jq --arg backend_id "$BACKEND_ID"  'if .id==$backend_id then .to else empty end' )
echo $WP_BACKEND_URL
