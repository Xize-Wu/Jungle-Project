require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "Passing User registration test" do
      @user = User.new
      @user.password = "password"
      @user.password_confirmation = "password"

      @user.save
      expect(@user.valid?).to be true
    end
end
end