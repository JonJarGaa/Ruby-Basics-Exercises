=begin

Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.

Expected output:

{:low=>10}


=end


numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |k,v| v < 25 }

p low_numbers

=begin

MY ANSWER: 



SOLUTION:

low_numbers = numbers.select do |key, value|
                 value < 25
               end

p low_numbers

Discussion

https://launchschool.com/exercises/6f3d0efe

Unlike Enumerable#map, Hash#select returns a hash instead 
of an array. Specifically, #select returns a new hash 
consisting of entries for which the block returns true.

As in the previous exercise, we can assign the returned hash 
to a variable for later use.

=end