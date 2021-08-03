class ToDoController < ApplicationController
	def home
		@columns = Column.all
		@cards = Card.all
	end

	def new_column
		@column = Column.new
	end

	def create_column
		@column = Column.new(column_params)
		if @column.save
			render 'home'
		else
			render 'new'
		end
	end

	def new_card
		@card = Card.new
	end

	def create_card
		@card = Card.new(card_params)
		if @card.save
			render 'home'
		else
			render 'new'
		end
	end

	private
		def column_params
			params.require(:column).permit(
				:name,
				:order
			)
		end

		def card_params
			params.require(:card).permit(
				:name,
				:discription,
				:column_id,
				:deadline
			)
		end
end
