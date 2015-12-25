#Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an 
#acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with 
#several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. 
#So the string to the left would be false. The string will not be empty and will have at least one letter. 

def SimpleSymbols?(str)
  i = 1
  while i < str.length-1
    if (str[i].ord > 96 && str[i].ord < 123) || (str[i] >= 0 && str[i] <= 9)
      if str[i-1] != "+" || str[i-1] != "="
        return false
      elsif 
        str[i+1] != "+" || str[i+1] != "="
        return false
      else
        return true
      end
    end
    i += 1
  end
        

end


puts SimpleSymbols?("+d+=3=+s+") 
#puts SimpleSymbols?("f++d+") 