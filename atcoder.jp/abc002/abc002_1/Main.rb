#!/usr/bin/env ruby

(x,y) = gets.chomp.split(" ")
if ( x.to_i > y.to_i )
    puts x
else
    puts y
end