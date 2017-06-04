def sum(num)
  total = 0
  num.to_s.chars.each do |x| 
    total += x.to_i
  end
  total
end

#######################

def sum(num)
  
  num.to_s.chars.inject { |sum, x| sum.to_i + x.to_i }
end

##########################

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end