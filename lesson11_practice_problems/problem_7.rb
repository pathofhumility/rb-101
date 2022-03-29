statement = 'The Flintstones Rock'
letters = statement.delete(' ').chars.uniq
char_hash = {}
letters.each { |char| char_hash[char] = statement.count(char) }

p char_hash
