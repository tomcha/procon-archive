#!/usr/bin/env ruby

(a, p) = gets.chomp.split(/ /).map(&:to_i)
pp = a * 3 + p
pie = (pp / 2).floor
puts pie

