#Using the Ruby language, have the function SwapCase(str) take the str parameter and swap the case of each character. For #example: if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are. 

def swapcase(str)
  str = str.split("")
  str.each do |char|
    if char == char.downcase!
      char.upcase
    elsif 
      char == char.upcase!
      char.downcase
    end
  end
  str.join("")
end

      
puts swapcase("Hello-LOL") == "hELLO-lol"
puts swapcase("Sup DUDE!!?") == "sUP dude!!?"