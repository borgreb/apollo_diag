#!/bin/bash

while true; do sleep 3; $1 2>/dev/null | ./util/jsonformatter.rb | grep queue_items; done
