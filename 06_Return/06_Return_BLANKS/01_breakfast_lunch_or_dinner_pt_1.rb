=begin

What will the following code print? Why? 
Don't run it until you've attempted to answer.

=end

def meal
  return 'Breakfast'
end

puts meal


=begin

MY ANSWER: 

This will print "Breakfast" because the returned value (explicit or not)
of this method is the string "Breakfast". When the method is 
invoked and printed, the value of that method prints.  

SOLUTION:

Breakfast

Discussion

Determining the return value of a method can sometimes 
be confusing. If there's no return then how do I know 
what the return value is? That's a valid question with 
a simple answer: every method returns the evaluated 
result, or return value, of the last line that is 
executed.

The only way to ensure a specific return value, other 
than putting it as the last line, is to use return. 
When return is executed, it immediately exits the method, 
returning the provided value. The code in this particular 
exercise would return the string 'Breakfast' with or without 
the return on line 2 because line 2 is the last (and only) 
line executed in the meal method.


=end