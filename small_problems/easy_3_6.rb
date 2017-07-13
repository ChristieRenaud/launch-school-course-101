# easy_3_6.rb

def one_true?(arg_1, arg_2)
  true if (arg_1 == true && arg_2 == false)
end

def xor?(arg_1, arg_2)
    return true if one_true?(arg_1, arg_2)
    return true if one_true?(arg_2, arg_1)
    false
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

#----------------

def xor?(arg_1, arg_2)
  return true if arg_1 && !arg_2
  return true if arg_2 && !arg_1
  false
end