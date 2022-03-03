def prompt(message)
  puts ">> #{message}: "
end

CHOICES = ['rock', 'paper', 'scissors']

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

puts "Player's choice: #{player_choice}, Computer's choice: #{computer_choice}."
