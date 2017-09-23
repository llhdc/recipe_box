class Recipe < ApplicationRecord
  attr_accessor :element
  has_many :ingredients
  has_many :steps

  def element
    @ingredient.element
  end

  def step_names
    steps.map {|step| step.description }.join(", ")
  end

  def ingredient_names
    ingredients.map {|ingredient| ingredient.element }.join(", ")
  end
end
