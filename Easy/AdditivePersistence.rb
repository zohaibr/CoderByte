#Using the Ruby language, have the function AdditivePersistence(num) take the num parameter being passed 
#which will always be a positive integer and return its additive persistence which is the number of times
#you must add the digits in num until you reach a single digit. For example: if num is 2718 then your program 
#should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9

def additive_persistence(num, count = 0)
  if num <= 9
    return count
  else
    num = num.to_s.split("").inject(0) { |sum,n| sum += n.to_i }
    count += 1
  end
  additive_persistence(num, count)
end



puts additive_persistence(19)
puts additive_persistence(4)
