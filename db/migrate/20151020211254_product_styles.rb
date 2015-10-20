class ProductStyles < ActiveRecord::Migration
  def change
  	create_table :product_styles do |t|
  		t.integer :style_id, :product_id
  	end
  end
end
