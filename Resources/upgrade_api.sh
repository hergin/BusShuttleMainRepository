#!/bin/sh

git clone https://github.com/hergin/BusShuttleAPI.git api_new
rm -rf api_previous
cp -avr  api api_previous
currentApiName=api$(date +"_%y%m%d_%I%M%S")
mv api $currentApiName
mv api_new/api api
rm -rf api_new
cp config-PROD-api.php api/config.php
