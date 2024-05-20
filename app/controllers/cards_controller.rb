class CardsController < ApplicationController
  def index
  end

  def random_deck
    deck = Card.all.shuffle.map { |card| card.attributes.merge(value: card.jqka) }
    render json: deck
  end

end
