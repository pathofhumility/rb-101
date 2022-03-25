result = [1, 2, 3].reject do |num|
  puts num
end

p result # [1, 2, 3]

# reject returns a new array containing the elements for which the blocks last
# expression did NOT evaluate as truthy.

