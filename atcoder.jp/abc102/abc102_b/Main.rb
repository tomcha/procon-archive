#!/usr/bin/env ruby

n = gets.chomp.to_i
a = gets.chomp.split(/ /).map(&:to_i)

a.sort!

ans = a[-1] - a[0]
puts ans