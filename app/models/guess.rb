class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round

  validates :counter, :round_id, :card_id, { presence: true }

  def check_answer(user_answer)
    self.card.answer == user_answer
  end

  def update_guess(user_answer)
    if check_answer(user_answer)
      self.update(correct: true)
    end
    self.increment(:counter)
    self.save
  end

end
