class CardsController < ApplicationController
  def show
    @round = Round.find(params[:round_id])
    @card = Card.find(params[:id])
  end

  def check
    @answer = params[:user_answer]
    @card = Card.find(params[:id])
    @round = Round.find(params[:round_id])
    @round.guesses
    @guess = @round.guesses.find_by(card_id: @card.id)
    @guess.update_guess(@answer)

    if @guess.correct == true
      @correct = true
    else
      @correct = false
    end

    @round.round_complete

    if @round.completed == false
      @next_card = @round.pick_random_card
    end
  end

end
