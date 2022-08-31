class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
    @product_count = Product.count()
    @category_count = Category.count()
  end

end
