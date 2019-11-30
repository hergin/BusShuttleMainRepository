#!/bin/sh

git clone https://github.com/hergin/BusShuttleManagerDashboard.git dashboard_new
rm -rf dashboard_previous
cp -avr  dashboard dashboard_previous
currentDashboardName=dashboard$(date +"_%y%m%d_%I%M%S")
mv dashboard $currentDashboardName
mv dashboard_new dashboard
cp config-PROD.php dashboard/config.php
