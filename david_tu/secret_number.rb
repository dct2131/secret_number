###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't #forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.


def get_input
  gets.strip
end

secret_number = 8
puts "#{secret_number} is S.N"

def continue_game(player_guess,secret_number)
  puts "#{secret_number} is S.N"
  if player_guess == secret_number
    puts "Congratulations, you guessed right!"
    exit
  else 
    wrong_guess(player_guess, secret_number)
  end
end

def wrong_guess(player_guess, secret_number)
  if player_guess < secret_number 
    puts "Try again. Guess a higher number."
  elsif player_guess > secret_number
    puts "Try again. Guess a lower number."
  end
end
    
def guesses_left(guesses)
  i = 1
  while i < 4 
    puts "#{3 - i}"
    i += 1
  end
end

puts "Welcome to Secret Number! Created by David Tu."
puts "Please enter your name."
player_name = gets.strip
puts "Hi #{player_name}!"
puts "Here are the rules #{player_name}: Guess a number between 1 and 10. You have 3 total guesses."

puts "Are you ready #{player_name}? Take your first guess:"

##loop here 3 times or fewer
guesses = 0

while guesses < 3
  puts "you have #{3 - guesses} guess(es) left"
  player_guess = get_input.strip.to_i  
  continue_game(player_guess, secret_number)
  guesses += 1
end

puts "GAME OVER. You should've guessed #{secret_number}!"











  


   
#
###############################################################################