def word_sizes(string)
  sizes = []
  string.split(' ').each do | word |
    sizes << word.size
  end
  size_hash = sizes.each_with_object({}) do | num, size_hash |
    size_hash[num] = sizes.count(num)
  end
  size_hash.sort_by { |key, value| key }
end  



p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}