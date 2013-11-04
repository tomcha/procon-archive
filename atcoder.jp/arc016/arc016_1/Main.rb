#!/usr/bin/env ruby

(num,ans) = gets.chomp.split(" ")
num = num.to_i
ans = ans.to_i

kouho = rand(num) + 1
if(kouho == ans)
    if((kouho + 1) >num)
        kouho = kouho -1
    else
        kouho = kouho + 1
    end
end
puts kouho