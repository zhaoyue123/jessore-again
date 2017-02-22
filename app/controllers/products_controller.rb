class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(parmas[:id])
    current_cart.add_product_to_cart(@product)
    redirect_to :back
    flash[:notice] = "测试加入购物车"
  end
end
