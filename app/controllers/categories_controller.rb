class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit]
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @categories = Category.order(:name)
  end

  def show
    @recipes = Recipe.where(category: @category)
    @recipe = Recipe.last
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    # no need for app/views/categorys/update.html.erb
    redirect_to category_path(@category)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :photo)
  end
end
