def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt('Simple Calculator')
Kernel.puts('')
prompt('Please enter first number')
number1 = Kernel.gets.chomp()
prompt('Please enter second number')
number2 = Kernel.gets.chomp()

prompt('What operation do you wish to perform')
prompt('1) Addition 2) Subtraction 3) Multiplication 4) Division')
operation = Kernel.gets.chomp().to_i

result = case operation
         when 1
           number1.to_i + number2.to_i
         when 2
           number1.to_i - number2.to_i
         when 3
           number1.to_i * number2.to_i
         when 4
           number1.to_f / number2.to_f
         end

operators = %w(+ - * /)
prompt("#{number1} #{operators[operation - 1]} #{number2} = #{result}")
