def prompt(message)
  puts ">> #{message}: "
end

CHOICES = ['rock', 'paper', 'scissors']

prompt("Enter your choice: #{CHOICES.join(', ')}")
player_choice = gets.chomp

puts "Player's choice: #{player_choice}"
