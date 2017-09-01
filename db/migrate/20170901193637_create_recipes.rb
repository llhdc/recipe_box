class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :makes
      t.text :steps
      t.string :ingredients

      t.timestamps
    end
  end
end
