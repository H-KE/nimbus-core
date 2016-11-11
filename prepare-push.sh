#/bin/bash
cp -rf ../nimbus/platforms/ios/www/assets/ public/assets/
cp -rf ../nimbus/platforms/ios/www/build/ public/build/
rm public/build/main.js.map
cp ../nimbus/platforms/ios/www/index.html public/
cp ../nimbus/platforms/ios/www/service-worker.js public/
