class CreateProductIngredients < ActiveRecord::Migration
  def change
    create_table :product_ingredients do |t|
    	t.integer :ingredient_id, :product_id
    end
  end
end
