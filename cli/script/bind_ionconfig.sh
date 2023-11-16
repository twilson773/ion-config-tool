#!/bin/bash
#
#   bind_ionconfig.sh
#
# bind sub modules together for complete ionconfig.js
#
# inputs:  ../src
#
# outputs: ../bin/ionconfig.js
#
# author: Rick Borgen
#
echo "Binding together ionconfig.js"

src=../src
bin=../bin

echo "#!/usr/bin/env node" > $bin/ionconfig.js
echo "// THIS FILE IS AUTOMATICALLY GENERATED DURING THE BUILD PROCESS"   >>$bin/ionconfig.js
echo "// SEE THE MAKE SCRIPT FOR WHICH SOURCE FILES ARE USED TO BUILD IT" >> $bin/ionconfig.js

cat $src/ionconfig_main.js >> $bin/ionconfig.js
cat $src/ionloader.js      >> $bin/ionconfig.js
cat $src/checkion.js       >> $bin/ionconfig.js
cat $src/appfunc.js        >> $bin/ionconfig.js
cat $src/clone.js          >> $bin/ionconfig.js
cat $src/ionfunc.js        >> $bin/ionconfig.js
cat $src/allconfigs.js     >> $bin/ionconfig.js

chmod +x  $bin/ionconfig.js
