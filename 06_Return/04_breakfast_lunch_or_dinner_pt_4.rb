=begin

What will the following code print? Why? 
Don't run it until you've attempted to answer.

=end

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal


=begin

MY ANSWER: 

"Dinner"
"Breakfast"

Because method is inovoked with "puts", the method runs its first 
line and prints "Dinner", followed by the returned value "Breakfast"
printed. The return on the last line is redundant. 













SOLUTION:

Dinner
Breakfast

Discussion

When you use #puts it's important to know that the 
printed value and the return value are not the same. 
#puts outputs the value it's given and returns nil. 
Therefore, the return value of puts 'Dinner' is nil. 
However, that's not the return value of meal. The 
return value of meal is 'Breakfast' because of the 
explicit return.

If the return value is 'Breakfast' then why are both 
"Dinner" and "Breakfast" printed? The answer is simple: 
there are two #puts which means there will be more than 
one value printed.

=end