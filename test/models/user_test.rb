require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Chinchilla", email: "chinchilla@gmail.com",
       password: "beatbeat", password_confirmation: "beatbeat")
  end

  test "must have name and email" do
    @user.name = "  "
    @user.email = "  "
    assert_not @user.valid? 
    assert @user.errors.full_messages.size == 2
  end

  test "name and email should not be too long" do
   @user.name = @user.name = "a" * 51 
   @user.email = "a" * 250 + "@gmail.com"
   assert_not @user.valid? 
   assert @user.errors.full_messages.size == 2
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end


end
