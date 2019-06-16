#!/usr/bin/env ruby

n, x = gets.chomp.split(/ /).map(&:to_i)
l = []
l = gets.chomp.split(/ /).map(&:to_i)

c = 1
loc = 0
l.each do |i|
  if loc + i <= x
    c +=1
    loc += i
  else
    break
  end
end
puts c
