class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["user"] , password: ENV["pass"]
  def show
    @count_products = Product.count
    @count_cats = Category.count
  end
end
