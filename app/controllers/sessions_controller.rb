class SessionsController < ApplicationController

  def new
    render layout: "login"
  end

  def create
    @admin = Admin.find_by_email(params[:email])

    if @admin && @admin.password == params[:password]
      session[:admin_id] = @admin.id
      redirect_to admins_dashboard_path
    else
      redirect_to root_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
