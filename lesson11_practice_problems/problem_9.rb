def titleize(str)
  str.split(' ').map { |word| word.capitalize }.join(' ')
end

puts titleize('the flintstones rock')
