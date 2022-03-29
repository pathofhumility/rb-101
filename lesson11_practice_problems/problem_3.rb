ages = { 
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 402,
  "Eddie" => 10
}

under_100 = ages.select { |_, v| v < 100 }
p under_100
