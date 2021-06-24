class ProductCategory < ApplicationRecord
  validates :category_name, :description, presence: true
  has_many :products, dependent: :destroy
  belongs_to :product_category_heading
end
