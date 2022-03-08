# What would you expect the following code to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Not imtimately familiar with #uniq
# Expecting #uniq to return an array containing only the unique
# elements of the caller and leave the caller unmutated.
# Output =>
# 1
# 2
# 2
# 3
