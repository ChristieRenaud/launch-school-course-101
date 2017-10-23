# hard_2.rb

def star(n)
  middle = n/2
  1.upto(middle) do |x| #top of star
    spaces = (n/2)-x
    puts "*#{" " * spaces}*#{" " * spaces}*".center(n) 
  end
  puts "*" * n #middle line
  middle.downto(1) do |x| #bottom of star
    spaces = (n/2)-x
    puts "*#{" " * spaces}*#{" " * spaces}*".center(n) 
  end
end

star(7)
star(9)