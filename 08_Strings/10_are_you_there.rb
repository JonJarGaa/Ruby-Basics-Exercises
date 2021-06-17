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



=end