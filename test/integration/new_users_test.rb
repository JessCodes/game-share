require 'test_helper'

class NewUsersTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do 
    get new_user_path
    assert_no_difference 'User.count' do 
        post users_path, params: { user: { username: "",
                                          email:"user@invalid",
                                          password: "banana" } }
    end
  end
end
