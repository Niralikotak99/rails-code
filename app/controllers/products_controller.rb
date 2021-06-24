class ProductsController < ApplicationController
	before_action :set_product, only: %i[ edit update destroy ]

	def index
  	@products = Product.all 
	end

	def new
		@product_category = ProductCategory.find(params[:product_category_id])
		@product = @product_category.products.new
		respond_to do |format|
	    format.html
	    format.js
	  end
	end

	def create
		@product_category = ProductCategory.find(params[:product_category_id])
		@product = @product_category.products.create(pname: params[:pname])
			# binding.pry
		if @product.save
			redirect_to product_category_path(@product_category), notice: "Product was successfully created "
			
		else
			puts @product.errors.full_messages
			render "_new"
		end	
	end	

	def edit
		@product_category = ProductCategory.find(params[:product_category_id])		
	end

	def update
		@product_category = ProductCategory.find(params[:product_category_id])

			# binding.pry
		if @product.update(product_params)
			redirect_to product_category_path(@product_category), notice: "Product was successfully updated "
		else
			render :edit
		end		
	end

	def destroy
		@product_category = ProductCategory.find(params[:product_category_id])

		@product.destroy
		redirect_to product_category_path(@product_category), notice: "Product was successfully destroyed "
	end	

	private
	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
    params.require(:product).permit(:pname)
	end
end
