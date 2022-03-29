result = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end

p result # => true
# The #any? method is being evaluated based on the last statement in the block
# which is the num.odd? expression. Thus, at least one of the array's elements
# evaluates truthy so true is returned by the #any? method.
