=begin

What will the following code print? Why? 
Don't run it until you've attempted to answer.

=end

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep



=begin

MY ANSWER: 






















SOLUTION:

https://launchschool.com/exercises/92b0a183

0
1
2
3
4
10

Discussion

This exercise continues the previous exercise, 
except with one variation: Integer#times is no 
longer the last line in count_sheep. #times still 
returns the initial integer, but this time nothing 
is done with the return value. Instead, 10 is the 
implicit return value of count_sheep because it's 
the last line evaluated.

=end