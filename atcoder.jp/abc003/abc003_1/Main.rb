n = gets.chomp.to_i
anser = 0
for i in (1..n)
    anser += 10000.0*i/n 
end

puts printf("%d",anser)