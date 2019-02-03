#!/usr/bin/env ruby

n = gets.chomp.to_i

l = gets.chomp.split(/ /).map(&:to_i)
l.sort!

last = l.pop
if ( last < l.inject(0){|s, n| s += n})
  puts 'Yes'
else
  puts 'No'
end