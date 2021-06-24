class Product < ApplicationRecord
  belongs_to :product_category
  validates :pname, presence: true

  TYPES = ["abc", "abcd"]
end
