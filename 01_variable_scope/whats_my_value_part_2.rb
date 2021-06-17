=begin
What will the following code print, and why? 
Don't run the code until you have tried to answer.
=end


a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a


=begin

MY ANSWER:
This STILL should keep original a variable unchanged at 7. I imagine that these
are two separate variables, one within the method (a) and one local variable (a) available at program
level. Local variable a is pointed to a different integer memory location, but 
a should still be equal to 7. 

SOLUTION:
7

Discussion

This problem is identical to the previous problem. The only thing we did 
is change the name b to a. Note that we can do this because method definitions 
are self-contained with respect to local variables. Local variables outside the 
method definition are not visible inside the method definition; so the top level 
a is not available inside my_value. Furthermore, local variables inside the 
method definition are not visible outside the method definition; so the a 
inside my_value is a local variable with no top-level visibility.

=end