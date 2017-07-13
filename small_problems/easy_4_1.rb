def short_long_short(first_string, second_string)
  case first_string.size <=> second_string.size
    when -1
      first_string + second_string + first_string
    when 1
      second_string + first_string + second_string
    end
end
#-------------------
def short_long_short2(first_string, second_string)
  first_string.size < second_string.size ? first_string + second_string + first_string : second_string + first_string + second_string
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

p short_long_short2('abc', 'defgh')
p short_long_short2('abcde', 'fgh')
p short_long_short2('', 'xyz')