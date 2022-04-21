require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do
    before do
      @user = User.create(email: "user@test.com", password: "123456", password_confirmation: "12356")
    end
    it "can create user" do
      expect(@user).to be_valid
    end

    it "cannot create without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_root be_valid
    end
  end
end

