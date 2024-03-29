=begin

Given the following code, use Array#each to print the plural of each word in words.

Expected output:

cars
humans
elephants
airplanes


=end

words = 'car human elephant airplane'
words_plural = words.split(' ')

words_plural.each { |x| puts "#{x}s"}


=begin

MY ANSWER: 



SOLUTION:

words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end

To iterate over each word in words we first need to 
split the string into separate words. As discussed 
in the previous exercise, String#split will split 
elements in as string according to the provided 
argument. In this case, we pass in a string 
consisting of a single space, which means #split 
will return an array containing each word.

We then invoke Array#each on the return value of 
#split, which lets us perform an action for each 
word. Our goal is to print the plural of each word, 
therefore, we simply append 's' to the word and 
invoke #puts.

=end