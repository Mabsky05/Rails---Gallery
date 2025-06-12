require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    # get users_show_url
    user = User.create!(email_address: "User1@example.com", password: "User1")
    post session_path, params: { email_address: "User1@example.com", password: "User1" }
    user = User.find_by(email_address: "User1@example.com")
    get user_url(user)
    assert_response :success
  end
end
