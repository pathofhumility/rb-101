require 'yaml'

MESSAGES = YAML.load_file('messages.yml')
def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_operands
  num = ''
  loop do
    num = Float(gets, exception: false)
    puts num ? break : 'Invalid number'
  end
  num
end

loop do
  Kernel.puts(MESSAGES['welcome'])
  Kernel.puts('')

  prompt('Please enter first number')
  number1 = get_operands()
  prompt('Please enter second number')
  number2 = get_operands()

  operator_prompt = <<-MSG
  What operation do you wish to perform?
  1) Addition
  2) Subtraction
  3) Multiplication
  4) Division
  MSG

  prompt(operator_prompt)
  operation = ''
  operations = [1, 2, 3, 4]
  loop do
    operation = Kernel.gets.chomp().to_i
    if operations.include?(operation)
      break
    else
      puts "Hmm... #{operation} ???"
    end
  end

  result = case operation
           when 1
             number1 + number2
           when 2
             number1 - number2
           when 3
             number1 * number2
           when 4
             number1 / number2
           end

  operators = %w(+ - * /)
  prompt("#{number1} #{operators[operation - 1]} #{number2} = #{result}")

  prompt("Do you need to calculate again? (Y)es - <enter>")
  input = Kernel.gets().chomp().downcase
  break unless input.start_with?('y')
  Kernel.puts('Thank you for using the calculator. Goodbye.')
end
