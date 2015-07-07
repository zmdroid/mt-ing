require 'rails_helper'

RSpec.describe Enquiry, type: :model do
  # testing presence of name, email and service description
  it 'is invalid without a name' do
    e = Enquiry.new(name: nil)
    e.valid?
    expect(e.errors.messages[:name].first).to eq("...je obvezna vrijednost.")
  end

  it 'is invalid without an email' do
    e = Enquiry.new(email: nil)
    e.valid?
    expect(e.errors.messages[:email].first).to eq("...je obvezna vrijednost.")
  end

  it 'is invalid withoug a service description' do
    e = Enquiry.new(service_description: nil)
    e.valid?
    expect(e.errors.messages[:service_description].first).to eq("...je obvezna vrijednost.")
  end

  # testing length of a service description
  it 'must be at least 40 characters long' do
    e = Enquiry.new(service_description: "C" * 39)
    e.valid?
    expect(e.errors.messages[:service_description]).to include("...mora sadržavati barem 40 znakova.")
  end

  it 'is valid when it has at least 40 characters' do
    e = Enquiry.new(service_description: "C" * 40)
    e.valid?
    expect(e.errors.messages[:service_description]).to eq(nil)
  end
end
