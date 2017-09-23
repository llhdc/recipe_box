class StepsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build(step_params)
    if @step.save
      redirect_to recipe_path(@recipe)
    end
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])

    if @step.update(step_params)
      redirect_to recipe_path(@recipe)
    end
  end

  def destroy

  end

  private

  def step_params
    params.require(:step).permit(:description)
  end

end
