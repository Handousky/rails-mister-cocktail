class IngredientsController < ApplicationController
  def show
    @ingrendient = Ingredient.find(params[:id])
  end
end
