#Using the Ruby language, have the function MeanMode(arr) take the array of numbers stored in arr and 
#return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 
#because the mode (3) equals the mean (3)). 
#The array will not be empty, will only contain positive integers, and will not contain more than one mode. 

def MeanMode(arr)
  mean = arr.inject(0) {|sum, number| sum + number} / arr.size
  mode = Hash.new(0)
  modal = arr.each {|number| mode[number] += 1}
  modal = mode.select { |key ,value| value == mode.values.max }.keys
  mean == modal[0] ? 1:0

end



puts MeanMode([1,2,3]) == 0
puts MeanMode([4, 4, 4, 6, 2]) == 1