require 'csv'
require 'time'

#devide time in 6 (0:00-3:59,4:00-7:59,8:00-11:59,12:00-3:59...)
#super_early,early,regular1,regular2,late,super_late
#assign to each value
#ascending order. maybe array?


#def onlytime(RegDate)
 # date, time = RegDate.slpit(" ")
  #return time
#end




contents = CSV.open('event_attendees.csv', headers: true)

onlyhours = []

contents.each do |row|
   time = row[1]
    #puts time
    dates, hours = time.split
    #puts hours
      onlyhour, minutes = hours.split(":")
      onlyhours << onlyhour.to_i
      
   # parsed_time = Time.parse(hours)
end

def counter(onlyhours)
      se = 0
      ke = 0
      ro = 0
      rt = 0
      kl = 0
      sl = 0
      #sets superearly, kindaearly etc to 0, and will add one as we find values that fit into the categories
      #puts onlyhour
      onlyhours.each do |hour|
        if hour < 4
          se = se + 1
        
        elsif hour < 8
          ke = ke + 1
        
        elsif hour < 12
          ro = ro + 1

        elsif hour < 16
          rt = rt + 1
          
        elsif hour < 20
          kl = kl + 1
        
        elsif hour < 24
          sl = sl + 1
        end
      end
      puts "Super Early (0-4): #{se}, Kinda Early (4-8): #{ke}, Regular 1 (8-12): #{ro}, Regular 2 (12-16): #{rt}, Kinda Late (16-20): #{kl}, Super Late (20-24): #{sl}"
end

counter(onlyhours)









#dateandtime = Time.new(time)
#onlyhour = dateandtime.hour

#puts onlyhour



#def count_and_sort(RegDate)
#end

