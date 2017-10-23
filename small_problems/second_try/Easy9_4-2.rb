#Easy9_4-2.rb

#input: an integer
#output: an array of all integers  between 1 and the argument

def sequence(num)
  if num <= 0
    (num..1).to_a
  else
    (1..num).to_a
  end
end

#test cases:
p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]
p sequence(0)
p sequence(-5)