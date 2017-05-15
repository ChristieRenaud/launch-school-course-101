#Exercise_1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
index = 0
flintstones.each_with_object({}) do |element, flints|
  flints[element] = index
  index += 1
end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |element, flints|
  flints[element] = flintstones.index(element)
end

# launch school answer

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end