#!/usr/bin/env ruby
# encoding: UTF-8

puts "main: before perform"
Printer.perform_async(ARGV.first)
puts "main: after perform"
