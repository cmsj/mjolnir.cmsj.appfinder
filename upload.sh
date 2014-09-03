#!/bin/bash

if [ "$1" == "" ]; then
    echo "Usage: upload.sh VERSION"
    exit 1
fi

VERSION="$1"

luarocks pack mjolnir.cmsj.appfinder
moonrocks upload --skip-pack mjolnir.cmsj.appfinder-${VERSION}.rockspec
moonrocks upload mjolnir.cmsj.appfinder-${VERSION}.all.rock
