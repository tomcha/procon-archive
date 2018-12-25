#!/usr/bin/env ruby

n = gets.to_i
a = []
n.times do
  a << gets.chomp.to_i
end

result = 'second'
a.each do |i|
  if (i % 2 == 1)
    result = 'first'
  end
end

puts result