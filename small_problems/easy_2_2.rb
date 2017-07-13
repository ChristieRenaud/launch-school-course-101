METERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters"
length = gets.chomp.to_f
puts "Enter the width of the room in meters"
width = gets.chomp.to_f
area_m = (length * width).round(2)
area_f = (area_m * METERS_TO_FEET).round(2)
puts "The area of the room is #{area_m} square meters (#{area_f} square feet)."

########################

SQUARE_FEET_TO_INCHES = 144
SQUARE_FEET_TO_CENTIMETERS = 929.0304
puts "Enter the length of the room in feet"
length = gets.chomp.to_f
puts "Enter the width of the room in feet"
width = gets.chomp.to_f
area_feet = (length * width).round(2)
area_inches = (area_feet * SQUARE_FEET_TO_INCHES).round(2)
area_centimeters = (area_feet * SQUARE_FEET_TO_CENTIMETERS).round(2)
puts  "The area of the room is #{area_feet} square feet, " + \
      "(#{area_inches} square inches), and " + \
      "(#{area_centimeters} square centimeters.)"
