result = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p result # => 2

# As count iterates through the array, each element will be passed to the block
# parameter str. For the elements in the array that have a length < 4, they will
# be summed, and that value will be returned by count.

