require 'csv'
require 'time'

contents = CSV.open('event_attendees.csv', headers: true)

onlyhours = []

contents.each do |row|
   time = row[1]
    dates, hours = time.split
      onlyhour, minutes = hours.split(":")
      onlyhours << onlyhour.to_i
end

def counter(onlyhours)
      se = 0
      ke = 0
      ro = 0
      rt = 0
      kl = 0
      sl = 0
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

