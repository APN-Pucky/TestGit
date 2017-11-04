#!/bin/bash

set -xue


#FILE=tuo_@VERSION@_${TUO_PLATFORM}.exe

#cp build-dir/tuo.exe $TUO_FILE

export TUO_FILE_ZIP="tuo.${TRAVIS_TAG}_32+64_bit.zip" 

zip -r "$TUO_FILE_ZIP" data/  SimpleTUOptimizerStarter.ahk SimpleTUOptimizerStarter.exe tuo.exe tuo-x86.exe 




set +xue
