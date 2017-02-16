class Deck

attr_accessor :SUITS, :VALUES, :deck

  SUITS = ["Spades", "Hearts", "Diamonds", "Clubs"]
  VALUES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  def initialize
    @deck = []
    SUITS.each do |x|
      VALUES.each do |y|
        @deck.push (y + " of " + x)
      end
    end
    ##puts @deck
  end

  def shuffle
    @deck = @deck.sort_by{rand}
  end

  def deal
    hand = @deck.shift(2)
    hand = hand.to_s
  #  card2 = @deck.shift
  #  hand = card1 + ", " + card2
    puts "Your hand is " + hand
  end

  def dealer
    deal_hand_shown = deck.shift
    deal_hand_hidden = deck.shift
    puts " Dealer reveals a" + deal_hand_shown
  end

end

## './cards.rb'
