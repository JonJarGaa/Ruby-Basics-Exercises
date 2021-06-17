=begin

In the code below, stoplight is randomly assigned as 
'green', 'yellow', or 'red'.

Write a case statement that prints "Go!" if stoplight 
equals 'green', "Slow down!" if stoplight equals 'yellow', 
and "Stop!" if stoplight equals 'red'.


=end


stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

case stoplight 
when "green"
  puts "Go!" 
when "yellow"
  puts "Slow down!" 
when "red"
  puts "STOOOOPP!!"
end 




=begin

MY ANSWER: 



SOLUTION:

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

Discussion

case statements are typically used when comparing multiple 
values to a single case. For each comparison, we use the 
reserve word when, like this:

when <condition>

Following the condition, we add the operation that should 
be performed if the condition evaluates as true. We can 
repeat this pattern as many times as we'd like. For this 
exercise, however, we only need to repeat it three times.
=end