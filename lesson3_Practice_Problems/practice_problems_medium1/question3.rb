def factors(number)
  return 'Number must be > 0' if number < 1
  divisor = number
  factors = []
  loop do
    # check if number is evenly divisible by divisor
    # if so, divisor is a factor.
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    break if divisor == 0
  end
  factors # returns the result if number is > 0
end

p factors(10)
