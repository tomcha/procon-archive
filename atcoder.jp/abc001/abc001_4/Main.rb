#!/usr/bin/env ruby

timebelt = Array.new(24 * 12 + 1,0)
#p timebelt

n = gets.chomp.to_i

timedata = Array.new()
n.times do
    timedata << gets.chomp.split("-")
end
timedata.each do |element|
    element[0] = element[0].to_i
    element[1] = element[1].to_i
    
    if((element[0] % 5) > 0)
        (element[0] -= element[0] % 5)
    end
    if((element[1] % 5) > 0)
        (element[1] += (5 - element[1] % 5))
        if(element[1] % 100 == 60)
            element[1] = element[1] + 40
        end
    end
end

#p timedata 
timedata.each do |element|
    first_hour = element[0] / 100
    first_min = (element[0] % 100) /5
    start = first_hour * 12 + first_min

    last_hour = element[1] / 100
    last_min = (element[1] % 100) /5
    last = last_hour * 12 + last_min - 1

#    puts start
#    puts last

    (start..last).each do |i|
        timebelt[i] = 1
    end
end

# p timebelt

anser = Array.new
timebelt.each_with_index do |i,idx|
    if( i == 1 && (timebelt[idx - 1] == 0 || idx == 0))
        anser << idx 
    end
    if( i == 1 && (timebelt[idx + 1] == 0 || idx == 288))
        anser << idx + 1
    end
end

anser.map! do |i|
    anser_hour = ( i - i % 12)/12 * 100
    anser_min = ( i % 12) * 5
    "%04d" % (anser_hour + anser_min)
end

while( anser.size > 0)
    text = anser.shift.to_s + '-'
    text += anser.shift.to_s
    puts text
end