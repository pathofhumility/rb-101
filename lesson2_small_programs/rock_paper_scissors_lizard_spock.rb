def prompt(message)
  puts ">> #{message}: "
end

def who_won?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'scissors' || second == 'spock')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_result(player_choice, computer_choice)
  if player_choice == computer_choice
    prompt('It\'s a tie!')
    return
  end
  if who_won?(player_choice, computer_choice)
    prompt('Player wins!')
  else
    prompt('Computer wins!')
  end
end

CHOICES = %w(rock paper scissors lizard spock)
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

  puts "Rock, Paper, Scissors, Lizard, Spock go..."
  prompt("Your go : #{player_choice}, Computer's go: #{computer_choice}.")
  display_result(player_choice, computer_choice)
  prompt('Play again?')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt('Thanks for playing Rock, Paper, Scissors, Lizard, Spock!')
prompt('Good bye')
