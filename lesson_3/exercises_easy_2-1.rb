# 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.fetch("Spot", "Not in hash")

ages.key?("Spot")
ages.assoc("Spot")
ages.include?("Spot")
ages.member?("Spot")