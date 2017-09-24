class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :element
      t.integer :quantity
      t.references :recipe

      t.timestamps
    end
    add_foreign_key :ingredients, :recipes, on_delete: :cascade
  end
end
