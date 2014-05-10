#!/usr/bin/env ruby

n = gets.chomp.to_i

touhyou_data = Hash.new(0)
n.times do
  name = gets.chomp
  touhyou_data[name] += 1
end
array = touhyou_data.sort_by{|key,value| -value}

puts array[0][0]