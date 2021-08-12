class ColumnController < ApplicationController
  def index
		@columns = Column.all
	end

	def new
		@column = Column.new
	end

	def create
		@column = Column.new(column_params)
		if @column.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def destroy
		Column.find(params[:id]).delete
	end

	private
		def column_params
			params.require(:column).permit(
				:name,
				:order
			)
		end
end
