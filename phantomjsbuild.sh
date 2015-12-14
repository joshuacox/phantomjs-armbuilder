#!/bin/bash
LOCAL_PHANTOM_VERSION=0.0.1
sudo apt-get -y install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev
TMP=$(mktemp -d -t tmp.XXXXXXXXXX)
cd $TMP
echo "localphantom version $LOCAL_PHANTOM_VERSION" 
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0
yes|./build.sh --jobs 6
bin/phantomjs --version
cp bin/phantomjs /usr/local/bin/
rm -Rf $TMP
