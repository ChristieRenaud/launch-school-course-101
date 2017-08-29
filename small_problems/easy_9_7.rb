# def swap_name(name)
#   name_array = name.split
#   name_array[1] + ", " + name_array[0]
# end  

def swap_name(name)
  "#{name.split[1]}, #{name.split[0]}"
end  

#alternate solution
def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') #== 'Roberts, Joe'