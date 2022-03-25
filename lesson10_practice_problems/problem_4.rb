result = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p result
# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

