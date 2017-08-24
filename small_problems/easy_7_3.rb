def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

#Further Exploration
def word_cap(string)
  word_array = string.split
  word_array.map! do |word|
    word[0] = word[0].upcase
    word
  end
  word_array.join(' ')
end

def word_cap(string)
  word_array = string.split
  word_array.map! do |word|
    word.chars.each_with_index do |letter, index|
      if index == 0
        letter.upcase!
      end
    end
  end
  word_array.map(&:join).join(' ')
end


p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'