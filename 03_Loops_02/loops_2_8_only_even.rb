#   Using next, modify the code below so that it only prints even numbers.


number = 0

until number == 10
  number += 1
  puts number if number % 2 == 0
end





=begin

MY ANSWER: 
My solution only prints if conditional of number having no remainder
if divided by 2 (even.) I could have used the even? method or "next if"
odd?, but then need the puts number after this next if statememt (like
solution)


SOLUTION:


Sometimes when using a loop, you need to skip to the next 
iteration. That's where next comes in. next lets you skip 
to the next iteration based on certain conditions. In this 
exercise, we use next to skip to the next iteration when 
number is odd. We can use the method Integer#odd? to 
evaluate number and return true if it's an odd number.


Further Exploration

Why did next have to be placed after the incrementation of 
number and before #puts?


=end