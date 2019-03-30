#!/usr/bin/env ruby

n = gets.chomp.to_i

caps = gets.chomp.split(//)

r = 0
caps.each do |c|
  if (c == 'R')
    r += 1
  end
end

if (r > (caps.size / 2))
  puts "Yes"
else
  puts "No"
end
