def AlphabetSoup(str)
  str = str.split("")
  str.sort_by! do |letter|
    letter
  end
  str.join("")
end



puts AlphabetSoup("coderbyte")
puts AlphabetSoup("holla")