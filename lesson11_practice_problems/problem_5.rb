flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = flintstones.index { |name| name.start_with?('Be') }
puts result
