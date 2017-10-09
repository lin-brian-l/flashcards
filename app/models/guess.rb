class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round

  validates :counter, :round_id, :card_id, { presence: true }
end
