#Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an 
#acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with 
#several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. 

def SimpleSymbols(str)
  i = 0
  while i < str.length
    if str[0] =~ /[a-z]/ || str[-1] =~ /[a-z]/
      return false
    else
      if str[i] =~ /[a-z]/
        if str[i-1] == "+" && str[i+1] == "+"
          return true
        else
          return false
        end
      end
    end
   i += 1
  end 
end









puts SimpleSymbols("+d+=3=+s+") 
puts SimpleSymbols("f++d+") 