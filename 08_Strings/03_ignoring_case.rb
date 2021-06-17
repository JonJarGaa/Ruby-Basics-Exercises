=begin

Using the following code, compare the value of name with the 
string 'RoGeR' while ignoring the case of both strings. Print 
true if the values are the same; print false if they aren't. 
Then, perform the same case-insensitive comparison, except 
compare the value of name with the string 'DAVE' instead of 
'RoGeR'.

Expected output:

true
false

HINT: String#casecmp compares the value of two strings while 
ignoring the case of both strings.

=end

name = 'Roger'

puts "Is Roger the same ase RoGeR?"

rogerroger = if name.downcase == "RoGeR".downcase 
               "true"
              else 
                "false"
              end

puts rogerroger

puts "Is 'Roger' the same as 'DAVE'?"


rogerdave = if name.downcase == "DAVE".downcase
              'true'
            else 
              "false" 
            end

puts rogerdave

=begin

MY ANSWER: 

not as elegant as I did not look at the hint for the 
String#casecmp method that compares strings without regard
to case and returns a number depending on if they are equal
less or greater values.  

SOLUTION:

https://launchschool.com/exercises/4d81dbe7
name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

Discussion

Typically, when comparing strings, the goal is to compare 
their values, regardless of whether the characters are 
uppercase or lowercase. In the solution, we perform that 
exact comparison by using String#casecmp, the 
case-insensitive version of String#<=>. If you're 
unfamiliar with #casecmp then you might be surprised 
to see a numerical return value instead of a boolean.

#casecmp performs a case-insensitive comparison, meaning 
it ignores the case of each character. When both compared 
strings are equal, #casecmp will return 0. That's why, in 
the solution, we needed the comparison with 0. If the 
return value equals 0, then we know both strings are equal.

What if both strings aren't equal? If the value of the 
calling string - name - is less than the provided argument - 
'RoGeR' - then #casecmp will return -1. Similarly, if the 
provided argument is less than the calling string, #casecmp 
will return 1.

=end