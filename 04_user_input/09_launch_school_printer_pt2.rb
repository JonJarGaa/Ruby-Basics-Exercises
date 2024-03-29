=begin

In an earlier exercise, you wrote a program that prints 
'Launch School is the best!' repeatedly until a certain 
number of lines have been printed. Our solution looked 
like this:

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

Modify this program so it repeats itself after each 
input/print iteration, asking for a new number each 
time through. The program should keep running until 
the user enters q or Q.

Examples:

$ ruby lsprint2.rb
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
q

=end
puts "I'll tell you who's best. How many times should I tell you?" 

loop do
  puts "  >>> Enter a number greater than 3 OR Type 'q' to quit:"
  num = gets.chomp
  
  if num.downcase == "q"
    puts "Goodbye!"
    break

  elsif num.to_i < 3 
    puts "Error Try Again"
    next
  
  else num.to_i.times { |x| puts "Launch School is the best!" }
  end 
end






=begin

MY ANSWER: 
shorter than solution

Here is my Second go at it: 

puts "Type how many lines you want me to print the answer to 'Who's the best?'"

loop do
  puts "(Enter a number 3 or greater) ('Q' to Quit): "
  num = gets.chomp
  
  if num.downcase == "q"
    break
  
  elsif num.to_i < 3
    puts "Error: Please input a number 3 or greater:"
    next
  
  else
    num.to_i.times { |x| puts "Launch School is the best!"}
    #puts "Launch School is the best!".num.to_i.times
  end
end

puts "Thanks for wanting to know the best online programming school.
                        Goodbye!"



SOLUTION:


loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

Discussion

Our solution requires an outer loop to control the repetition of the input and output processes. We also need to change how inputs are handled since we can have both numeric and alphabetic (q or Q) inputs, and must account for both.

We store the actual input string in input_string, get rid of the newline, and convert it to lowercase. We then break out of the inner loop if input_string is a q. The rest of the inner loop is just like our original program: we convert the input to a number, and ensure the value is at least 3.

Our inner loop is followed by a second break if input_string == 'q' to break out of the outer loop if the user quit. This is necessary since a break inside a loop always exits the innermost containing loop, so the break in the inner loop can't exit the outer loop.

The two breaks for input_string == 'q' are repetitive and a bit ugly. Better solutions are possible, but beyond the scope of this exercise.



=end