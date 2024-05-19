class Card < ApplicationRecord
  has_many :associations
  has_many :users, through: :associations


  def suit_value
    "#{value} of #{suit.capitalize}"
  end

  def jqka
    if value == "10"
      "10"
    else
      value[0]
    end
  end

   def icon
    suits = {
    "hearts" => "♥",
    "spades" => "♠",
    "diamonds" => "♦",
    "clubs" => "♣",
  }
  suits[suit]
  end
end
