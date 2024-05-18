class Card < ApplicationRecord
  has_many :associations
  has_many :users, through: :associations
end
