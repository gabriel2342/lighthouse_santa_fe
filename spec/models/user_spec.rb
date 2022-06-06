require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { described_class.new(email: "gabrielpendas@gmail.com",
                                       password: "password") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "is not valid without an email" do
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is not valid without a password" do
      user.password = nil
      expect(user).to_not be_valid
    end
  end
end
