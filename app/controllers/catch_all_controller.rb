class CatchAllController < ApplicationController
  def index
    product = Product.where('name LIKE ?', "#{params[:path].first}%").first
    
    redirect_to product_path(product)
  end
end
