def sequence(num)
  return "Invalid input, must enter a positive number" if num < 0
  array = []
  1.upto(num) { |index| array << index } 
  array
end

p sequence(-5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]