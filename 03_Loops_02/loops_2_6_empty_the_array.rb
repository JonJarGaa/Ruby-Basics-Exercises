=begin
Given the array below, use loop to remove and print 
each name. Stop the loop once names doesn't contain 
any more elements.

Keep in mind to only use loop, not while, until, etc.

=end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.length == 0
end


=begin

MY ANSWER: 
First try I used "push" method instead of "shift", LOL
Solution uses ".empty?" to check for empty array. 

SOLUTION:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end



=end