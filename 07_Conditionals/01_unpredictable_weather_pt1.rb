=begin

In the code below, sun is randomly assigned as 
'visible' or 'hidden'.

Write an if statement that prints "The sun is so 
bright!" if sun equals 'visible'.


=end

sun = ['visible', 'hidden'].sample

if sun == "visible"
  puts "The Sun is so bright!"
end



=begin

MY ANSWER: 



SOLUTION:

if sun == 'visible'
  puts 'The sun is so bright!'
end

Discussion

We're originally given a variable named sun. We know 
that its value will either be 'visible' or 'hidden'. 
Therefore, when writing the condition for our if 
statement, we can easily determine what the condition 
should be. One of the simplest ways to write this 
condition is to use ==, which returns true only if 
the two compared entities have the same value.

Knowing this, we can compare sun with 'visible' in 
our if condition. If this comparison evaluates as 
true, then we'll use #puts to print "The sun is so 
bright!".

=end
