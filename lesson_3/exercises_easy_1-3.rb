advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.split()
advice[6] = "urgent"
advice = advice.join(" ")
puts advice

# or

advice2 = "Few things in life are as important as house training your pet dinosaur."
puts advice2.gsub!('important', 'urgent')