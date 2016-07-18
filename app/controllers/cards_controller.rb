class CardsController < ApplicationController

  def index
   @card = Card.all

  end

  def show
   @cards = Card.find(params[:id])
   @formation = @cards.formation
  end

end
