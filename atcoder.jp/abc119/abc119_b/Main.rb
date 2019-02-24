#!/usr/bin/env ruby

n = gets.chomp.to_i

money = 0
n.times do
  (x, y) = gets.chomp.split(/ /)
  if (y == 'JPY')
    money += x.to_i
  else
    jpy = x.to_f * 380000.0
    money += jpy
  end
end

puts money