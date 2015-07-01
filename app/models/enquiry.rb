class Enquiry < ActiveRecord::Base
  # validations
  validates :name, :email, :service_description, presence: { message: "...je obvezna vrijednost." }
  validates :email,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
              message: "...mora biti ispravan." }
  validates :service_description,
    length: { minimum: 40, message: "...mora sadržavati barem 40 znakova." }
  validates :phone,
    numericality: { message: "...mora sadržavati brojeve." },
    length: { maximum: 10, message: "...može imati najviše deset brojeva." },
    allow_blank: true

  # custom validations
  validate :deadline_must_be_in_the_future

  # callbacks
  before_validation :strip_phone

  def deadline_must_be_in_the_future
    unless deadline.empty?
      chosen_date = Date.parse(deadline)
      today = Date.today
      errors.add(:deadline, "...mora biti u budućnosti.") if chosen_date <= today
    end
  end

  private

  def strip_phone
    self.phone = phone.split('').collect { |e| e if e != " " }.join if phone
  end
end
