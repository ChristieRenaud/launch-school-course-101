GOAL_NUMBER = 21
WIN_GAME = 5
SUITS = ['C', 'D', 'H', 'S']
FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITS.product(FACES).shuffle
end

def deal_card(hand, deck)
  hand << deck.pop
end

def total(cards)
  values = cards.map { |card| card[1] } # create array of card values (strings)

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GOAL_NUMBER
  end
  sum
end

def busted?(totals)
  totals > GOAL_NUMBER
end

def play_again?
  answer = nil
  prompt "Would you like to play again? (y or n)"
  loop do
    answer = gets.chomp
    break if ["y", "n"].include?(answer)
    prompt "Invalid response. Please choose y or n."
  end
  answer == 'y'
end

def who_won(player_total, dealer_total)
  if player_total > GOAL_NUMBER
    :player_busted
  elsif dealer_total > GOAL_NUMBER
    :dealer_busted
  elsif player_total < dealer_total
    :dealer
  elsif dealer_total < player_total
    :player
  else
    :tie
  end
end

def increment_score(scores, player_total, dealer_total)
  result = who_won(player_total, dealer_total)
  if [:dealer_busted, :player].include?(result)
    scores[:player] += 1
  elsif [:player_busted, :dealer].include?(result)
    scores[:dealer] +=1
  end
end

def display_score(scores)
  prompt "The score is:"
  prompt "Player: #{scores[:player]}"
  prompt "Dealer: #{scores[:dealer]}"
  sleep 2
  system 'clear'
end

def match_won(scores)
  if scores[:dealer] == WIN_GAME
    "Dealer"
  elsif scores[:player] == WIN_GAME
    "Player"
  end
end

def display_winner(player_total, dealer_total)
  result = who_won(player_total, dealer_total)
  case result
  when :player_busted
    prompt "You busted. Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted. You win!"
  when :player
    prompt "Player won! Congratulations"
  when :dealer
    prompt "Sorry, dealer wins!"
  when :tie
    prompt "It's a tie"
  end
end

def end_of_round(player_hand, dealer_hand, player_total, dealer_total)
  puts '================='
  prompt "Player cards: #{player_hand}"
  prompt "Player total: #{player_total}"
  sleep 2
  puts ''
  prompt "Dealer cards: #{dealer_hand}"
  prompt "Dealer total: #{dealer_total}"
  puts '================='
  sleep 2

  display_winner(player_total, dealer_total)
  sleep 2
end

loop do
  system 'clear'
  prompt "Welcome to #{GOAL_NUMBER}. The player with the highest"
  prompt "score without going over #{GOAL_NUMBER} wins the round."
  puts ''
  prompt "The first player to win 5 rounds wins the match."
  puts '=================='
  sleep 1.5
  scores = { player: 0, dealer: 0 }

  loop do
    break if match_won(scores)
    deck = initialize_deck
    player_hand = []
    dealer_hand = []
    player_total = 0
    dealer_total = 0

    # deal cards
    2.times do
      deal_card(player_hand, deck)
      deal_card(dealer_hand, deck)
    end
    prompt "Your hand is #{player_hand}"
    prompt "Dealer's hand is #{dealer_hand[0]} and a hidden card"
    sleep 1

    loop do
      player_turn = nil
      player_total = total(player_hand)
      dealer_total = total(dealer_hand)
      loop do
        prompt "What would you like to do?"
        prompt "To hit, press h. To stay, press s."
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, please enter 'h' or 's'"
      end

      if player_turn == "h"
        deal_card(player_hand, deck)
        player_total = total(player_hand)
        prompt "Your card is a #{player_hand.last}"
        sleep 1
        break if busted?(player_total)
        prompt "Your current hand is #{player_hand}"
        prompt "your total is: #{player_total}"
        sleep 1

      end

      break if player_turn == 's'
    end

    if busted?(player_total)
      end_of_round(player_hand, dealer_hand, player_total, dealer_total)
      increment_score(scores, player_total, dealer_total)
      display_score(scores)
      next
    else
      prompt "You chose to stay at #{player_total}"
      sleep 1
      puts ""
    end

    prompt "Dealer turn..."
    dealer_total = total(dealer_hand)
    loop do
      break if dealer_total >= (GOAL_NUMBER - 4) || busted?(dealer_total)
      deal_card(dealer_hand, deck)
      prompt "dealer hits"
      sleep 1
      prompt "Dealer's card is a #{dealer_hand.last}"
      sleep 2
      dealer_total = total(dealer_hand)
    end

    if busted?(dealer_total)
      end_of_round(player_hand, dealer_hand, player_total, dealer_total)
      increment_score(scores, player_total, dealer_total)
      display_score(scores)
      next
    else
      prompt "Dealer chose to stay"
    end

    end_of_round(player_hand, dealer_hand, player_total, dealer_total)
    increment_score(scores, player_total, dealer_total)
    display_score(scores)
  end
  prompt "Match Over! #{match_won(scores)} won!"
  break unless play_again?
end

prompt "Thank you for playing #{GOAL_NUMBER}. Good_bye!"
