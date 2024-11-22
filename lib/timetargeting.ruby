require 'csv'

#devide time in 6 (0:00-3:59,4:00-7:59,8:00-11:59,12:00-3:59...)
#super_early,early,regular1,regular2,late,super_late
#assign to each value
#ascending order. maybe array?


#def onlytime(RegDate)
 # date, time = RegDate.slpit(" ")
  #return time
#end




contents = CSV.open('event_attendees.csv', headers: true)
contents.each do |row|
    time = row[1]
    puts time
    return time
end

dateandtime = Time.new(time)
onlyhour = dateandtime.hour

puts onlyhour


#def count_and_sort(RegDate)
#end

