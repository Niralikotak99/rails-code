class ProductCategoryHeading < ApplicationRecord
	validates :category_name, presence: true
	has_many :product_categories, dependent: :destroy
	accepts_nested_attributes_for :product_categories, reject_if: :all_blank, allow_destroy: true

	
end
