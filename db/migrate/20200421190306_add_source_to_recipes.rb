class AddSourceToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :source, :string
    add_column :recipes, :people, :integer
  end
end
