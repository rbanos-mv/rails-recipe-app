class HomeController < ApplicationController
  include HomeHelper

  def index
    # implement
  end

  def public_recipes
    # implement
  end

  def shopping_list
    authenticate_user!

    @items, @total = calculate_shopping
    authorize! :read, current_user
  end
end
