def digits(x)
  nums = x.to_s.split(//)
  nums.map { |num| num.to_i }
end

puts digits(192)

puts digits (3)

puts digits(555)

puts digits(12340)