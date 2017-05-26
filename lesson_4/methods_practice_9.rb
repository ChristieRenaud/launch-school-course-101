words = "the flintstones rock"

def titleize(title)
  title.split.map { |word| word.capitalize }.join(' ')
end

puts titleize(words)