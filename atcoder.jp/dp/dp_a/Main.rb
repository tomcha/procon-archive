#!/usr/bin/env ruby

n = gets.chomp.to_i
h = gets.chomp.split(/ /).map(&:to_i)
dp = []
# dp[n]は最小値
# 0..(n - 1)
dp[0] = 0
dp[1] = 0
dp[2] = (h[1] - h[0]).abs
(3..n).each do |i|
  dp[i] = [dp[i - 1] + (h[i - 1] - h[(i - 1) - 1]).abs, dp[i - 2] + (h[i - 1] - h[(i - 2) - 1]).abs].min
end
#p dp
puts dp[n]
