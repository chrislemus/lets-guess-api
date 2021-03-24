class CategoriesController < ApplicationController
  def index
    categorgies = Category.all
    render  json: categorgies, except: [:created_at, :updated_at]
  end 
end
