#! /bin/bash
ps axu | grep welc0me22f | grep -v grep  | awk '{print $2}' | xargs kill -9
./ss ss.yunba.io welc0me22f 2> /dev/null &
