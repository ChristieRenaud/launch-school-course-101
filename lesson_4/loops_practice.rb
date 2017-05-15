produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  produce_keys = hsh.keys
  produce_values = hsh.values
  fruit_hash = {}
  x = 0

  loop do
    if produce_values[x] == "Fruit"
      fruit_hash[produce_keys[x]] = produce_values[x]
    end
    x += 1
    break if x == hsh.size
  end
  fruit_hash
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}