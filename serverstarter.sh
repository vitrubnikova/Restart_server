#!/bin/bash

echo "Serverstarter"
echo "====================================="

echo Starting server...
cd /Users/user/stf
bin/stf local --public-ip 192.xxx.x.xxx --wda-path ../WebDriverAgent
