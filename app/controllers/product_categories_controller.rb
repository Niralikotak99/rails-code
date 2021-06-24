class ProductCategoriesController < ApplicationController
	def index
		@product_categories = ProductCategory.all
		# binding.pry
	end
	def product
		@product_category_heading = ProductCategoryHeading.find_by(params[:product_category_heading_id])
		
	end
	def show
		@product_category = ProductCategory.find(params[:id])
	end
end
