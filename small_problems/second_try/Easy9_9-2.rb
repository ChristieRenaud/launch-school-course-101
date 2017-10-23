#input: 3 integer arguments
#output: a letter grade
#rules:
#90 <=score<=100 =>'A'
#80 <=score < 90 =>'B'
#70 <=score < 80 =>'C'
#60 <=score < 70 =>'D'
# 0 <=score < 60 =>'F'
# values all between 0 and 100

# approach
# find average of integer arguments
# - add integers together, divide by 3.0
# Use control structure to Check score compared to score table
# Return associated letter grade

def get_grade(score_1, score_2, score_3)
  score = (score_1 + score_2 + score_3)/3.0
  case score
  when 100...Float::INFINITY
    "A+"
  when 90..100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  else
    "F"
  end
end


#test cases
p get_grade(105, 100, 110) #== "A"
p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"