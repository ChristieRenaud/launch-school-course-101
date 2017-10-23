NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def convert_number(string)
  new_string = string.delete('^A-Za-z0-9')
  if NUMBERS.include?(new_string)
    string.sub(new_string, NUMBERS.index(new_string).to_s)
  else
    string
  end
end

def word_to_digit(sentence)
  result = sentence.split.map do |word|
    if NUMBERS.include?(word)
      word = NUMBERS.index(word)
    elsif word.match(/[^0-9a-z]/i)
      convert_number(word)
    else
      word
    end
  end
  result.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') 
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# further exploration
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

def format_phone_number(number)
  number.insert(0, "(")
  number.insert(4, ")")
  number.insert(8, "-")
end

number.gsub!(/(\d{3})(\d{3})(\d{4})/,'(\1) \2-\3')  # format 10 digit number into phone number