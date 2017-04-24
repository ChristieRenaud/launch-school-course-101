VALID_CHOICES = { "r" => "rock",
                  "p" => "paper",
                  "sc" => "scissors",
                  "sp" => "spock",
                  "l" => "lizard" }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("it's a tie!")
  end
end

loop do
  player_score = 0
  computer_score = 0
  prompt("Welcome to The Rock, Paper, Scissors, Lizard, Spock Game.")
  prompt("First player to reach five points wins.")

  loop do
    choice = ''
    loop do
      choice_prompt = <<-MSG
        Please enter:
            r for rock
            p for paper
            sc for scissors
            l for lizard
            sp for spock
        MSG

      prompt(choice_prompt)
      choice = Kernel.gets().chomp().downcase()

      if VALID_CHOICES.key?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    choice = VALID_CHOICES[choice]
    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    display_results(choice, computer_choice)

    break if player_score == 5 || computer_score == 5
  end

  if player_score == 5
    prompt("You won the game!")
    prompt("Final score #{player_score} to #{computer_score}.")
  else
    prompt("Sorry, the computer won the game.")
    prompt("Final score #{computer_score} to #{player_score}.")
  end
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good-bye!")
