=begin

Using the following code, print true if colors includes the color 'yellow' 
and print false if it doesn't. Then, print true if colors includes the color 
'purple' and print false if it doesn't.

Expected output:

true
false

=end


colors = 'blue pink boredom yellow orange'

p colors.include?("yellow") 
p colors.include?("purple") 
p colors.include?("red")
  
  
=begin

MY ANSWER: 

My first solution before I realized that include? returns true/false:
colors = 'blue pink yellow orange'


#colors.include?("yellow") ? puts("true") : puts("false") 
#colors.include?("purple") ? puts("true") : puts("false")



SOLUTION:

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

Discussion

To check whether a given string includes a specific substring, we can use String's #include? method. #include? checks the calling string to see whether it contains the argument as a substring. It returns true if the argument is a substring, and false if it isn't.
Further Exploration

Let's say colors is changed to the following value:

colors = 'blue boredom yellow'

and we invoke #include? as we did before:

puts colors.include?('red')

What will the output be? Why?

=end