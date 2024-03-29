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
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"



=begin

SOLUTION:

https://launchschool.com/exercises/fe8b72af

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

Discussion

We can fix this problem on line 6 by calling String#to_i on the user input.

=end