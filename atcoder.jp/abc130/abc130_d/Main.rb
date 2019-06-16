#!/usr/bin/env ruby

n, k = gets.chomp.split(/ /).map(&:to_i)

a = []
a = gets.chomp.split(/ /).map(&:to_i)
ans = []

s = a.size

r = 0
l = 0
res = a[r]
while (r < s && l < s)
#  res += a[r]
#  puts "r:#{l}, l:#{r}, res:#{res}"
  if res >= k
    ans << [l, r, res]
    res -= a[l]
    if (r == l)
      r += 1  
      l += 1
      res = a[r]
    else
      l += 1
    end
  else
    r += 1
    res += a[r] if r < s
  end
end
#p ans
ko = 0
ans.each do |e|
  ko += (s - e[1])
end
puts ko
