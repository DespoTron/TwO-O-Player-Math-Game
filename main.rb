# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './players'
require './questions'

# testing

# player1 = Players.new("Thai")
# player2 = Players.new("Andre")

# puts player1.name
# puts player2.name

# puts player1.lives
# puts player2.lives

# question1 = Questions.new()
# puts question1.display

# Starting Game Logic 

P1 = Players.new('Player 1')
P2 = Players.new('Player 2')

puts "****************************************"
puts "||                                    ||"
puts "|| Welcome to TwO-O-Player Math Game! ||"
puts "||                                    ||"
puts "****************************************"




