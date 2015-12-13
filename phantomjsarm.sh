#!/bin/bash
sudo apt-get install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev
TMP=$(mktemp -d -t tmp.XXXXXXXXXX)
cd $TMP
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0
./build.sh --jobs 2
rm -Rf $TMP
