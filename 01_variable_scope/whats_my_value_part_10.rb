=begin
What will the following code print, and why? 
Don't run the code until you have tried to answer.
=end

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

=begin

MY ANSWER:
Should raise an exception for undefined local varialb 'a'. The
my_value method definition calls the method .each to iterate over
the array argument passed through as 'ary'. When .each method tries
to access a, this is outside of the method definition and it is not 
definied within the method definition, so my_value(array) line raises
exception. 

SOLUTION:
If you said this would issue an error message or raise an exception, you are correct. The error is:

undefined method `+' for nil:NilClass (NoMethodError)

Discussion

a at the top level is not visible inside the invocation of the each 
method with a block because the invocation of each is inside my_value, 
and method definitions are self-contained with respect to local variables. 
Since the outer a is not visible inside the my_value method definition, 
it isn't visible inside the method invocation with a block.

=end