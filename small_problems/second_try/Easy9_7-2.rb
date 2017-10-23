#input: A string containing a first and last name
#output: A string that contains last name, a comma, a space and first name

#approach
#split string into an array
#reverse array
#join array with a comma and space

def swap_name(full_name)
  full_name.split.reverse.join(', ')
end

#test cases:
p swap_name('Joe Roberts') #== 'Roberts, Joe'