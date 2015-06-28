class EnquiriesController < ApplicationController
  before_action :set_budget, only: [:new, :create]

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.notify(@enquiry).deliver_now
      redirect_to contact_path
    else
      invalid_name = @enquiry.errors.messages[:name]
      @invalid_name = invalid_name.first if invalid_name
      if invalid_email = @enquiry.errors.messages[:email]
        @invalid_email = invalid_email.size == 2 ? invalid_email.first : invalid_email.last
      end
      phone_error = @enquiry.errors.messages[:phone]
      @phone_error = phone_error.first if phone_error
      service_error = @enquiry.errors.messages[:service_description]
      @service_error = service_error.first if service_error
      render 'new'
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :service_description,
                                    :phone, :entity, :budget, :deadline)
  end

  def set_budget
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
end
