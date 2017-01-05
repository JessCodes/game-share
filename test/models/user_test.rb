require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:"Jen", email:"jen@dogs.com", password:"jenlovesdogs")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
