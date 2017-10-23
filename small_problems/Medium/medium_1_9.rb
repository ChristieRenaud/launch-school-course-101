def fibonacci(n)
  series = [0]
  1.upto(n).each do |num|
    if num <= 2 
      series << 1 
    else 
      series << series[num-1] + series[num-2]
    end
  end
  series[n]
end




p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501