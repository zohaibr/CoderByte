#Using the Ruby language, have the function Palindrome(str) take the str parameter being passed and return 
#the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return 
#the string false. For example: "racecar" is also "racecar" backwards. Punctuation and numbers will not be part of the string


def Palindrome?(str)
  first = 0
  last = str.length - 1
  if str[first] == str[last]
    return true
    first += 1
    last -= 1
  else
    return false
  end
  
end

puts Palindrome?("racecar")