# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './players'
require './questions'

# testing

player1 = Players.new("Thai", @lives)
player2 = Players.new("Andre", @lives)

puts player1.name
puts player2.name

puts player1.lives
puts player2.lives

question1 = Questions.new()
puts question1.display