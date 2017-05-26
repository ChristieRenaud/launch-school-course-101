# Exercise_16.rb

def id_num
  hexes = (0..9).to_a.join.chars + ('a'..'f').to_a
  num = hexes.sample(8) << "-" << hexes.sample(4) << "-" << hexes.sample(4) << "-" << hexes.sample(4) << "-" << hexes.sample(12)
  num.join
end

####################
def id_num
  hexes = (0..9).to_a.join.chars + ('a'..'f').to_a
  sections = [8, 4, 4, 4, 12]
  
  uuid = []
  sections.each_with_index do |section, index|
    
    uuid << hexes.sample(section)
    uuid << '-' if index < sections.size - 1


  end
  uuid.join
end

