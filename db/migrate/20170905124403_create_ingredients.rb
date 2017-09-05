class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :element
      t.integer :quantity

      t.timestamps
    end
  end
end
