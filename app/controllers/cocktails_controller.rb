class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.find_by(cocktail_id: params[:id])
    # @ingredient = Ingredient.find_by(cocktail_id: dose_id: params)
  end
end
