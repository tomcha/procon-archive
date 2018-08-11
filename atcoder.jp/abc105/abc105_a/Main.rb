#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)

if (n % k == 0)
  result = 0
else
  result = 1
end

puts result