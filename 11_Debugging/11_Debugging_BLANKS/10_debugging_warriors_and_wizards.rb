=begin



We started writing an RPG game, but we already run into an error message. Find the problem and fix it.

APPROACH/ALGORITHM: 
  The error message says:

  rpg.rb:17:in `merge': no implicit conversion of nil into Hash (TypeError)

  The error message tells us that one of the two hashes 
  we are trying to merge is actually nil. If you check 
  both hashes, you'll find that it's character_classes[input] 
  that references nil. This is because we are trying to 
  access the value of a key that doesn't exist in the hash. 
  
  Here, we have to be conscious of what the type of object our 
  hash keys are and what the type of object input is.

  After addressing this error, the initial player stats still 
  don't seem to have updated. Check out the documentation for 
  Hash#merge. The important question here is: Does merge mutate 
  the caller (i.e. player) and do we use it accordingly?

=end

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player


=begin

MY ANSWER: 



SOLUTION:



=end