=begin

Write a program that asks the user to type something in, 
after which your program should simply display what was entered.

Example:

$ ruby repeater.rb
>> Type anything you want:
This is what I typed.
This is what I typed.

=end

puts "Hi! I'm Cat Copy." 
puts "I'm a good listener. You can tell me anything you want."
puts "Go ahead... I'm listening: "

inner_thoughts = gets.chomp

puts inner_thoughts

=begin

MY ANSWER: 
easy


SOLUTION:
puts ">> Type anything you want:"
text = gets
puts text

Discussion

This program first uses #puts to display a prompt. 
The use of >> is nothing special - we just use it 
to distinguish prompts from other kinds of text 
displayed by the program. It doesn't matter if you 
leave it off.

After displaying the prompt, we use #gets to read 
a line of input from the user and store it a variable 
named text.

Finally, we use #puts a second time to redisplay what 
the user typed.


=end