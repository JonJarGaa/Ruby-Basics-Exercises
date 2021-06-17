=begin
Using a while loop, print 5 random numbers between 0 and 99. 
The code below shows an example of how to begin solving this exercise.
=end

numbers = [rand(100), rand(100), rand(100), rand(100), rand(100)]
go = true

while go == true
  numbers.each { |num| puts num }
  go = false
end

=begin

MY ANSWER: 
This does do the desires 


SOLUTION 
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

### ANOTHER 3 GOOD SOLLUTIONs FROM GEORGE W HOCKETT  

numbers = [*0..99]
a = 0
while a < 5
  a += 1 
  puts numbers.sample
end

numbers = (0..99).to_a

show = 1

while show <= 5 
  puts numbers.sample
  show += 1
end

# different wya to print the numbers array created. 
(5).times {puts numbers.sample}

###### another set of  options from RYAN PARKERSON  

numbers = []

while numbers.count < 5
 p numbers.unshift(rand 100).first
end


# Or

numbers = (0..99).to_a.shuffle

while numbers.size > 95
  p numbers.pop
end
# Note this second solution won't repeat the same number twice

# This can be rewritten:
numbers = [*0..99]
count = 1

while count < 6
  puts numbers.shuffle.last
  count += 1
end


Discussion

Implementing a while loop that iterates under set conditions should be fairly 
trivial. The more difficult part of this exercise is, perhaps, getting random 
numbers and keeping track of them. To accomplish this, we use #rand. This method 
works well because it returns a random number between 0 and one less than the number 
provided. In this case, that number is 100.

Once the random number is returned, we want to avoid printing it immediately. If we 
simply printed the returned number, while would iterate infinitely. Instead, we want 
to add the returned number to an array. This way, we can tell whileto stop iterating 
after 5 numbers have been added to the array.

=end