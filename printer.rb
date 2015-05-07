#!/usr/bin/env ruby
# encoding: UTF-8

require 'sidekiq'

class Printer
  include Sidekiq::Worker

  def perform(str)
    str.each_char do |c|
      print c
      sleep 0.25
    end
    print "\n"
  end
end
