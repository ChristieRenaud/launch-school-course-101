def get_grade(score_1, score_2, score_3)
  average_score = (score_1 + score_2 + score_3)/3
  return "A" if (90..100).include?(average_score)
  return "B" if (80...90).include?(average_score)
  return "C" if (70...80).include?(average_score)
  return "D" if (60...70).include?(average_score)
  "F"
end  

def get_grade(score_1, score_2, score_3)
  average_score = (score_1 + score_2 + score_3)/3
  
  case average_score
  when 101..Float::INFINITY   then 'A+'
  when 90..100                then 'A'
  when 80..89                 then 'B'
  when 70..79                 then 'C'
  when 60..69                 then 'D'
  else                             'F'
  end  
end  


p get_grade(105, 100, 100) #== "A+"
p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"