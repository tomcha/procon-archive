#!/usr/bin/env ruby

(n, m, x, y) = gets.chomp.split(/ /).map(&:to_i)
xs = gets.chomp.split(/ /).map(&:to_i)
ys = gets.chomp.split(/ /).map(&:to_i)

xs << x
ys << y

xs.sort!
ys.sort!

if (xs[-1] < ys[0])
  puts 'No War'
else
  puts 'War'
end