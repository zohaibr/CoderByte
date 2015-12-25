def LetterCapitalize(str)
  str = str.split(' ')
  str.map {|w| w.capitalize }.join(' ')
end

puts LetterCapitalize("hello world")