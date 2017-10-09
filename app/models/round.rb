class Round < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  has_many :cards, through: :deck
  has_many :guesses

  validates :user_id, :deck_id, { presence: true }
  after_save :create_guesses

  def create_guesses
    self.deck.cards.each do |card|
      Guess.create(counter: 0, round_id: self.id, card_id: card.id)
    end
  end

end
