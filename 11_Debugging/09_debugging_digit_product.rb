=begin

Given a String of digits, our digit_product method 
should return the product of all digits in the String 
argument. You've been asked to implement this method 
without using reduce or inject.

When testing the method, you are surprised by a return 
value of 0. What's wrong with this code and how can you 
fix it?

HINT: 
  Think about how product changes each time the block 
  on lines 5-7 is executed. (This may be a good time to 
  use pry).

=end


def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0



=begin

MY ANSWER: 
I  knew that updatingg a "0" by multiplying was making 
it stay 0, but I was focused on the update method "*=", 
and finally realized that I can simply initiate the value 
as 1 and still get the desired outcome with no multiplying 
by 0. 


SOLUTION:

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

Discussion

Note that line 6 is short-hand for 
product = product * digit. If product is 
initialized to 0 on line 3, each iteration 
will multiply the digit with 0, resulting 
in 0. In order to arrive at the product of 
  all digits, we must initialize product to 
  reference 1 on line 3.

=end