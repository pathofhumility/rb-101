def prompt(message)
  puts ">> #{message}: "
end

def who_won?(first, second)
  WIN_LOGIC[first].include?(second)
end

def display_result(player, computer)
  if player == computer.to_sym
    prompt('It\'s a tie!')
    return
  end
  prompt who_won?(player, computer) ? 'Player wins' : 'Computer wins'
end

WIN_LOGIC = {
  rock: %w(scissors lizard),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  lizard: %w(paper spock),
  spock: %w(scissors rock)
}

THROW_MENU = {
  r: :rock,
  p: :paper,
  s: :scissor,
  l: :lizard,
  o: :spock,
  rock: :rock,
  paper: :paper,
  scissors: :scissors,
  lizard: :lizard,
  spock: :spock
}

THROW_CHOICES = %w(rock paper scissors lizard spock)

loop do
  system('clear')
  player_choice = ''
  loop do
    prompt("Enter your choice: (R)ock (P)aper (S)cissors (L)izard sp(O)ck")
    player_choice = gets.chomp.downcase.to_sym
    if THROW_MENU[player_choice]
      player_choice = THROW_MENU[player_choice]
      break
    else
      prompt('That\'s not a legit choice!')
    end
  end

  computer_choice = THROW_CHOICES.sample

  puts "Rock, Paper, Scissors, Lizard, Spock go..."
  prompt("Your go : #{player_choice}, Computer's go: #{computer_choice}.")
  display_result(player_choice, computer_choice)
  prompt('Play again?')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt('Thanks for playing Rock, Paper, Scissors, Lizard, Spock!')
prompt('Good bye')
