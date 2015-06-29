class Enquiry < ActiveRecord::Base
  # VALIDATIONS
  validates :name, :email, :service_description, presence: { message: "...je obvezna vrijednost." }
  validates :email,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
              message: "...mora biti ispravan." }
  validates :service_description,
    length: { minimum: 40, message: "...mora sadržavati barem 40 znakova." }
  validates :phone,
    numericality: { message: "...mora sadržavati samo brojeve." },
    length: { maximum: 10, message: "...može imati najviše deset brojeva." },
    allow_blank: true

  # CALLBACKS
  before_validation :strip_phone

  private

  def strip_phone
    self.phone = phone.split('').collect { |e| e if e != " " }.join if phone
  end
end
