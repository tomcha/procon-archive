#!/usr/bin/env ruby

s = gets.chomp.split('/').map(&:to_i)
if (s[1] > 4)
  puts 'TBD'
else
  puts 'Heisei'
end
