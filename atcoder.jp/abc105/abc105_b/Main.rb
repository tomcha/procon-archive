#!/usr/bin/env ruby

n = gets.chomp.to_i


def search_cake(n)
  f = (100 / 4).floor
  s = (100 / 7).floor
  (0..f).each do |fn|
    (0..s).each do |sn|
      if(fn + sn == 0)
      elsif (n % (fn * 4 + sn * 7) == 0)
        return 'Yes'
      end
    end
  end
  return 'No'
end

result = 'No'
if (n < 4)
  result = 'No'
elsif (n % 4 == 0 || n % 7 == 0)
  result = 'Yes'
else
  result = search_cake(n)
end

puts result