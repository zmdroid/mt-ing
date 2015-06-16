class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def contact_page_info
    @enquiry = Enquiry.new
    @budget = [
      ["2 500", "2 500"],
      ["5 000", "5 000"],
      ["7 500", "7 500"],
      ["10 000", "10 000"],
      ["15 000", "15 000"],
      ["20 000", "20 000"],
      ["više od 30 000.", "30 000"]
    ]
  end

  protect_from_forgery with: :exception
end
