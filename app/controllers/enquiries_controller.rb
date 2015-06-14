class EnquiriesController < ApplicationController
  def create
    if @enquiry.save
      EnquiryMailer.notify(@enquiry).deliver_now
    else
      render 'contact'
    end
  end
end
