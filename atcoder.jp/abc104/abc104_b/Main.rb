#!/usr/bin/env ruby

s = gets.chomp
result = 'WA'
if (s =~ /^A[a-z]+C[a-z]+$/)
  result = 'AC'
end
puts result
