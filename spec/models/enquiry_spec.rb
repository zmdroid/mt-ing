require 'rails_helper'

describe Enquiry do
  # testing presence of a name, email and service description
  it "is invalid without a name, email and phone" do
    enquiry = Enquiry.new
    expect(enquiry).not_to be_valid
  end
  it "is valid with name, email and service description" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 40
    )
    expect(enquiry).to be_valid
  end
  it "is invalid without a name" do
    enquiry = Enquiry.new(
      email: "marko@gmail.com",
      service_description: "X" * 40
    )
    expect(enquiry).not_to be_valid
  end
  it "is invalid without an email" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      service_description: "X" * 40
    )
    expect(enquiry).not_to be_valid
  end
  it "is invalid without a service description" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "marko@gmail.com"
    )
    expect(enquiry).not_to be_valid
  end

  # testing service description
  it "is invalid if service description has less than forty characters" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 39
    )
    expect(enquiry).not_to be_valid
  end

  # testing phone requirements
  it "is invalid if all chars are not numerical" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 40,
      phone: "123 456 78a"
    )
    expect(enquiry).not_to be_valid
  end
  it "is invalid if it has more than ten numbers" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 40,
      phone: "123 456 789 12" # 11 numbers
    )
    expect(enquiry).not_to be_valid
  end
  it "is valid if it has ten numbers" do
    enquiry = Enquiry.new(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 40,
      phone: "123 456 789 1"
    )
    expect(enquiry).to be_valid
  end
  it "is stripping space in a phone number prior to persisting it" do
    enquiry = Enquiry.create(
      name: "Marko Markić",
      email: "ivanm@gmail.com",
      service_description: "X" * 40,
      phone: "123 456 789 1"
    )
    expect(enquiry.phone).to eq("1234567891")
  end
end
