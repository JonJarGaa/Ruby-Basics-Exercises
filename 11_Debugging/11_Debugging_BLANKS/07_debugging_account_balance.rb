=begin



Time for a check of your financial situation.

The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?

NOTE: 
  Note: This above program requires Ruby 2.4.0 or higher since the #sum method wasn't introduced to Ruby until version 2.4.0. If you must use an older version of Ruby, replace the #calculate_balance method with the following code:

  def calculate_balance(month)
    plus  = month[:income].reduce(&:+)
    minus = month[:expenses].reduce(&:+)

    plus - minus
  end

NOTE: APPROACH/ALGORITHM
  We can test the calculate_balance method by adding a few test cases:

  puts calculate_balance({ income: [], expenses: [] }) == 0         #=> true
  puts calculate_balance({ income: [100], expenses: [] }) == 100    #=> true
  puts calculate_balance({ income: [], expenses: [100] }) == -100   #=> true
  puts calculate_balance({ income: [100], expenses: [50] }) == 50   #=> true
  puts calculate_balance({ income: [4, 3], expenses: [2, 1] }) == 4 #=> true

  We can see that this method works as expected.

  To check what might go wrong on lines 31-33, we can temporarily replace the month hashes with simpler data that will make it easier to see what happens:

  january  = { income: [500], expenses: [] }
  february = { income: [100], expenses: [] }
  march    = { income: [200], expenses: [] }

  Now we expect our balance after these three months to be 800, but instead the final balance output is 200, the balance value of March. So it seems like we fail to add up the values.

=end

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance


=begin

MY ANSWER: 



SOLUTION:



=end