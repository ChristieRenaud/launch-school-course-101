#input: Two array arguments containing a list of numbers
#output: The product of every pair of numbers formed between elements of the arrays
#specifications: Sort result by increasing value

#Approach
# find the product of all pairs between 2 arrays
# sort the result

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |subarray| subarray[0] * subarray[1] }.sort
end

#slightly different
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |elem|
    array_2.size.times do |idx|
      products << elem * array_2[idx]
    end
  end
  products.sort
end


#test cases:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]