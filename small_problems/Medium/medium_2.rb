
def longest_sentence(text)
  first_sentence = text.match(/\A(.*?)[.!?]\s+/)
end


example = %(Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a  great battlefield of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.)
p longest_sentence(example)  