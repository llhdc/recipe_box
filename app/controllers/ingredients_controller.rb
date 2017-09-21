class IngredientsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = Ingredient.all
  end

  def show

  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
  end
end
