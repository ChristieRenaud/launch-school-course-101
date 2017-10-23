def triangle(angle_a, angle_b, angle_c)
  angles = [angle_a, angle_b, angle_c]
  case
  when angles.inject(:+) != 180 || angles.any?{ |x| x <= 0 }
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |x| x < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid