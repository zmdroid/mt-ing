class AdminsController < ApplicationController
  before_action :logged_in?, only: [:dashboard]

  def dashboard
    # code here
  end
end
