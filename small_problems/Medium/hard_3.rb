require 'pry'
# def transpose(matrix)
#   result = [[],[],[]]
#   3.times do |x|
#     result[x] << matrix[0][x] << matrix[1][x] << matrix[2][x]
#   end
#   result
# end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# new_matrix = transpose(matrix)

# p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

def transpose!(matrix)
  new_matrix = matrix.dup
  index = 0
  result = [[],[],[]]
  matrix.map! do |row|
    result[index] << new_matrix[0][index] << new_matrix[1][index] << new_matrix[2][index]
    #binding.pry
    index += 1
    result[index-1]
  end

end

p transpose!(matrix)
p matrix