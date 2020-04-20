class AddAuthorToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :author, :string
  end
end
