class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :show, :destroy]
  def index
    @products = Product.paginate(page: params[:page], per_page: 9)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product was successfully created."
      redirect_to products_path
    else
      flash[:danger] = @product.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end
end
