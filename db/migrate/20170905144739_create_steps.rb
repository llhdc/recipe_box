class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.text :description
      t.references :recipe

      t.timestamps
    end
    add_foreign_key :steps, :recipes, on_delete: :cascade
  end
end
