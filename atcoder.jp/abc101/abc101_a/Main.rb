#!/usr/bin/env ruby

s = gets.chomp.split(//)
i = 0
s.each do |p|
  if (p == '+')
    i += 1
  else
    i -= 1
  end
end
puts i