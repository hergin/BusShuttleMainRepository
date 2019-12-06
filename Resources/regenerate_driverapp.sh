#!/bin/sh

rm -rf 3rdpartylicenses.txt assets favicon.ico images/ index.html main.* manifest.* ngsw* polyfills.* runtime.* safety-worker.js scripts.* styles.* worker-basic.min.js
git clone https://github.com/hergin/BusShuttleDriverApp.git
cd BusShuttleDriverApp/
npm install
ng build --configuration tbus
mv dist/BusLog/* ../.
cd ..
rm -rf BusShuttleDriverApp