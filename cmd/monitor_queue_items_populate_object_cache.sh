#!/bin/bash

while true; do sleep 3; ./cmd/queue_stat_populate_object_cache.sh 2>/dev/null | ./util/jsonformatter.rb | grep queue_items; done
