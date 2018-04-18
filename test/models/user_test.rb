require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:"jan_kowalski", email:"kowalski@interia.pl")
  end

  test "user should have name and email" do
    assert_not @user.name.nil?
    assert_not @user.email.nil?
  end

  test "user name shouldn't be too short" do
    @user.name = "a"
    assert_not @user.valid?
  end

  test "user email shouldn't be too short" do
    @user.email = "a"
    assert_not @user.valid?
  end

  test "user email shouldn't be valid" do
    @user.email = "example@asd,,,,pl"
    assert_not @user.valid?
  end

end
