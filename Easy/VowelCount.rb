#Using the Ruby language, have the function VowelCount(str) take the str string parameter being passed and return 
#the number of vowels the string contains (ie. "All cows eat grass" would return 5). 
#Do not count y as a vowel for this challenge. 


def VowelCount(str)
  count = 0
  i = 0
  str = str.downcase.split("")
  while i < str.length
    if str[i] == "a" || str[i] == "e" || str[i] == "i" || str[i] == "o" || str[i] == "u"
      count += 1
    end
    i += 1
  end
  return count
end

puts VowelCount ("All cows eat grass")
