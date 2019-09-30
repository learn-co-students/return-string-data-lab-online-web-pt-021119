class ProductsController < ApplicationController


	def index
		@products = Product.all
	end

	def description
		render plain: Product.find(params[:id].to_i).description
	end

	def inventory
		render plain: (Product.find(params[:id].to_i).inventory == 0 ? "false" : "true")
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.create({name: params[:name], description: params[:description]})
		redirect_to products_path
	end



end
