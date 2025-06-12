require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    # get users_show_url
    user = User.find_by(email_address: "User1@example.com")
    get users_show_url(user)
    assert_response :success
  end
end
