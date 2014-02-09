#!/usr/bin/env ruby

n = gets()
n = n.to_i

s = 2.0
until ( n / s) < 2 do
    if( n % s == 0)
        str = 'NO'
        break
    else
        s += 1
    end
end
str ||= 'YES'
puts str
