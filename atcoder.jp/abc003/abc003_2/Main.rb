#!/usr/bin/env ruby

s = gets.chomp
t = gets.chomp


def hantei(s,t)
    array_s = s.split('')
    array_t = t.split('')

    array_s.each do |s_str|
#        puts s_str
#        puts array_t[0]
        if (s_str == '@' || array_t[0] == '@')
            if(s_str == array_t[0])
            else
                unless(s_str =~ /^[atcoder]$/ || array_t[0] =~ /^[atcoder]$/)
                    return "You will lose"
                end
            end
        elsif(s_str != array_t[0])
            return "You will lose"
        end
        array_t.shift
    end
    return "You can win"
end

puts hantei(s,t)