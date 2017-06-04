require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

START_MODE = 'choose'

def prompt(msg)
  puts "=>#{msg}"
end

def joinor(array, punctuation=',', word ='or')
  joined_string = ''
  if array.size == 2
    return joined_string = array.first.to_s + ' ' + word + ' ' + array.last.to_s
  end 
  loop do 
    break if array.empty?
    num = array.shift
    case array.size 
    when 0
      joined_string += num.to_s
    when 1
      joined_string += (num.to_s + punctuation + ' ' + word + ' ')
    else
      joined_string += (num.to_s + punctuation + ' ')
    end
  end  
  joined_string
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts "First player to win 5 games wins the match."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def find_at_risk_square(line, board, player)
  if board.values_at(*line).count(player) == 2
    board.select{ |k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end
# def start_game
#   case START_MODE
#   when 'choose'
#     loop do
#       puts "Who should go first? (player or computer)?"
#       starting_player = gets.chomp.downcase
#       break if %w(player computer).include?(starting_player)
#       prompt "That's not a valid choice."
#     end
#   when 'player'
#     starting_player = 'player'
#   else
#     starting_player = 'computer'
#   end
# end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    if brd[5] == INITIAL_MARKER
      square = 5
    else 
      nil
    end
  end

  if !square 
    square = empty_squares(brd).sample 
  end

  brd[square] = COMPUTER_MARKER 
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  player_score = 0
  computer_score = 0

  case START_MODE
  when 'choose'
    starting_player = ''
    loop do
      prompt "Who should go first? (player or computer)?"
      starting_player = gets.chomp.downcase
      break if %w(player computer).include?(starting_player)
      prompt "Invalid choice."
    end
    starting_player
  when 'player'
    starting_player = 'player'
  else
    starting_player = 'computer'
  end

  loop do
    board = initialize_board
    binding.pry
    loop do
      if starting_player == 'player'
        display_board(board)
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        display_board(board) # I added
        computer_places_piece!(board)
        sleep 1 # I added
        break if someone_won?(board) || board_full?(board)
      else  
        display_board(board) # I added
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        display_board(board)
        player_places_piece!(board)
        sleep 1 # I added
        break if someone_won?(board) || board_full?(board)        
      end
    end

    display_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end


    if detect_winner(board) == 'Player'
      player_score += 1
    end
    if detect_winner(board) == 'Computer'
      computer_score += 1
    end

    sleep 1

    if player_score == 5 || computer_score == 5
      prompt "Game Over"
      if player_score == 5
        prompt "Player won!"
      else
        prompt "Computer won!"
      end
      break
    end
 
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe. Goodbye!"
