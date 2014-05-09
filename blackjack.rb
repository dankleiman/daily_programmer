# From r/dailyprogrammer: http://www.reddit.com/r/dailyprogrammer/comments/24r50l/552014_161_easy_blackjack/

# So went to a Casino recently. I noticed at the Blackjack tables the house tends to use several decks and not 1. My mind began to wonder about how likely natural blackjacks (getting an ace and a card worth 10 points on the deal) can occur.

# So for this monday challenge lets look into this. We need to be able to shuffle deck of playing cards. (52 cards) and be able to deal out virtual 2 card hands and see if it totals 21 or not.

#     Develop a way to shuffle 1 to 10 decks of 52 playing cards.
#     Using this shuffle deck(s) deal out hands of 2s
#     count how many hands you deal out and how many total 21 and output the percentage.




#get number of decks and shuffle them all together
puts "How many decks are we playing with?"
n = gets.chomp.to_i
cards = ([11,2,3,4,5,6,7,8,9,10,10,10,10]*4*n).shuffle
#simple deal (two at a time makes a hand) and count number of blackjacks
i = 0
blackjacks = 0
hands = (26 * n)

while i < (51 * n)
    if cards[i] + cards[i+1] == 21
      blackjacks += 1
      puts "winning hand: #{cards[i]}, #{cards[i+1]}"
    else
      puts "#{cards[i]}, #{cards[i+1]}"
    end
    i += 2
end

winper = (100 * blackjacks) / hands

puts "After #{hands} hands there were #{blackjacks} blackjacks at #{winper}%."




