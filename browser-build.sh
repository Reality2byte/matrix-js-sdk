#!/bin/bash
if [ "$1" == "-w" ]
then
    watchify index.js -o dist/browser-matrix-dev.js -v
else
    npm_package_version=${npm_package_version:="dev"}
    echo "Building version '$npm_package_version' to /dist"
    browserify index.js -o dist/browser-matrix-$npm_package_version.js
fi
