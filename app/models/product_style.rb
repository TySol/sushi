class ProductStyle < ActiveRecord::Base
	belongs_to :product
	belongs_to :style
end