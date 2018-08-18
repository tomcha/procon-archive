#!/usr/bin/env ruby

(a, b) = gets.chomp.split(/ /).map(&:to_i)

result = (a - 1) * (b - 1)

puts result
