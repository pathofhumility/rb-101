flag = false
greeting = 'hello world' if flag

puts greeting.nil?

# Why is `greeting` bound to `nil`?
# The if conditional does not create any special scope, but when the code is
# interpreted, `greeting` is declared and set to `nil` as part of
# the if conditional. Because the if conditional will always evaluate to false,
# `greeting` will not be set to "hello world", but it has been declared and
# initialized when the code was initially interpreted and thus will not throw an
# error when it is evaluated as an argument for `puts`.
