def count_occurrences(types)
  unique_element = types.uniq

  counter = 0
  repeats = []
  loop do
    break if counter == unique_element.size
    repeat_words = types.select do |string|
        string == unique_element[counter]
    end

    repeats << repeat_words.size
    counter += 1
  end

  index = 0
  occurrences = {}
  
  loop do 
    break if index == repeats.size
      unique_element.each do |element|
        occurrences[element] = repeats[index]
     index += 1
    end
  end

  occurrences.each { |key, value| puts "#{key} => #{value}" }

end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)