puts 1.upto(99).select { |x| x.odd? }

#or

(1..99).to_a.each { |x| puts x if x.odd? }