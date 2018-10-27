#!/usr/bin/env ruby

(a, b, k) = gets.chomp.split(/ /).map(&:to_i)


def eat(f, s)
  if (f % 2 != 0)
    f = f - 1
  end
  f /= 2
  s += f
  [s, f]
end

f = a
s = b
k.times do

  (f, s) = eat(f, s)
end

if (k % 2 != 0)
  res = "#{s} #{f}"
else
  res =  "#{f} #{s}"
end
puts res