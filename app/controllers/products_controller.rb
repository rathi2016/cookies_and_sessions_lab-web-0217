class ProductsController < ApplicationController
  def index
    @cart = cart.join(', ')
  end

  def add
    cart << params[:product]
    redirect_to root_path
  end
end
