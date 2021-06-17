=begin

Write a program that requests two integers from the user, 
adds them together, and then displays the result. Furthermore, 
insist that one of the integers be positive, and one negative; 
however, the order in which the two integers are entered does 
not matter.

Do not check for the positive/negative requirement until both 
integers are entered, and start over if the requirement is not 
met.

You may use the following method to validate input integers:

Examples:

$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
0
>> Invalid input. Only non-zero integers are allowed.
>> Please enter a positive or negative integer:
-5
8 + -5 = 3

$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
5
>> Sorry. One integer must be positive, one must be negative.
>> Please start over.
>> Please enter a positive or negative integer:
-7
>> Please enter a positive or negative integer:
5
-7 + 5 = -2

HINT: You can use a nested loop (a loop inside a loop) to solve this problem, but it may be easier to use a method to obtain both input integers.

=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


=begin

MY ANSWER: 



SOLUTION:



=end