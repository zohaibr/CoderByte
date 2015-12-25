#Using the Ruby language, have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str.
#For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 

def DashInsert(str)
  str.chars
     .each_cons(2)
     .map { |i,j| (i.to_i.odd? && j.to_i.odd?) ? i+'-' : i }
     .join + str[-1]
end

  




puts DashInsert("99946") == 9-9-946
puts DashInsert("56730") == 567-30