#!/usr/bin/env ruby

a, b = gets.chomp.split(/ /)
a = a.to_i
b = b.to_i

if (a <= 8 && b <= 8)
  puts 'Yay!'
else
  puts ':('
end
