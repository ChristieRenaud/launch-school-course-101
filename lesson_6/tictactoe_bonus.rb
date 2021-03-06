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

def joinor(arr, punctuation=', ', word ='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(punctuation)
  end
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
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
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

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
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def who_goes_first
  if START_MODE == 'choose'
    answer = ''
    loop do
      prompt "Who should go first? (player or computer)?"
      answer = gets.chomp.downcase
      break if ['player', 'computer'].include?(answer)
      prompt "Invalid choice."
    end
    answer
  else
    START_MODE
  end
end

def mark_critical_square(square, brd, space)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, space)
    break if square
  end
end

def computer_places_piece!(brd)
  square = nil
  # mark_critical_square(square, brd, COMPUTER_MARKER)

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
  # mark_critical_square(square, brd, PLAYER_MARKER)
    # binding.pry
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def place_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  elsif player == 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(player_now)
  ["player", "computer"].select { |player| player != player_now }.first
end

loop do
  board = initialize_board
  player_score = 0
  computer_score = 0
  starting_player = who_goes_first
  loop do
    board = initialize_board
    current_player = starting_player

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      sleep 1
      break if someone_won?(board) || board_full?(board)
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
    prompt "The score is: Player #{player_score}, Computer #{computer_score}."
    sleep 2

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

  answer = ''
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break if ["y", "n"].include?(answer)
    prompt "Invalid response."
  end
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe. Goodbye!"
