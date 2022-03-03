def prompt(message)
  puts ">> #{message}: "
end

def display_result(player_choice, computer_choice)
  if player_choice == computer_choice
    prompt('The game is a tie!')
  elsif player_choice == 'rock' && computer_choice == 'scissors' ||
        player_choice == 'paper' && computer_choice == 'rock' ||
        player_choice == 'scissors' && computer_choice == 'paper'
    prompt('Player wins!')
  else
    prompt('Computer wins!')
  end
end

CHOICES = ['rock', 'paper', 'scissors']
loop do
  system('clear')
  player_choice = ''
  loop do
    prompt("Enter your choice: #{CHOICES.join(', ')}")
    player_choice = gets.chomp
    if CHOICES.include?(player_choice)
      break
    else
      prompt('That\'s not a legit choice!')
    end
  end

  computer_choice = CHOICES.sample

  puts "Rock, Paper, Scissors throw..."
  prompt("Your throw : #{player_choice}, Computer's throw: #{computer_choice}.")
  display_result(player_choice, computer_choice)
  prompt('Play again?')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt('Thanks for playing Rock, Paper, Scissors!')
prompt('Good bye')
