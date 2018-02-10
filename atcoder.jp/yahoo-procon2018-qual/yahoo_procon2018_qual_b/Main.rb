x, k = gets.chomp.split(/ /).map(&:to_i)

step = 10 ** k
res = (x / step) * step + step
puts res