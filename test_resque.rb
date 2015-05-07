#!/usr/bin/env ruby
# encoding: UTF-8

require 'resque'

class Printer
  @queue = :print

  def print(str)
    print "From printer: "
    str.each_byte do |b|
      print str[b]
      sleep 1
    end
  end
end

puts "main: before enqueue"
result = Resque.enqueue(Printer, :print, ARGV.first)
puts "main: status = #{result}"
puts "main: after enqueue"
