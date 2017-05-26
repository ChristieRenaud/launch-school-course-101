flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name.slice(0, 3) }

#launch school
flintstones.map! { |name| name[0, 3] }
