def prompt(message)
  Kernel.puts("=>#{message}")
end

def not_valid?(number)
  number.empty?() || number.to_f() <= 0
end

prompt("Welcome to the Mortgage Calculator.")
prompt("Answer a few questions and I can calculate your monthly payment.")

loop do
  amount = ''
  loop do
    prompt("How much money do you need to borrow?")
    prompt("Enter a dollar amount greater than 0.")
    amount = Kernel.gets().chomp()
    if not_valid?(amount)
      prompt("Amount not valid.")
    else
      break
    end
  end

  rate = ''
  loop do
    prompt("What is the interest rate? For example, enter 5 for 5%")
    rate = Kernel.gets().chomp()
    if not_valid?(rate)
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  years = ''
  loop do
    prompt("How many years is the loan duration?")
    prompt("Please enter a number greater than 0.")
    years = Kernel.gets().chomp()
    if not_valid?(years)
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  monthly_rate = (rate.to_f / 12) * 0.01
  months = years.to_f * 12
  amount = amount.to_f

  monthly_payment = amount * (monthly_rate / (1 - (1 + monthly_rate)**-months))
  monthly_payment = monthly_payment.round(2)

  prompt("Your monthly payment will be $#{monthly_payment}.")

  prompt("Would you like to calculate another amount?")
  answer = Kernel.gets().chomp()
  if answer.downcase().start_with?('y')
    prompt("Great! Let's do another one.")
  else
    break
  end
end
prompt("Thank you for using the Mortgage Calculator. Goodbye!")
