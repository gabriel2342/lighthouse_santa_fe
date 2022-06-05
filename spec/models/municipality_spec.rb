require 'rails_helper'

RSpec.describe Municipality, type: :model do
  subject(:municipality) { described_class.new(name: "Greatest City", organization_id: 1) }

  describe "Associations" do
    it { should belong_to(:organization).without_validating_presence }
  end

  it "is valid with valid attributes" do
    expect(municipality).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(municipality).to_not be_valid
  end

  it "is not valid without an organization" do
    subject.organization_id = nil
    expect(municipality).to_not be_valid
  end
end
