=begin
What will the following code print, and why? 
Don't run the code until you have tried to answer.
=end

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a



=begin

MY ANSWER:
*** WRONG*** 7 should print because again, b is assigned to the value of 7 = 7, so b is assigned
14, where a is still 7. Local variable b assignment and invoking my_value(a) did not
change the integer to which a points.

CORRECT: 
This method definition only substitutes the value of (a) into the (b) variable 
locations. Because we are only passing the variable arguement "a"'s value of 7 into
b, when the code gets to varialbe "a", it is it's own, new Local method variable. It 
has no relationship with the original local variable "a, set before the method def.

Because local variables outside and inside methods are invisible to each other, we
cannot use a as a variable within the method unless we define a as its own, new variable 
first'. If our goal is to use the value of "a" for b = a + a, it can be re-written as
b = b + b, then each will be substituted with the integer 7.

SOLUTION:
If you said this would issue an error message or raise an exception, you are 
correct. The error is:

`my_value': undefined local variable or method `a' for main:Object (NameError)

Discussion

Even though a is defined before my_value is defined, it is not visible inside 
my_value. Method definitions are self contained with respect to local variables. 
Local variables initialized inside the method definition are not visible outside 
the method definition, and local variables initialized outside the method 
definition are not visible inside the method definition.

Note, however, that local variables will be visible (via closures) inside blocks, 
procs, and lambdas.



=end