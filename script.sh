#!/bin/sh
runtime_exec=$(node)
script=/tmp/script.js

if [ "$runtime" = "python" ]; then
  runtime_exec=$(python)
  script=/tmp/script.py
elif [ "$runtime" = "ruby" ]; then
  runtime_exec=$(ruby)
  script=/tmp/script.rb
fi

touch $script
cat - > $script
$runtime $script
rm $script
