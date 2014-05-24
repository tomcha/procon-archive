#!/usr/bin/env ruby
# encoding: utf-8

n = gets.chomp.to_i

array = Array.new
n.times do
  array << gets.chomp.to_i
end

array.sort!

max = array.pop
while (max == array[-1])
  array.pop
end
puts array[-1]