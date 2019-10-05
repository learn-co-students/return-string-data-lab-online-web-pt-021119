class ProductsController < ApplicationController

   def index 
    @products = Product.all
   end 

   def new 
    @post = Post.new
   end 
   
    def create 
        @product = Product.create(product_params)
        @product.save
        redirect_to products_path
    end 

    def inventory
        @p1 = Product.find_by_id(params[:id])
        render plain: @p1.inventory > 0 ? true : false 
    end 

    def description 
        @d1 = Product.find_by_id(params[:id])
        render plain: @d1.description
    end 

    


    private 

    def product_params
        params.require(:product).permit(:name, :inventory, :description, :price)
      end
end
