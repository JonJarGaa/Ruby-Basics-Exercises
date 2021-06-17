=begin

What will the following code print? Why? 
Don't run it until you've attempted to answer.

=end

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


=begin

MY ANSWER: 

0
1
2
nil

last evaluated line of method is the blank return line after
0, 1 and 2 are all printed. Once 2 is reached, return exits 
method and returns that line (nil) which is printed by "p"
when count_sheep is invoked. 















SOLUTION:

Solution

0
1
2
nil

Discussion

https://launchschool.com/exercises/ce0f66c7

This exercise is a little different compared 
to the last two. We've made Integer#times the 
last line in count_sheep again, but this time 
there's a return inside the block. 

Based on what 
we know with return, we should be able to 
determine the return value of count_sheep. 
Looking at the if condition, we can see that 
return will be processed once sheep equals 2. 


This lets us know the method will end there 
and return the value provided by return.

In this case, return didn't provide a value. 
That's why the last output is nil (we used #p 
when invoking count_sheep so that nil is 
visible in the output).

=end