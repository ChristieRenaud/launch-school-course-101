def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

sentence1 = 'Reverse these words'
reverse_sentence(sentence1)