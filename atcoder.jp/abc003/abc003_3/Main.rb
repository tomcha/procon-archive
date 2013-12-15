#!/usr/bin/env ruby

(n,k)= gets.chomp.split(' ')
array = gets.chomp.split(' ').map{|item| item.to_i}
array.sort!

n = n.to_i
k = k.to_i


class Chokudai
    def study (n,k,rate_array)
        if(n < k)
            k = n
        end
        anser = 0
        rate_array[n-k,k].each do |score|
            anser = (anser + score) / 2.0
        end
        return anser
    end
end


chokudai = Chokudai.new()
printf("%.6f\n",chokudai.study(n,k,array))