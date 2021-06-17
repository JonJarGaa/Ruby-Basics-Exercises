=begin

When the user inputs 10, we expect the program 
to print The result is 50!, but that's not the 
output we see. Why not?

HINT:  
  Be aware of the type of object your variables reference.

HINT: 
  Remember that all user input will be a String. In order 
  to perform Integer multiplication, we need to first convert the 
  user input from a String to an Integer.

=end

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"



=begin

MY ANSWER: 



SOLUTION:



=end