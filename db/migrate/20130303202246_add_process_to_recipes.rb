class AddProcessToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :process, :string

  end
end
