=begin

Using the following code, split the value of alphabet by individual characters and print each character.

Expected output:

a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z


=end

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split(//)

#alpha_array 
#puts alpha_array

=begin

MY ANSWER: 
I used // for split modifier choice, seems '' does the same thing



SOLUTION:

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

Discussion

It's common to split strings by character or words. 
In fact, Ruby provides a method named String#split 
that conveniently does this for us. By invoking 
#split on alphabet and passing an empty string as 
an argument, we can separate individual characters 
in alphabet. To print each character, we simply need 
to use #puts because #split returns an array 
containing each character as its own element.

=end