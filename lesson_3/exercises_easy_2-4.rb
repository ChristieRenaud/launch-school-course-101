Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match("Dino")

Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Question 6
flintstones << "Dino"

Question 7
flintstones.push("Dino", "Happy")
flintstones.concat(["Dino", "Happy"])

Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0..38)

Question 9
statement = "The Flintstones Rock!"
statement.count("t")

Question 10`1                                 
title = "Flintstones Family Members"
puts (" " * (40 - title.length/2)) + title + (" " * (40 - title.length/2))
title.center(40)
