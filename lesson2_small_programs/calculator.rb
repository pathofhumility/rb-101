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
operation = Kernel.gets.chomp()

case operation
when '1'
  result = number1.to_i + number2.to_i
  Kernel.puts("#{number1} + #{number2} = #{result}")
when '2'
  result = number1.to_i - number2.to_i
  Kernel.puts("#{number1} - #{number2} = #{result}")
when '3'
  result = number1.to_i * number2.to_i
  Kernel.puts("#{number1} * #{number2} = #{result}")
when '4'
  result = number1.to_f / number2.to_f
  Kernel.puts("#{number1} / #{number2} = #{result}")
else
  Kernel.puts('I\'m unsure what to do!')
end
