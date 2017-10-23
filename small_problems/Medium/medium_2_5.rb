# def triangle(side_a, side_b, side_c)
#   sides = [side_a, side_b, side_c].sort
#   #return :invalid if sides.include?(0) || side[0] + side[1] <= side[2]
#   case 
#   when sides.include?(0) || sides[0] + sides[1] <= sides[2]
#     :invalid
#   when sides.all? {|x| x == sides[0]}
#     #side_a == side_b && side_b == side_c
#     #sides.count{|x| x == sides[0]} == 3  
#     :equilateral
#   when sides[0] == sides[1] || sides[1] == sides[2]
#     :isosceles
#   else
#     :scalene  
#   end
# end

def triangle(side_a, side_b, side_c)
  sides = [side_a, side_b, side_c].sort
  return :invalid if sides.include?(0) || sides[0] + sides[1] <= sides[2]
  case sides.uniq.size
  when 1  
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene  
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid