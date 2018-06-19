#!/usr/bin/env ruby

n, m = gets.chomp.split(/ /).map(&:to_i)
array = []
n.times do
  array << gets.chomp.split(/ /).map(&:to_i)
end

pattern = Array.new
f = [1, -1]
s = [1, -1]
t = [1, -1]

f.each do |i|
  s.each do |j|
    t.each do |k|
      pattern << [i, j, k]
    end
  end
end

ans = 0

pattern.each do |pat|
  kari = Array.new
  array.each do |e|
    kari << (pat[0] * e[0] + pat[1] * e[1] + pat[2] * e[2])
  end
  kari.sort!{|a, b| (b<=>a)}
  num = 0
  (0...m).each do |l|
    num += kari[l]
  end
  ans = num if ans < num
end

puts ans