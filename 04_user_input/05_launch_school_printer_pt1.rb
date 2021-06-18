=begin

Write a program that prints 'Launch School 
is the best!' repeatedly until a certain number 
of lines have been printed. The program should 
obtain the number of lines from the user, and 
should insist that at least 3 lines are printed.

For now, just use #to_i to convert the input 
value to an Integer, and check that result 
instead of trying to insist on a valid number; 
validation of numeric input is a topic with a 
fair number of edge conditions that are beyond 
the scope of this exercise.

Examples:

$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!

$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3:
3
Launch School is the best!
Launch School is the best!
Launch School is the best!

=end

puts "Who's the best?" 
puts "Enter a number 3 or greater: "
number = gets.chomp.to_i

while number < 3
  puts "Let's Review: Words or Numbers less than 3 are not accepted! 
        >> Please enter a NUMBER of 3 or greater: "
  number = gets.chomp.to_i
  
end 

number.times { |x| puts "Launch School is the best!" }



=begin

MY ANSWER: 
Had touble doing this easily or even after trying a few different things. 
I needed to look up Ruby Docs for .times (number) method - 

SECOND GO44 (SEE ALSO 09_launch_school_printer_pt2 for more complicated program and loop structure)

puts "Want to knwo who is the best online programming School?"

loop do
  puts "Enter a number for how enthusiastic you are today. Must be at least 3: "
  num = gets.chomp.to_i

  if num < 3
    puts "ERROR: Number must be 3 or greater. Try Again"
    next
  else
    num.times { |x| puts "Launch School is the best!!!" }
    break
  end
end


FROM RUBY DOCS: 
times {|i| block } → self
times → an_enumerator

Iterates the given block int times, passing in values from zero to int - 1.

If no block is given, an Enumerator is returned instead.

5.times {|i| print i, " " }   #=> 0 1 2 3 4



SOLUTION:

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

Discussion

Like the previous exercise, our solution uses the 
soon-to-be-familiar pattern of looping to obtain 
a valid input. In this case, we use #to_i to convert 
inputs to Integer values, and only allow inputs of at 
least 3.

Once we have the number of lines to print, it's a simple 
matter to just print the lines in a loop.

=end