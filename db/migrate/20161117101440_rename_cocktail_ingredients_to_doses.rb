class RenameCocktailIngredientsToDoses < ActiveRecord::Migration
  def change
    rename_table :cocktail_ingredients, :doses
  end
end
