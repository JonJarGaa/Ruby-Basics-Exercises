=begin
Modify the code below so "Hello!" is printed 5 times.
=end

say_hello = true
count = 1

while say_hello == true && count <= 5
  puts 'Hello!'
  count += 1
end



=begin

MY ANSWER: 
This solution preserves the idea that this while loop does not need to change
the value of 'say_hello' to true. If we did need this, we could add a line to assign
--- 'say_hello' = false if count == 5 ---.  

SOLUTION 


=end