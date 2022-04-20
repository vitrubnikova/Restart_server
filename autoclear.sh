#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

echo "Autoclear"
echo "====================================="

echo Completion of active processes
killall node
killall rethinkdb

echo Clearing cash folders...
cd /Users/user/Library/Developer/Xcode
rm -R DerivedData
cd /Users/user/stf
rm -R rethinkdb_data
rm -rf /Users/user/.Trash

echo Starting server...
cd
open -a Terminal.app ./serverstarter.sh
cd /Users/user/stf
rethinkdb --bind all
