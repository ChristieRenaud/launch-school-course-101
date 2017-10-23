def toggle_lights(n)
  light_hash = {}
  (1..n).each { |num| light_hash[num] = true }
  (n-1).times do |index|
    (1..n).each { |num| light_hash[num] = !light_hash[num] if num % (index + 2) == 0}
  end
  light_hash
end

def onlights(light_hash)
  light_hash.keys.select { |key| light_hash[key] == true }
end

# p toggle_lights(5)
p onlights(toggle_lights(1000))

