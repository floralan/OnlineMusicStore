class ShopperController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:name)
  end

  def search
    @products = Product.where('name like ?', "%#{params[:search]}%")
    respond_to do |format|
      if @products.empty?
        @products = Product.order(:name)
        @search_message = "Fail to find search item '#{params[:search]}'"
        format.html{render :index}
      else
        format.html{render :index}
      end
    end
  end

end
