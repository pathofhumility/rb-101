result = { a: 'ant', b: 'bear' }.map do |_, value|
  value if value.size > 3
end

p result # => [nil, 'bear']
