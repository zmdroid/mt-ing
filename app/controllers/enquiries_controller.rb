class EnquiriesController < ApplicationController

  def create
    enquiry = Enquiry.new(enquiry_params)
    EnquiryMailer.notify(enquiry).deliver_now if enquiry.save
    # @enquiry, @budget
    contact_page_info
    redirect_to contact_path
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :service_description,
                                    :phone, :entity, :budget, :deadline)
  end
end
