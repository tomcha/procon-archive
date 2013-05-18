hako = gets.chomp.split(' ')
mono = gets.chomp.split(' ')

hako.map!{|elem|elem.to_i}
mono.map!{|elem|elem.to_i}

ans = 0
3.times do |i|
    kari = (hako[0]/mono[i])*(hako[1]/mono[i-1])*(hako[2]/mono[i-2])
    kari2 = (hako[0]/mono[i])*(hako[1]/mono[i-2])*(hako[2]/mono[i-1])
    kari = kari2>kari ? kari2 : kari
    if ans<kari 
        ans = kari 
    end
end
puts ans