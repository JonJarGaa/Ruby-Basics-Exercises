=begin
What will the following code print, and why? 
Don't run the code until you have tried to answer.
=end


a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a


=begin

MY ANSWER:
7 will be printed.
Similar to last problem, this .each method is setting the local method
variable to a, representing each array element to iterate over. This 
local variable a is defined within the block of the method and not 
related to or changing local variable "a" defined outside of the method
block.



SOLUTION:
7

Discussion

This problem demonstrates shadowing. Shadowing occurs when a block 
argument hides a local variable that is defined outside the block. 
Since the outer a is shadowed, the a += 1 has no effect on it. In fact, 
that statement has no effect at all.

=end