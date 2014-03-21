#!/usr/bin/env ruby

ENV['GEM_HOME'] = '/opt/ec/g2mg/gems'

require 'rubygems' 
require 'json'

puts JSON.pretty_generate(JSON[STDIN.read])
