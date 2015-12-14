#!/bin/bash
pacman -S --noconfirm gcc make flex bison gperf ruby openssl fontconfig sqlite libpng libjpeg git python perl
TMP=$(mktemp -d -t tmp.XXXXXXXXXX)
cd $TMP
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0
yes|./build.sh --jobs 6
bin/phantomjs --version
cp bin/phantomjs /usr/local/bin/
rm -Rf $TMP
