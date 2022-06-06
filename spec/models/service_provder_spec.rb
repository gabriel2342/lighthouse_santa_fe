require 'rails_helper'

RSpec.describe ServiceProvider, type: :model do
  subject(:service_provider) { described_class.new(name: "Test", 
                                                  about: "Testing", 
                                                  street: "test", 
                                                  city: "test", 
                                                  state: "test", 
                                                  zip: "test", 
                                                  contact_person: "test", 
                                                  phone: "+15055555555",
                                                  email: "gabrielpendas@gmail.com", 
                                                  url: "test",
                                                  municipality_id: 7, 
                                                  services: ["test"]) }

  describe "Associations" do
    it { should belong_to(:municipality).without_validating_presence }
  end

  it "is valid with valid attributes" do
    expect(service_provider).to be_valid
  end

  it "is valid without a contact person" do
    service_provider.contact_person = nil
    expect(service_provider).to be_valid
  end

  it "is not valid without a name" do
    service_provider.name = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without an about" do
    service_provider.about = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a street" do
    service_provider.street = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a city" do
    service_provider.city = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a state" do
    service_provider.state = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a zip" do
    service_provider.zip = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a phone" do
    service_provider.phone = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without an email" do
    service_provider.email = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without an url" do
    service_provider.url = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a mubncipality_id" do
    service_provider.municipality_id = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without any services" do
    service_provider.services = nil
    expect(service_provider).to_not be_valid
  end
  end