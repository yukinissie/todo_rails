class CardController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
		@card = Card.new(card_params)
		if @card.save
			redirect_to root_path
		else
			render 'new'
		end
	end

  private
    def card_params
      params.require(:card).permit(
        :name,
        :discription,
        :column_id,
        :deadline
      )
    end
end
