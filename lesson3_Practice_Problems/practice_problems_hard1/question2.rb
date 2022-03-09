greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings

# Why does `greetings` => { a: 'hi there' } on the last line?
# `initial_greeting` is bound to the 'hi' value CONTAINED IN
# the hash bound to `greetings`. When that String value is mutated
# the key/value pair is affected.
