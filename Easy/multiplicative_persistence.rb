#Using the Ruby language, have the function multiplicative_persistence(num) take the num parameter being passed 
#which will always be a positive integer and return its multiplicative persistence which is the number of times 
#you must multiply the digits in num until you reach a single digit. For example: if num is 39 then your program 
#should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

def multiplicative_persistence(num, count = 0)
  if num < 10
    return count
  else
    num = num.to_s.split("").inject(1){|total,n| total *= n.to_i }
    count += 1
  end
  multiplicative_persistence(num, count)
end

puts multiplicative_persistence(4)
puts multiplicative_persistence(25)
puts multiplicative_persistence(39)