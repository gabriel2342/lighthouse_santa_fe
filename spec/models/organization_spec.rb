require 'rails_helper'

RSpec.describe Organization, type: :model do
  
  subject (:organization) { described_class.new(name: "Homelessness Boooooo") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(organization).to be_valid
    end

    it "is not valide without a name" do
      subject.name = nil
      expect(organization).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:user).optional }
    it { should have_many(:municipalities).dependent(:destroy).inverse_of(:organization) }
  end
end
