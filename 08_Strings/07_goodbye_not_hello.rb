=begin

Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

Expected output:

Goodbye!


=end

greeting = 'Hello!'

greeting.gsub!("Hello", "Goodbye")

puts greeting


=begin

MY ANSWER: 
COuld not get on first go because was not aware of #gsub method


SOLUTION:

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting

Discussion

Ruby provides a great String method named String#gsub! 
that allows us to replace specific characters within 
the string by modifying the original object. In the 
solution, we use the destructive version of #gsub by 
invoking it on greeting before invoking #puts. We could 
ave also used the non-destructive version, like so:

greeting = 'Hello!'

puts greeting.gsub('Hello', 'Goodbye')

This works because #gsub returns the modified string.

=end