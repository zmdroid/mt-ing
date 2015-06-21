class Enquiry < ActiveRecord::Base
  # VALIDATIONS
  validates :name, :email, :service_description, presence: true
  validates :email,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
              message: "...mora biti ispravan." }
  validates :service_description,
    length: { minimum: 40, message: "...mora sadržavati barem četrdeset znakova." },
    allow_nil: true
  validates :phone,
    numericality: true,
    length: { maximum: 10, message: "...mora sadržavati maksimalno deset brojeva." },
    allow_nil: true

  # CALLBACKS
  before_validation :strip_phone

  def msgs
    self.errors.messages
  end

  private

  def strip_phone
    self.phone = phone.split('').collect { |e| e if e != " " }.join if phone
  end
end
