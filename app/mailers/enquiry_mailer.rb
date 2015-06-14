class EnquiryMailer < ApplicationMailer
  def notify(enquiry)
    @enquiry = enquiry
    mail(to: enquiry.email, subject: "foo")
  end
end
