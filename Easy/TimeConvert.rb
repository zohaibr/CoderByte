def TimeConvert(num)
  mins = num % 60 
  if num < 60
    hours = 0
  else
    hours = num / 60
  end
  
  puts "#{hours}:#{mins}"

  return num 
         
end   
TimeConvert(126)
TimeConvert(45)

