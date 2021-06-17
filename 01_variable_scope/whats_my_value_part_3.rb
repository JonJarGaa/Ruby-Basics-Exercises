=begin
What will the following code print, and why? 
Don't run the code until you have tried to answer.
=end



a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

=begin
 
MY ANSWER: 7. Same as before. Local variable defined within the method
does not change or relate to the local variable outside the method,
regardless of having the same name. They are different variable 
objects. 

SOLUTION: 

7

Discussion

Once again, the result is 7. Once again, the local variable a inside 
the my_value method definition is not visible outside the my_value 
method definition. Furthermore, the local variable a at the top level 
is not visible inside my_value because method definitions are self-
contained with respect to local variables.


=end