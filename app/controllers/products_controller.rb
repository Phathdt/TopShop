class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  def index
    products = TopshopCore::ProductDomain.search_products(params)

    render json: paging_response(products, ProductSerializer)
  end

  def show
    render json: simple_response(@product, ProductSerializer)
  end

  # def create
  #   @product = Product.new(product_params)

  #   if @product.save
  #     render json: @product, status: :created, location: @product
  #   else
  #     render json: @product.errors, status: :unprocessable_entity
  #   end
  # end

  # def update
  #   if @product.update(product_params)
  #     render json: @product
  #   else
  #     render json: @product.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @product.destroy
  # end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def search_params
    params.permit(:search, :page, :from_price, :to_price, :sort_type, :sort_direction)
  end

  # def product_params
  #   params.require(:product).permit(:name, :price, :original_price, :active)
  # end
end
