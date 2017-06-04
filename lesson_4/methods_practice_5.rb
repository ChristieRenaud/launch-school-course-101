flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


flintstones.index { |name| name.start_with?('Be') }

# launch school
flintstones.index { |name| name[0, 2] == 'Be') }

