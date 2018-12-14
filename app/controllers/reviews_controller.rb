class ReviewsController < ApplicationController
  before_action :get_product

  def new
    # @product = Product.find(params[:product_id].to_i)
    @review = @product.reviews.new

  end

  def create
    if @review = @product.reviews.create(permit_params)
      redirect_to product_path(@product)
    else
      render :new
    end
    # binding.pry
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def update
  end

  def destroy
  end

  private
  def get_product
    @product=Product.find(params[:product_id].to_i)
  end

  def permit_params
    params.permit(:author, :content_body, :rating, :product_id)
  end




end
