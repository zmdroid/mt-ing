class StaticPagesController < ApplicationController
  before_action :activate_about, only: [:company_history, :machinery, :employees]

  def home
    @home_active = true
  end

  def company_history
    @company_history_active = true
  end

  def machinery
    @machinery_active = true
  end

  def employees
    @employees_active = true
  end

  def products
    @products_active = true
  end

  def contact
    @contact_active = true
    # @enquiry, @budget
    contact_page_info
  end

  private

  def activate_about
    @about_active = true
  end
end
