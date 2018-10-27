#!/usr/bin/env ruby

n = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.to_i
end

a.sort!
newa = []
newb = []
if (a.size % 2 != 0)
  c = a.size / 2
  t = a.size / 2
  b = a.clone
#  if (a[c] - a[c - 1]).abs > (a[c] - a[c + 1]).abs
    newa << a.delete_at(c)
    t.times do
      newa << a.shift
      newa << a.pop if a.size > 0
    end
#  else
    newb << b.delete_at(c)
    t.times do
      newb << b.pop
      newb << b.shift if b.size > 0
    end
#  end
else
  c = a.size / 2 - 1
  t = a.size / 2
  b = a.clone
#  if (a[c] - a[-1]).abs > (a[c + 1] - a[0]).abs
    newa << a.delete_at(c)
#
    t.times do
      newa << a.pop
      newa << a.shift if a.size > 0
    end
#  else
    newb << b.delete_at(c + 1)
#
    t.times do
      newb << b.shift
      newb << b.pop if b.size > 0
    end
#  end


end
#p newa
res = 0
s = newa.shift
newa.each do |e|
  res += (s - e).abs
  s = e
end

res2 = 0
s = newb.shift
newb.each do |e|
  res2 += (s - e).abs
  s = e
end

puts [res, res2].max
