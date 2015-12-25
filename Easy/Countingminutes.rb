#Using the Ruby language, have the function CountingMinutesI(str) take the str parameter
#being passed which will be two times (each properly formatted with a colon and am or pm)
#separated by a hyphen and return the total number of minutes between the two times.
#The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then
#the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

def CountingMinutesI(str)
  time1, time2 = str.split("-")
  time_regex = /^(\d+):(\d+)(am|pm)/
  
  hour1, minute1, meridian1 = time1.scan(time_regex).first
  hour2, minute2, meridian2 = time2.scan(time_regex).first

  if (meridian1 == 'pm')
    hour1 = hour1.to_i + 12
  end 

  if (meridian2 == 'pm')
    hour2 = hour2.to_i + 12
  end

  hour1 = hour1.to_i * 60
  hour2 = hour2.to_i * 60

  total_start_time = hour1 + minute1.to_i
  total_end_time = hour2 + minute2.to_i

  diff = total_end_time - total_start_time
  if diff < 0
    diff = diff + 1440 # add 24 hours to account for the day
  else
    diff
  end


end

puts CountingMinutesI("9:00am-10:00am")
puts CountingMinutesI("1:00pm-11:00am")