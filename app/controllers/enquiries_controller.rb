class EnquiriesController < ApplicationController
  def create
    enquiry = Enquiry.new(enquiry_params)

    if enquiry.save
      EnquiryMailer.notify(enquiry).deliver_now
      redirect_to # ???
    else
      render 'contact'
    end
  end

  private

    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :service_description,
                                      :phone, :entity, :budget, :deadline)
    end
end
