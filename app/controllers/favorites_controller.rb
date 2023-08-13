class FavoritesController < ApplicationController
  def create
    Favorite.create(product: product, user: Currente.user)
    redirect_to product_path(product)
  end

  private 

  def product
    @product ||= Product.find(params[:product_id])
  end
end
