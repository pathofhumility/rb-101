result = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p result # => [1, 2, 3]

# 'hi', being the last statement in the block, will determine if the select
# condition is satisfied. 'hi' evaluates as truthy, so through each iteration,
# num will be passed to an array that has been bound to result.

