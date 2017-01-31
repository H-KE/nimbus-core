#/bin/bash
cp -rf ../nimbus/www/assets/ public/assets/
cp -rf ../nimbus/www/build/ public/build/
rm public/build/main.js.map
cp ../nimbus/www/index.html public/
cp ../nimbus/www/service-worker.js public/
