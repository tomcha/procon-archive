#!/usr/bin/env ruby

def check_str(str)
    one = ["A","D","O","P","Q","R"]
    str.split(//).each do |s|
        return "no" if s == "B"
    end
    return "no" if one.find{|s| s == str[0]} != nil
    return "no" if one.find{|s| s == str[1]} != nil
    return "no" if one.find{|s| s == str[2]} == nil
    return "no" if one.find{|s| s == str[3]} != nil
    return "yes"
end

str = gets.chomp
puts check_str(str)
