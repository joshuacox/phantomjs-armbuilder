#!/bin/bash
pacman -S --noconfirm gcc make flex bison gperf ruby openssl fontconfig sqlite libpng libjpeg git python perl
TMP=$(mktemp -d -t tmp.XXXXXXXXXX)
cd $TMP
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0
./build.sh --jobs 2
rm -Rf $TMP
