#Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers
#stored in arr and return the second lowest and second greatest numbers, respectively, 
#separated by a space. For example: if arr contains [7, 7, 12, 98, 106] the output should
#be 12 98. The array will not be empty and will contain at least 2 numbers.
#It can get tricky if there's just two numbers! 

def SecondGreatLow(arr)
  max_index = arr.index(arr.max)
  min_index = arr.index(arr.min)
  arr[max_index] == arr[max_index-1] ?  second_max = arr[max_index-2] : second_max = arr[max_index-1]
  arr[min_index] == arr[min_index+1] ? second_min = arr[min_index+2] : second_min = arr[min_index+1]
  return "#{second_min} #{second_max}"
end

puts SecondGreatLow([7,7,12,98,106])
puts SecondGreatLow([1, 42, 42, 180])
puts SecondGreatLow([4, 90])
