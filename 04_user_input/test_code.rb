def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "Enter one positive and one negative number (in any order)"
  puts ">>>Number 1: "
  num1 = gets.chomp
  puts ">>>Number 2: "
  num2 = gets.chomp

  if valid_number?(num1) == false || valid_number?(num2) == false 
    puts "ERROR: Both must be numbers. TRY AGAIN"

  elsif num1.to_i.negative? && num2.to_i.negative? || num1.to_i.positive? && num2.to_i.positive?
    puts "ERROR: One number must be positive and one number must be negative. TRY AGAIN"

  elsif valid_number?(num1) && valid_number?(num2)
    num1 = num1.to_i
    num2 = num2.to_i
    puts "#{num1} + #{num2} = #{num1 + num2}"
    puts "MATH OPERATION COMPLETE!"
    break 
  end
end