
def rotate90(matrix)
  result = []
  columns = matrix[0].count
  rows = matrix.count
  (0...columns).each do |column_index|
    new_row = (0...rows).to_a.reverse.map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

#new_matrix1 = rotate90(matrix1)
#new_matrix2 = rotate90(matrix2)
#new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

#new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
#new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
#new_matrix3 #== matrix2

# further exploration

def rotate(matrix, degrees)
  rotations = degrees/90
  new_matrix = matrix.dup
  rotations.times do
    new_matrix = rotate90(new_matrix)
  end
  new_matrix
end

p rotate(matrix2, 90)
p rotate(matrix2, 180)
p rotate(matrix2, 270)
p rotate(matrix2, 360)