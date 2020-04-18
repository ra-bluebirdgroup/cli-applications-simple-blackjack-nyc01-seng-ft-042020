def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
   sum = deal_card + deal_card
   display_card_total(sum)
   sum
end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(sum)
  prompt_user
  input = get_user_input

   if input == "h"
     sum += deal_card

   elsif input == "s"
      sum
   else
      invalid_command
      hit?(sum)
   end
   sum
 end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  new_total = 0
  current_round = initial_round
  until current_round > 21
        display_card_total(current_round)
         current_round = hit?(current_round)
         current_round
 end

 end_game(current_round)
end
