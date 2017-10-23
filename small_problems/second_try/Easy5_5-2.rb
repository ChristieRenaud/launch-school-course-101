#input: a string consisting of some words and non-alphabetic characters
#output: string with all non-alpha chars replaced by spaces and all multiple spaes replaced by one space

#approach:
#-remove non-alpha chars and replace with spaces, using regex
#-replace 2 or more spaces with 1 space


def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

#alternate solution

def cleanup(string)
  new_string = ''
  string.each_char do |char|
    ('a'..'z').include?(char.downcase) ? new_string << char : new_string << ' '
  end
  new_string.squeeze(' ')

end


# test case:
p cleanup("---what's my +*& line?") #== ' what s my line  '