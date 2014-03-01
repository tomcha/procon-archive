#!/usr/bin/env ruby

h,b = gets.split(" ").map{|str| str.to_f}
h = h/100

puts (b * h * h).round(3)