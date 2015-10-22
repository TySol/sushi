class Product < ActiveRecord::Base
	belongs_to :user 
	has_many :product_styles, dependent: :destroy
	has_many :styles, through: :product_styles
	has_many :product_ingredients, dependent: :destroy
	has_many :ingredients, through: :product_ingredients

     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

     validates :image, presence: true   
validates :description, presence: true
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end
