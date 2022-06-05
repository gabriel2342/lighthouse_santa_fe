require 'rails_helper'

RSpec.describe ServiceProvider, type: :model do
  subject(:service_provider) { described_class.new(name: "Test", about: "Testing", street: "test", city: "test", 
                                                   state: "test", zip: "test", contact_person: "test", phone: "+15055555555",
                                                   email: "gabrielpendas@gmail.com", url: "test", municipality_id: 7, services: ["test"]) }

  describe "Associations" do
    it { should belong_to(:municipality).without_validating_presence }
  end

  it "is valid with valid attributes" do
    expect(service_provider).to be_valid
  end

  it "is not valid without a name" do
    service_provider.name = nil
    expect(service_provider).to_not be_valid
  end

  it "is not valid without a municipality" do
    service_provider.municipality_id = nil
    expect(service_provider).to_not be_valid
  end
  end