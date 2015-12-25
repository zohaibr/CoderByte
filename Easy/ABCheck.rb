#Using the Ruby language, have the function ABCheck(str) take the str parameter being passed and return the string true 
#if the characters a and b are separated by exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would 
#result in true because there is exactly three characters between a and b). Otherwise return the string false. 

def ABCheck(str)
  i = 0
  str = str.split("").to_a
  while i < str.length
    if str[i] == "a" && str[i+4] == "b"
      return true
    elsif 
      str[i] == "b" && str[i+4] == "a"
      return true
    end
    i += 1
  end
  return false
end



puts ABCheck("lane borrowed")
puts ABCheck("after badly")
puts ABCheck("Laura sobs")
