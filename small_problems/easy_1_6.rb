def reverse_words(phrase)
  if phrase.split.length <= 1
    if phrase.size >=5
      phrase.reverse
    else
      phrase
    end
  else
    phrase_array = phrase.split
    phrase_array.map! do |word|
      if word.size >=5
        word.reverse
      else
        word
      end
    end
    phrase_array.join(' ')
  end
end

puts reverse_words('Professional')     
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')  

# simplified

def reverse_words(phrase)

  phrase_array = phrase.split
  phrase_array.map! do |word|
    word.reverse! if word.size >=5
    word
  end
  phrase_array.join(' ')
end

puts reverse_words('Professional')     
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')  