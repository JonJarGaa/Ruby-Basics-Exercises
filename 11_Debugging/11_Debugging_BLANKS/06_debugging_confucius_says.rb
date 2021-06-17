=begin



You want to have a small script delivering motivational 
quotes, but with the following code you run into a very 
common error message: no implicit conversion of nil into 
String (TypeError). What is the problem and how can you 
fix it?

HINT: 
  The error message hints at the fact that the get_quote method invocation on line 16 is returning nil. How is the return value of the method determined?

HINT: 
  If you don't spot the error immediately, a good way to start is 
  by checking what happens if we use 'Yoda' or 'Einstein' as input:

  get_quote('Yoda')      #=> no implicit conversion of nil into String (TypeError)
  get_quote('Einstein')  #=> "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."

  Thus, our method returns the expected string when we pass in 'Einstein' 
  as the argument, and nil otherwise. Now we have to think about how the 
  return value of the get_quote method is determined.


=end

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'



=begin

MY ANSWER: 



SOLUTION:



=end