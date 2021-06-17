def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
num2 = nil

puts "I'll divide 2 numbers for you."

while valid_number?(num1) == false 
  puts "Please enter a numerator:" 
  num1 = gets.chomp
 
  break if valid_number?(num1)
  puts "--- Invalid Input - Try Again ----"
end

while valid_number?(num2) == false ||  num2.to_i == 0
  puts "Please enter a denominator (cannot be 0):" 
  num2 = gets.chomp
  
  break if valid_number?(num2) && num2.to_i != 0
  puts "--- Invalid Input - Try Again ----"
end

puts "#{num1} / #{num2} = #{num1.to_i / num2.to_i}"


# ALTERNATE STUDENT SOLUTION FROM JOSHUA R SAMUELS 

def valid_number?(number_string)
  return false if !number_string
  number_string.to_i.to_s == number_string
end

def isFloat(number)
  number.to_f != number.to_i
end

numerator, denominator = nil

while(!valid_number?(numerator) || isFloat(numerator))
  puts ">>Enter the numerator:"
  numerator = gets.chomp
  puts "Invalid numerator" if !valid_number?(numerator)
  puts "Only whole numbers no decimals" if isFloat(numerator)
end

while(!valid_number?(denominator) || isFloat(denominator) || denominator.to_i == 0)
  puts ">>Enter the denominator:"
  denominator = gets.chomp
  puts "Invalid denominator" if !valid_number?(denominator)
  puts "Demoninator cannot be 0" if denominator.to_i == 0
  puts "Only whole numbers no decimals" if isFloat(denominator)
end

puts "#{numerator} / #{denominator} = #{numerator.to_f/denominator.to_f}"