class StaticPagesController < ApplicationController
  def home
    @home_active = true
  end

  def about
    @about_active = true
  end

  def products
    @products_active = true
  end

  def contact
    @contact_active = true
  end
end
