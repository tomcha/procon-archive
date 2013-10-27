#!/usr/bin/env ruby

word = gets.chomp
array = Array.new()
array = word.split('')
#p array
array.delete_if {|s| s =~ /[aiueo]/}

puts array.join 