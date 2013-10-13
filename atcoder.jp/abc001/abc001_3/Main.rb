#!/usr/bin/env ruby

digarray = ['N','NNE','NE','ENE','E','ESE','SE','SSE','S','SSW','SW','WSW','W','WNW','NW','NNW','N']
disarray = [0,0.25,1.55,3.35,5.45,7.95,10.75,13.85,17.15,20.75,24.45,28.45,32.65]
disarray.map! do |i|
    (i * 60).to_i
end

disarray.reverse!

deg,dis = gets.chomp.split(" ")
deg = deg.to_f
dis = dis.to_i

dig_index = ( deg + 112.5).to_i / 225
dig = digarray[dig_index]

w = 0
disarray.each_with_index do |element,idx|
#    puts idx
#    puts element
    if( element <= dis)
        w = 12 - idx
        break
    end
end
dig = 'C' if w == 0

puts "#{dig} #{w}"