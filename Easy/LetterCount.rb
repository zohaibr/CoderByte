#Using the Ruby language, have the function LetterCountI(str) take the str parameter being passed and return 
#the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should 
#return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
#If there are no words with repeating letters return -1. Words will be separated by spaces. 


def LetterCountI(str)

  str = str.split
  repeating_letters = []
  str.each do |word| 
    word = word.split("")
    letters = Hash.new(0)
    word.each { |letter| letters[letter] += 1 }
    selected_letters = letters.select { |key, value| value > 1 }
    repeating_letters << selected_letters.keys.length
  end
 if (repeating_letters.select {|l| l >= 1}).empty?
   return -1
  else
    max = repeating_letters.max
    return str[repeating_letters.index(max)]
  end
end


puts LetterCountI("Today, is the greatest day ever!")
