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

  # operator_prompt = <<-MSG
  # What operation do you wish to perform?
  # +) Addition
  # -) Subtraction
  # *) Multiplication
  # /) Division
  # MSG

  prompt(MESSAGES['operator_prompt'])
  operation = ''
  operations = %w(+ - * /)
  loop do
    operation = Kernel.gets.chomp()
    if operations.include?(operation)
      break
    else
      puts "Hmm... #{operation} ???"
    end
  end

  result = case operation
           when '+'
             number1 + number2
           when '-'
             number1 - number2
           when '*'
             number1 * number2
           when '/'
             number1 / number2
           end

  prompt("#{number1} #{operation} #{number2} = #{result}")

  prompt("Do you need to calculate again? (Y)es - <enter>")
  input = Kernel.gets().chomp().downcase
  break unless input.start_with?('y')
end
Kernel.puts('Thank you for using the calculator. Goodbye.')
