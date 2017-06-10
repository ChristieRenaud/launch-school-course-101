def prompt(message)
  puts "=> #{message}"
end

new_deck = [['C', '2'], ['C', '3'], ['C', '4'],
            ['C', '5'], ['C', '6'], ['C', '7'],
            ['C', '8'], ['C', '9'], ['C', '10'],
            ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A'],
            ['D', '2'], ['D', '3'], ['D', '4'],
            ['D', '5'], ['D', '6'], ['D', '7'],
            ['D', '8'], ['D', '9'], ['D', '10'],
            ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
            ['H', '2'], ['H', '3'], ['H', '4'],
            ['H', '5'], ['H', '6'], ['H', '7'],
            ['H', '8'], ['H', '9'], ['H', '10'],
            ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
            ['S', '2'], ['S', '3'], ['S', '4'],
            ['S', '5'], ['S', '6'], ['S', '7'],
            ['S', '8'], ['S', '9'], ['S', '10'],
            ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A']]

def choose_card(hand, deck)
  available_cards = deck.size - 1
  num = rand(available_cards)
  card = deck[num]
  deck.delete_at(num)
  hand << card
  card
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

  values.select { |value| value == "A" }.count.times do  # count the number of aces and check sum
    sum -= 10 if sum > 21                                # that many times, subtracting 10 if sum is over 21 each time
  end
  sum
end

def busted?(cards)
  total(cards) > 21
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

def who_won(player, dealer)
  if total(player) < total(dealer)
    "dealer"
  elsif total(dealer) < total(player)
    "player"
  elsif total(dealer) == total(player)
    "tie"
  end
end

def display_winner(player, dealer)
  prompt "Player cards: #{player}"
  prompt "Player total: #{total(player)}"
  sleep 2
  prompt "Dealer cards: #{dealer}"
  prompt "Dealer total: #{total(dealer)}"
  puts ''
  sleep 2
  case who_won(player, dealer)
  when "player"
    prompt "Player won! Congratulations"
  when "dealer"
    prompt "Sorry Dealer won"
  when "tie"
    prompt "It's a tie"
  end
end

loop do
  system 'clear'
  deck = new_deck
  player_hand = []
  dealer_hand = []

  # deal cards
  2.times do
    choose_card(player_hand, deck)
    choose_card(dealer_hand, deck)
  end
  prompt "Your hand is #{player_hand} "
  prompt "Dealer's hand is #{dealer_hand[0]} and a hidden card"
  sleep 1

  loop do
    player_turn = nil
    loop do
      prompt "hit or stay?"
      player_turn = gets.chomp
      break if ['hit', 'stay'].include?(player_turn)
      prompt "Sorry, please enter 'hit' or 'stay'"
    end

    if player_turn == "hit"
      player_new_card = choose_card(player_hand, deck)
      prompt "Your card is a #{player_new_card}"
      sleep 1
      prompt "Your current hand is #{player_hand}"
      prompt "your total is: #{total(player_hand)}"
      sleep 1
      break if busted?(player_hand)
    end

    break if player_turn == 'stay' || busted?(player_hand)
  end

  if busted?(player_hand)
    prompt "Sorry you busted."
    play_again? ? next : break
  else
    prompt "You chose to stay at #{total(player_hand)}"
    sleep 1
    puts ""
  end

  prompt "Dealer turn..."
  loop do
    break if total(dealer_hand) >= 17 || busted?(dealer_hand)
    dealer_new_card = choose_card(dealer_hand, deck)
    prompt "dealer hits"
    sleep 1
    prompt "Dealer's card is a #{dealer_new_card}"
    sleep 2
  end

  if busted?(dealer_hand)
    prompt "Dealer busted! Player wins."
    play_again? ? next : break
  else
    prompt "Dealer chose to stay"
    puts ""
  end

  if !busted?(player_hand) && !busted?(dealer_hand)
    display_winner(player_hand, dealer_hand)
    prompt "Thank you for playing Twenty-one!"
    break if !play_again?
  end
end
prompt "Thank you for playing Twenty-one. Good_bye!"
