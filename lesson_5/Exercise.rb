arr = ['10', '11', '9', '7', '8']
arr.sort_by! do |str|
  str.to_i
end
arr.reverse

# alernate

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

