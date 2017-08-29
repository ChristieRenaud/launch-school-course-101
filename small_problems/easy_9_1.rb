def greetings(name, status)
  full_name = name.join(' ')
  title = status[:title]
  occupation = status[:occupation]
  puts "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.