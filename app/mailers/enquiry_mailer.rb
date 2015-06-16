class EnquiryMailer < ApplicationMailer
  def notify(enquiry)
    @enquiry = enquiry
    mail(to: "mting@mockmail.hr", subject: "Novi upit")
  end
end
