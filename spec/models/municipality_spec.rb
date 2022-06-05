require 'rails_helper'

RSpec.describe Municipality, type: :model do
  let(:organization) { Organization.new(name: "Test Organization", id: 42, municipality_id: 23) }
  subject { Municipality.new(name: "Greatest City", id: 23,organization_id: 42) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an organization" do
    subject.organization_id = nil
    expect(subject).to_not be_valid
  end
end
