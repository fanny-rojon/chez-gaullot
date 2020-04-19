class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.text :ingredients_list
      t.text :preparation
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
