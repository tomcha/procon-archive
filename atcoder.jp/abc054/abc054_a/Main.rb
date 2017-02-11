(a, b) = gets.chomp.split(' ')
a = a.to_i
b = b.to_i

a = a == 1 ? 14 : a
b = b == 1 ? 14 : b

if (a > b)
  puts 'Alice'
elsif(a < b)
  puts 'Bob'
else
  puts 'Draw'
end