str = gets.chomp
res = 'NO'
if (str =~ /^yah([a-z])([a-z])$/)
  if ($1 == $2)
    res = 'YES'
  end
end
puts res