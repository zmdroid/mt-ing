class EnquiriesController < ApplicationController
  before_action :set_budget, only: [:new, :create]

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)

    if @enquiry.save
      EnquiryMailer.notify(@enquiry).deliver_now
      flash[:notice] = "Vaš upit je uspješno zaprimljen!"
      redirect_to contact_path
    else
      enquiry_errors  = @enquiry.errors
      @invalid_name   = collect_errors(enquiry_errors, :name)
      @invalid_email  = collect_errors(enquiry_errors, :email)
      @phone_error    = collect_errors(enquiry_errors, :phone)
      @service_error  = collect_errors(enquiry_errors, :service_description)
      @deadline_error = collect_errors(enquiry_errors, :deadline)
      render 'new'
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :service_description,
                                    :phone, :entity, :budget, :deadline)
  end

  def collect_errors(enquiry_errors, attr)
    messages = enquiry_errors.messages[attr]
    if messages && attr == :email
      messages.size == 2 ? messages.first : messages.last
    elsif messages
      messages.first
    end
  end

  def set_budget
    @budget = [
      ["2 500", "2 500"],
      ["5 000", "5 000"],
      ["7 500", "7 500"],
      ["10 000", "10 000"],
      ["15 000", "15 000"],
      ["20 000", "20 000"],
      ["> 30 000", "30 000"]
    ]
  end
end
