=begin

Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

NOTE: The code should output true twice.

=end

def assign_name(name = 'Bob')
  name  
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'


=begin

MY ANSWER: 



SOLUTION:

def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

Discussion

https://launchschool.com/exercises/d462c857

The method assign_name is written the same as any 
other method except for one key difference: it has 
a default parameter. This means that it accepts one 
argument, but doesn't break if that argument isn't
 given. It will simply assign the parameter to the 
 default value which, in this case, is "Bob".

=end