def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   return rand(1..11)
end

def display_card_total(cards_value_sum)
  puts "Your cards add up to #{cards_value_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cards_value_sum)
  puts "Sorry, you hit #{cards_value_sum}. Thanks for playing!"
end

def initial_round
  cards_value_sum = deal_card + deal_card
  display_card_total(cards_value_sum)
  return cards_value_sum
end

def hit?(cards_value_sum)
  prompt_user
  s_or_h = get_user_input
  if s_or_h == "s"

  elsif s_or_h == "h"
      cards_value_sum += deal_card
      display_card_total(cards_value_sum)
  else
    invalid_command
  end
  return cards_value_sum
end

def invalid_command
  puts "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
    cards_value_sum = initial_round
  until cards_value_sum > 21
    cards_value_sum = hit?(cards_value_sum)
  end
    end_game(cards_value_sum)
end
