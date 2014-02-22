#!/usr/bin/env ruby

array = [1,2,3,4,5,6]

n = gets.chomp.to_i
l =  (n % 30) / 5

l.times do 
    kari = array.shift
    array.push(kari)
end

(n % 5).times do |i|
     kari = array[i % 5]
     array[i % 5] = array[(i % 5) + 1]
     array[i % 5 + 1] = kari
end
puts array.join('')