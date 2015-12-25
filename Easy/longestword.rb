#Using the Ruby language, have the function LongestWord(sen) take the sen parameter 
#being passed and return the largest word in the string. If there are two or more words that 
#are the same length, return the first word from the string with that length. Ignore 
#punctuation and assume sen will not be empty. 

def LongestWord(sen)
  str = sen.split(" ")
  longest_word = str[0]
  str.each do |word|
    word.sub(/[\w\s]/, '')
    if longest_word.length < word.length
      longest_word = word
    end
  end
  longest_word
end


puts LongestWord("I love dogs")
puts LongestWord("Argument goes here")
puts LongestWord("fun&!! time")