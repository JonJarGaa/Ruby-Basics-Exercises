=begin

In the code below, sun is randomly assigned as 
'visible' or 'hidden'.

Write an unless statement that prints "The clouds 
are blocking the sun!" unless sun equals 'visible'.

=end

sun = ['visible', 'hidden'].sample

unless sun == "visible"
  puts "The clouds are blocking the sun!"
end

=begin

MY ANSWER: 



SOLUTION:

unless sun == 'visible'
  puts 'The clouds are blocking the sun!'
end

Discussion

https://launchschool.com/exercises/eb0b9c7c

This exercise should look familiar if you completed 
the previous one. The difference is, we use the 
unless statement, which is actually the opposite of 
the if statement.

Looking at the condition in our solution, you'll 
notice that it didn't change from the last exercise. 
This still works because instead of saying "do 
something if the sun is visible", we're essentially 
saying "do something if the sun is hidden". In code, 
this looks like unless sun == 'visible'.

=end