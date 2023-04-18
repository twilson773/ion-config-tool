#!/bin/bash
#
#  push local json files (json_latest) to  master (../json)

local=json_latest
master=../editor/src/json  

echo 'push local json files (json_latest) to  master (../json)'
echo ''

echo "pushing cmdTypes.json to $master"
cp -p $local/cmdTypes.json    $master

echo "pushing paramTypes.json to $master"
cp -p $local/paramTypes.json  $master

echo "pushing patterns.json to $master"
cp -p $local/patterns.json    $master

echo "pushing ionVersions.json to $master"
cp -p $local/ionVersions.json $master
