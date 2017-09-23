class IngredientsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.build(ingredient_params)
    if @ingredient.save
      redirect_to recipe_path(@recipe)
    end
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to recipe_path(@recipe)
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    if @ingredient.destroy
      redirect_to recipe_path
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:element, :quantity, :metric_measurement)
  end

end
