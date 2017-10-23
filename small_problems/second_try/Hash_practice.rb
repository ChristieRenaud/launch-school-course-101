# #Exercise 1
# car = {type: "sedan", color: "blue", mileage: 80_000 }
# car[:year] = 2003
# car.delete(:mileage)
# puts car[:color]


numbers = {
  high:   100,
  medium: 50,
  low:    10 
}

# numbers.each do |key, value|
#   puts "A #{key} number is #{value}."
# end

# half_numbers = numbers.map { |key, value| value/2 }
# p half_numbers

# low_numbers = numbers.select! { |key, value| value < 25 }
# p low_numbers
# p numbers

Vehicles = { Car:  {  type: 'sedan',
                      color:'blue',
                      year:  2003
                    },
            Vehicle: { type: 'pickup',
                        color:  'red',
                        year:   1998 
                      }
            }

car = [[ :type, 'sedan'], [:color, 'blue'], [:year, 2003]]

