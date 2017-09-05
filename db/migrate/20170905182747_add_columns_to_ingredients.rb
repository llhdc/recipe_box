class AddColumnsToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :metric_measurement, :string
  end
end
