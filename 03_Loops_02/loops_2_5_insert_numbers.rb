=begin

Modify the code below so that the user's input gets added 
to the numbers array. Stop the loop when the array contains 
5 numbers.

HINT: The Array#push method is useful for adding elements to an array.

=end

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input

  if numbers.length == 5
    break
  end
end
puts "Your saved numbers are #{numbers}."


=begin

MY ANSWER: 
My answer is similar to solution except the solution uses '.push' method
and a 'break if' statement one-liner instead of if size ==, then break.


SOLUTION:

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

Discussion

When dealing with user input, it's likely the input will either 
be evaluated or added to something. 

In this case, we're adding an integer to an array. Array#push works 
well for this because it will take the value of input and add it to 
the end of the numbers array, which is exactly what we need.

Now that we are handling the input properly, the next step is to 
stop the loop. We can accomplish this by taking advantage of the 
Array#size method. #size returns the number of elements contained 
in the caller. 
  
To stop the loop when numbers contains 5 elements, we can simply add
a break with an if numbers.size == 5 condition.

=end