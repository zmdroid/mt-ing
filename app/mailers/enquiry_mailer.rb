class EnquiryMailer < ApplicationMailer
  def notify(enquiry)
    @enquiry = enquiry
    date = @enquiry.created_at
    @format_date = "#{date.day}/#{date.month}/#{date.year} - #{date.hour + 2}:#{date.min}"
    mail(to: "mting@mockmail.hr",
         subject: "Novi upit br. ##{@enquiry.id} - #{@enquiry.name}")
  end
end
