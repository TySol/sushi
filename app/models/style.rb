class Style < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2, maximum: 25 }
	has_many :product_styles
	has_many :products, through: :product_styles
end