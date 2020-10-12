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

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "||                                    ||"
puts "|| Welcome to TwO-O-Player Math Game! ||"
puts "||                                    ||"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


def start_turn(current_player)

  puts "#{current_player.name}: What does #{Questions.first_num} plus #{Questions.second_num} equal?"
  print "> "
  answer_guess = gets.chomp

  if Questions.validate(answer_guess)
    puts "#{current_player.name}: YES! You are correct."
  else
    puts "#{current_player.name}: Seriously! No!"
    current_player.incorrect
  end

  puts "#{P1.name}: #{P1.lives}/3 vs #{P2.name}: #{P2.lives}/3"

end

loop do
  start_turn(P1)
  break puts "Player 2 wins with a score of #{P2.lives}/3" if (P1.gameover)
  start_turn(P2)
  break puts "Player 1 wins with a score of #{P1.lives}/3" if (P2.gameover)
  puts "----- NEW TURN -----"
end


puts "----- GAME OVER -----"
puts "Good bye!"

