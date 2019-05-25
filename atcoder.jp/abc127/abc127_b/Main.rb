#!/usr/bin/env ruby

(r, d, x) = gets.chomp.split(/ /).map(&:to_i)
c = x

10.times do
  n = c * r - d
  puts n
  c = n
end
