#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)
a = gets

scale = k - 1
length = n - 1
min = length / scale
min += 1 if length % scale != 0
puts min