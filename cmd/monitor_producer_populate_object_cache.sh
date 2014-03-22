#!/bin/bash

while true; do sleep 1; ./cmd/queue_stat_populate_object_cache.sh 2>/dev/null | ./util/jsonformatter.rb | sed -n '/producers/,/\,/p'| grep label | sed -e 's/^.*\/\([0-9.]*\):.*$/\1/g'; done|while read ln; do nslookup $ln|grep name|awk '{print $4}'; done
