# (x) ask the user for two numbers
# () ask the user what type of operation to perform
# addition, subtraction, multiplication, division
# () perform the operation on the given numbers
# () output the result

Kernel.puts('Simple Calculator')
Kernel.puts('')
Kernel.puts('Please enter first number:')
number_1 = Kernel.gets.chomp()
Kernel.puts('Please enter second number:')
number_2 = Kernel.gets.chomp()

Kernel.puts('What operation do you wish to perform?')
Kernel.puts('1)Addition 2)Subtraction 3)Multiplication 4)Division')
operation = Kernel.gets.chomp()

case operation
  when 1
    result = number_1 + number_2
    Kernel.puts("#{number_1} + #{number_2} = #{result}")
  else
    Kernel.puts('I\'m unsure what to do!')
end

Kernel.puts(number_1, number_2)