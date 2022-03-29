flintsotnes = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintsotnes.each_with_index { |element, index| hash[element] = index }
p hash
