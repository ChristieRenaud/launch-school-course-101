produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  hsh.keys = produce_keys
  hsh.values = produce_values
  fruit_hash = {}
  x = 0

  loop do
    if produce_values[x] == "Fruit"
      fruit_hash[produce_keys[x]] = produce values[x]
    end
    x += 1
    break if x == hsh.size
  end
  fruit_hash
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}