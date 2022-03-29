munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_key do |name|
  if munsters[name]["age"] >= 65
    munsters[name]["age_group"] = 'senior'
  elsif munsters[name]["age"] < 18
    munsters[name]["age_group"] = 'kid'
  else
    munsters[name]["age_group"] = 'adult'
  end
end

p munsters
