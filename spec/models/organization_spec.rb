require 'rails_helper'

RSpec.describe Organization, type: :model do
  
  subject { described_class.new(name: "Test Organization") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valide without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  
  # it "is not valid without a municipality"
end
