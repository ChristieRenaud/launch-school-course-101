

BLOCKS = [['B', 'O'], ['G', 'T'], ['V', 'I'], ['X', 'K'] ,['R', 'E'], ['L', 'Y'],
          ['D', 'Q'], ['F', 'S'], ['Z', 'M'], ['C', 'P'], ['J', 'W'], ['N', 'A'], ['H', 'U']]

def block_word?(words)
  new_block = BLOCKS.dup
  word_check = ''
    words.upcase.chars.each do |letter|
      0.upto(BLOCKS.size - 1) do |n|
        if [new_block[n][0], new_block[n][1]].include?(letter)
          new_block[n] = [[''],['']]
          word_check << letter
          next
        end
      end
    end

  return true if word_check == words.upcase
  false
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true

#other solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end