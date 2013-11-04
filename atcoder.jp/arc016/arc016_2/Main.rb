#!/usr/bin/env ruby

num = gets.chomp.to_i

array = []
num.times do
    array.push(gets.chomp)
end

kariarray = Array.new(0)
counter = 0
array.each do |element|
    if(element.match(/[xo]/))
        string_array = element.split("")
        string_array.each_with_index do |string,index|
            if(string == "x")
                counter += 1
                kariarray[index] = 0
            elsif(string == "o")
                if(kariarray[index] != 1)
                    counter += 1
                    kariarray[index] = 1
                end
            else
                kariarray[index] = 0
            end

        end
    else
        kariarray[0..9] = 0
    end
end
puts counter