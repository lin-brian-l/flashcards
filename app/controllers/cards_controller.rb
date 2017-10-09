class CardsController < ApplicationController
  def show
    @card = find_and_ensure_card(params[:id])
  end

  def check
    @answer = params[:user_answer]
  end

  def find_and_ensure_card(id)
    card = Card.find_by(id: id)
    render :file => "#{Rails.root}/public/404.html", :status => 404 unless card
    card
  end

end
