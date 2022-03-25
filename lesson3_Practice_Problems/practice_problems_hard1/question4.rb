def is_an_ip_number?(word)
  (0..255).include?(word.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false unless dot_separated_words.length == 4

  while dot_separated_words.size.positive?
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

puts dot_separated_ip_address?('123.23.21.11')
