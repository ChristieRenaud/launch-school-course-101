def diamond(n)
  1.upto(n) { |stars| puts ("*" * stars).center(n) if stars.odd?  }
  (n-1).downto(1) { |stars| puts ("*" * stars).center(n) if stars.odd?  }
end

#my alternate solution

def diamond(n)
  rows = (1..n).to_a + (1..(n-1)).to_a.reverse
  rows.each { |row| puts ("*" * row).center(n) if row.odd? }
end

# further exploration
def diamond(n)
  rows = (1..n).to_a + (1..(n-1)).to_a.reverse
  rows.each do |row| 
    next if row.even?
    row == 1 ? puts("*".center(n)) : puts(("*" + (" " * (row-2)) + "*").center(n))
  end
end


diamond(1)
diamond(3)
diamond(9)