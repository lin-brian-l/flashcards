class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  validates :question, :answer, :deck_id, { presence: true }
end
