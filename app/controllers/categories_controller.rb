class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:id)
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end
end
