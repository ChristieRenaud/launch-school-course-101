def cleanup(string)
  string.gsub!(/[^a-zA-Z]/, ' ')
  space_count = 0
  string = string.chars.each_with_object([]) do |char, string_array|
    if char == " " 
      space_count += 1
      string_array << char if space_count <= 1
    elsif char != " "
      string_array << char
      space_count = 0
    end
  end  
  string.join
end

#alternate
def cleanup(string)
  string.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')
end

#alternate
def cleanup(string)
  string = string.chars.map do |char|
    !('a'..'z').include?(char.downcase) ? char = ' ' : char
  end
  string.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") #== ' what s my line '