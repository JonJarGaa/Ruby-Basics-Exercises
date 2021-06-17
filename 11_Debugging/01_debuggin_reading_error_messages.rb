=begin

You come across the following code. What errors does it 
raise for the given examples and what exactly do the error 
messages mean?

=end

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n ifd n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)



=begin

MY ANSWER: 
Defined method is expecting one argument passed to it because 
"numbers" is only one variable place holder. It will not raise
an exception for the second invokation of the "1" because it is 
the one expected variable. The first line would run if that 
number set was in a saved array variable and the variable name
was passed to the method. 

After reading solution: this can also be fixed by passing 
one array of numbers instead of each number individually.  


SOLUTION:

This method is expecting an array of integers to be passed 
in as the argument. The example method invocations should 
look like this:

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])

Discussion

The first method invocation (line 9) raises an 
ArgumentError on line 1:

example.rb:1:in `find_first_nonzero_among': 
wrong number of arguments (given 6, expected 
1) (ArgumentError)

The error message tells you that the method 
find_first_nonzero_among was given 6 arguments 
but expects only 1 (specified by the parameter 
numbers).

The second method invocation (line 10) receives 
the correct number of arguments, so no error is 
raised on line 1. However, as soon as the program 
tries to evaluate line 2 with the given argument, 
it raises a NoMethodError:

example.rb:2:in `find_first_nonzero_among': 
undefined method `each' for 1:Integer (NoMethodError)

This is because the method parameter numbers is 
now bound to the provided argument 1, so it tries 
to evaluate 1.each do ... end, i.e. it tries to 
call each on the Integer 1. Since integers do 
not have an each method, this raises a 
NoMethodError.

=end