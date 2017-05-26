# Exercise_10.rb

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each do |hsh|
  hsh.map do |key, value|
    hsh[key] = value + 1
  end
end

# Exercise_11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.map do |sub_array|
  sub_array.select do |num|
    num % 3 == 0
  end
end
 
# Exercise_12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
arr.each_with_object({}) do |sub_array, hsh|
  hsh[sub_array[0]] = sub_array[1]
end

# Exercise_13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by do |sub_array|
  sub_array.select do |el|
    el.odd?
  end
end

# Exercise_14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
new_array = []
hsh.map do |_, details|
  if details[:type] == "fruit"
    details[:colors].map { |color| color.capitalize }
  elsif details[:type] == "vegetable"
    details[:size].upcase
  end
end

# Exercise_15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
arr.select do |hsh|
  hsh.all? do |_, number_array|
    number_array.all? do |number|
      number.even?
    end
  end
end






