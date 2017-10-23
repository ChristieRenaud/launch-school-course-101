#input: An array of integers between 0 and 19
#output: an array of integers, sorted based on their English words

#approach: create a lookup table array with english numbers corresponding to numberical indexes
#sort the array based on the value of numbers english number
#return sorted array

NUMBERS = %w(zero one two three four five six seven eight nine ten eleven twelve 
            thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.sort_by {|num| NUMBERS[num] }
end

# alternate solution

def alphabetic_number_sort(array)
  english_number_array = array.map {|num| NUMBERS[num] }
  english_number_array.sort.map { |number| NUMBERS.index(number) }
end

#test cases:
p alphabetic_number_sort((0..19).to_a) #== [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0
#]

