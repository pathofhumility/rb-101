def prompt(message)
  puts ">> #{message}: "
end

def display_stats(message)
  puts "** #{message}"
end

def who_won?(first, second)
  WIN_LOGIC[first].include?(second)
end

def display_result(player, computer)
  if player == computer.to_sym
    display_stats('It\'s a tie!')
    return
  end
  display_stats who_won?(player, computer) ? 'Player wins' : 'Computer wins'
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
  s: :scissors,
  l: :lizard,
  o: :spock,
  rock: :rock,
  paper: :paper,
  scissors: :scissors,
  lizard: :lizard,
  spock: :spock
}

THROW_CHOICES = %w(rock paper scissors lizard spock)
# main game body
loop do
  system('clear')
  player_wins = 0
  computer_wins = 0

  # match, first to 3 body
  loop do
    player = ''
    loop do
      prompt("Make your throw, (R)ock (P)aper (S)cissors (L)izard sp(O)ck")
      player = gets.chomp.downcase.to_sym
      if THROW_MENU[player]
        player = THROW_MENU[player]
        break
      else
        prompt("Umm.. That's not a legit throw!")
      end
    end

    computer = THROW_CHOICES.sample

    display_stats("Your throw: #{player}, Computer's throw: #{computer}.")
    display_result(player, computer)

    if !(player == computer)
      who_won?(player, computer) ? player_wins += 1 : computer_wins += 1
    end
    display_stats("Player wins #{player_wins}, Computer wins #{computer_wins}")

    if player_wins == 3
      display_stats("Player Wins Match! " \
                    "#{player_wins} games to #{computer_wins}.")
      break
    elsif computer_wins == 3
      display_stats("Computer Wins Match! " \
                    "#{computer_wins} games to #{player_wins}.")
      break
    end
  end
  prompt('Play again?')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

display_stats('Thanks for playing Rock, Paper, Scissors, Lizard, Spock!')
display_stats('Good bye')
