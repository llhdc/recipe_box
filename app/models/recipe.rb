class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps

  def step_names
    steps.map {|step| step.description }.join(", ")
  end
end
