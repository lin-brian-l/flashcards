class RoundsController < ApplicationController
  def create
    @round = Round.new(user_id: current_user.id, deck_id: params[:deck_id])
    @round.save
    @next_card = @round.pick_random_card
    redirect_to "/rounds/#{@round.id}/cards/#{@next_card.id}"
  end
end
