#Using the Ruby language, have the function LetterChanges(str) take the str parameter being passed and modify it 
#using the following algorithm. Replace every letter in the string with the letter following it in the alphabet 
#(ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return
#this modified string. 


def LetterChanges(str)
  new_string = []
  str = str.split(" ")
  str.each do |word|
      new_string << word_changes(word)
  end
  new_string.join(" ")
end


def word_changes(word)
  new_word = []
    word.each_byte do |i|
      if i == ?z
        new_word << "a"
      else
        new_word << (i+1).chr
      end
    end
    new_word.each do |word|
      if word == "a" || word == "e" || word == "i" || word == "o" || word == "u"
        word.upcase!
      end
end

new_word.join("")

end



puts LetterChanges("argument is great")
puts LetterChanges("hello*3")
puts LetterChanges("fun times!")