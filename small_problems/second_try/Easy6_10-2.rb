#Easy6_10-2.rb
#input: positive integer n
#output: a right triangle whose sides each have n stars
# specifications:
# -triangle is n lines high
# -first line has 4 spaces and 1 star
# - last line has 5 stars

#Approach
# First line has n-1 spaces,  1 star
# Each line after has 1 less space, 1 more star
# Stops when there are 0 stars and n stars

def triangle(n)
  stars = 1
  spaces = n-1
  n.times do |_|
    puts ( " " * spaces) + ("*" * stars)
    stars += 1
    spaces -= 1
  end
end 


# test cases
triangle(5)
triangle(9)
