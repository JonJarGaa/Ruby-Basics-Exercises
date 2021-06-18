=begin

Write a program that obtains two Integers from the user, 
then prints the results of dividing the first by the second. 
The second number must not be 0, and both numbers should be 
validated using this method:

This method returns true if the input string can be converted 
to an Integer and back to a string without loss of information, 
false otherwise. It's not a perfect solution in that some inputs 
that are otherwise valid (such as 003) will fail, but it is 
sufficient for this exercise.

Examples:

$ ruby division.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
>> 8 / 2 is 4

$ ruby division.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed.
>> Please enter the numerator:
9
>> Please enter the denominator:
4
>> 9 / 4 is 2


$ ruby division.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invalid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
>> 10 / 5 is 2


=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do 
  puts "I'll divide 2 numbers for you. Please enter the numerator: "
  num1 = gets.chomp
  
  puts "Please enter the denomiator (number must greater than '0'): "
  num2 = gets.chomp
  
  if valid_number?(num1) && valid_number?(num2) && num2 != 0
    puts "#{num1} / #{num2} = #{num1.to_i / num2.to_i}"
    break
  end  
  puts "Error: Invalid input... Try Again"
end






  

=begin

MY ANSWER: 

** NOT EASY FIRST GO ***

MY ALTERNATE ANSWSER for individual variable validation: 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
num2 = nil

puts "I'll divide 2 numbers for you."

while valid_number?(num1) == false 
 puts "Please enter the numerator:" 
 num1 = gets.chomp
 break if valid_number?(num1)
 puts "--- Invalid Input - Try Again ----"
end

while valid_number?(num2) == false 
  puts "Please enter the denominator (greater than 0):" 
  num1 = gets.chomp
  break if valid_number?(num2)
  puts "--- Invalid Input - Try Again ----"
end

puts "#{num1} / #{num2} = #{num1.to_i / num2.to_i}"


### ALTERNATE SOLUTION #2 SECOND GO:

num1 = nil
num2 = nil

while valid_number?(num1) == false || valid_number?(num2) == false || num1 == nil || num2 == nil || (num1.to_i * num2.to_i).positive? == true 
  puts "Please enter a number, positive or negative:  "
  num1 = gets.chomp

  puts "Please enter another (non 0) number, positive or negative (opposite sign of the first):  "
  num2 = gets.chomp
end

puts "#{num1.to_i} divided by #{num2.to_i} = #{ num1.to_i / num2.to_i }!"




SOLUTION:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

Discussion

In this exercise, we solicit two pieces of independent information, 
so we need separate loops for each number. The first should look 
reasonably familiar by now, but the second is a bit more complex due 
to the additional requirement that the denominator not be 0. There 
are a number of different ways to do this; we just chose a way that 
we feel is reasonably clear.

In our last two lines, we convert the two inputs to integers, divide 
them, and then print the result. Note that we are doing integer division, 
so 9 / 4 is 2, not 2.25.



=end