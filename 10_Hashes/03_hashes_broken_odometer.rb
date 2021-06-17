=begin

Using the following code, delete the key :mileage and 
its associated value from car.

=end

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)

p car


=begin

MY ANSWER: 
Could not do on first try. Used wrong syntax for .delete method



SOLUTION:

car.delete(:mileage)

Discussion

Removing a key, and its associated value, from a hash is 
fairly trivial with the Hash#delete method. When you call 
#delete, specify the key you want to delete and pass it in 
as an argument, like this delete(key).

=end