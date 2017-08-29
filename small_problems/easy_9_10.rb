def buy_fruit(list)
  expanded_list = []
  list.each do | subarray |
    subarray[1].times { |idx| expanded_list << subarray[0] }
  end
  expanded_list
end

#alternative solution

def buy_fruit(list)
  list.map { | subarray | [subarray[0]] * subarray[1] }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]