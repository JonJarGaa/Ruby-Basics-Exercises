=begin

What will the following code print and why? 
Don't run it until you have tried to answer.

=end

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a


=begin

MY ANSWER: 
This should print a as 7. If puts was in line with my_value(a), then it would 
print 17. The method only has local scope, so it cannot permanently change the 
outside variable unless it modifies the caller.  


SOLUTION: 

7

Discussion

Reassignment, including assignment operators like +=, does not mutate 
a variable; instead, it binds the variable to a new object. That is, 
+= sets the variable to point to a different object. Since line 4 binds 
b to a new object, the object pointed to by a remains unchanged. Thus, 
a is still equal to 7 at the time of the puts.

Another way to look at this is that numbers in Ruby are immutable. Thus, 
there is no way for my_value to mutate the value referenced by b, which 
means that my_value does not (and can not) change the object referenced 
by a (7).

=end