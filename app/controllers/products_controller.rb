class ProductsController < ApplicationController
    def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
  
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
end 
  
def description 
product=Products.find_by(id: params[:id]) 
render plain: product.description 
end 


  def inventory 
    product=Products.find_by(id: params[:id]) 
    render plain: 
    if product.inventory > 0 
    "true"
    else 
        "false"
    end 
  end 
 
  private

  def product_params
  params.require(:product).permit(:name, :description, :price, :inventory)
  end
end   