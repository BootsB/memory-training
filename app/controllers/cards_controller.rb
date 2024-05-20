class CardsController < ApplicationController
  def random_deck
    @deck = Card.all.shuffle
  end
end
