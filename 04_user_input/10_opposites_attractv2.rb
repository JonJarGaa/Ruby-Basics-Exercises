def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do 
  puts "Enter one positive number or negative number: "
  num1 = gets.chomp
  puts "Enter one positive or negative number (opposite sign of first entered): "
  num2 = gets.chomp
  
  if valid_number?(num1) == false || valid_number?(num2) == false
    puts "ERROR: Both entries must be a number"
    next
  else
    num1 = num1.to_i
    num2 = num2.to_i
  end
  
  if  num1.positive? && num2.positive?
    puts "ERROR: Both numbers are positive. One must be negative.
        Try Again"
    next 
  
  elsif num1.positive? == false && num2.positive? == false
    puts "ERROR: Both numbers are negative. One must be positive.
    Try Again"
  
  else
    puts "#{num1} + #{num2} = #{num1 + num2}"
    puts "Math operation complete!"
    break 
  end
end



=begin
 def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
=end

=begin

MY ANSWER: 



SOLUTION:



=end