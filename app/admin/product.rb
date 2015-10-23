ActiveAdmin.register Product do
	index do
		column :title
		column :description
		column :style_ids
		column :ingredient_ids
	end
    # permit_params :storage_total_stat_id, :description, :title, :image, style_ids: [], ingredient_ids: []
end