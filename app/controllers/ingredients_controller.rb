class IngredientsController < ApplicationController

	def show
		@ingredient = Ingredient.find(params[:id])
		@products = @ingredient.products.paginate(page: params[:page], per_page: 48)
	end


	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ing_params)
		if @ingredient.save
			flash[:success] = "Ingredient was created succesfully"
			redirect_to products_path
		else
			render 'new'
		end
	end

	private

	def ing_params
		params.require(:ingredient).permit(:name)
	end
end