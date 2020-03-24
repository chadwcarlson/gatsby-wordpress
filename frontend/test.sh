#!/usr/bin/env bash

echo $PLATFORM_ROUTES | base64 --decode | jq 
