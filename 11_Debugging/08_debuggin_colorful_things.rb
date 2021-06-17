=begin

The following code throws an error. Find out what is wrong 
and think about how you would fix it.

HINT: 
  With a loop like this, it's important to carefully 
  check when we are breaking from the loop, which values 
  i references, and whether the array indices we are 
  accessing with [i] exist for all values of i.

HINT: 
  We break from the loop only when i is greater than 
  colors.length, so we still execute it when i equals 
  colors.length. Because Arrays have a zero-based index, 
  this results in colors[i] accessing one position after 
  the last one. Since that position doesn't exist, 
  colors[i] returns nil. Our break condition should 
  therefore be:

  break if i > colors.length - 1

  (We could also use i >= colors.length or even i == colors.length.)

  However, that still throws the same error.

  Note that we retrieve both colors[i] and things[i]. But things is shorter than colors. So in the last iteration of the loop, things[i] is nil. The fact that one array is longer than the other also impacts our break condition.


=end

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length
  puts i
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


=begin

MY ANSWER: 



SOLUTION:

https://launchschool.com/exercises/de80aff9

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

Discussion

The above solution uses the length of the shorter things array 
to determine whether to break from the loop or not, and stops 
as soon as i has a value greater than the last array index.
Further exploration

We might change our arrays in the future and we might not always 
know which of them is shorter, so picking the shorter one by hand 
is not the best solution. How can you change the break condition, 
such that the loop always stops once we hit the end of the shorter 
array?


=end