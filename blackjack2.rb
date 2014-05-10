#updating blackjack.rb to include correct dealing to multiple players in order


puts "How many decks are we playing with?"
n = gets.chomp.to_i
cards = ([11,2,3,4,5,6,7,8,9,10,10,10,10]*4*n).shuffle
puts "How many players?"
players = gets.chomp.to_i
puts
#deal in order to players and count number of blackjacks
deal = 0
round = players * 2 * deal
blackjacks = 0
hands = 0

(cards.length / (players * 2)).times do
  puts "Deal number: #{deal+ 1}"
  i = (players * 2 * deal)
  while i < players + (players * 2 * deal)
    if cards[i] + cards[i+players] == 21
      blackjacks += 1
      puts "winning hand: #{cards[i]}, #{cards[i+players]}"
    else
      puts "#{cards[i]}, #{cards[i+players]}"
    end
    i += 1
    hands += 1
  end
  deal += 1
end
winper = (100 * blackjacks) / hands

puts "After #{hands} hands there were #{blackjacks} blackjacks at #{winper}%."
