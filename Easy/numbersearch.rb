#Using the Ruby language, have the function NumberSearch(str) take the str parameter, search for all the numbers in 
#the string, add them together, then return that final number. For example: if str is "88Hello 3World!" the output 
#should be 91. You will have to differentiate between single digit numbers and multiple digit numbers like in the 
#example above. So "55Hello" and "5Hello 5" should return two different answers. Each string will contain at least 
#one letter or symbol. 

def number_search(str)
  num_hold = []
  num_arr = []

  str = str.split("")

  str << "end"

  str.each do |char|
    if %w(0 1 2 3 4 5 6 7 8 9).include? char
      num_hold << char
    else
      num_arr  << num_hold.join.to_i
      num_hold = []
    end
  end

  num_arr.inject(0) {|sum, n| sum + n}
end


puts number_search("75Number9") #== 84
puts number_search("10 2One Number*1*") #== 13