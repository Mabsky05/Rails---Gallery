require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    # get users_show_url
    # code below is custom, AI-generated
    user = User.create!(email_address: "User1@example.com", password: "User1")
    post session_path, params: { email_address: "User1@example.com", password: "User1" }
    # user = User.find_by(email_address: "User1@example.com")
    get user_path(user.id)
    assert_response :success
  end
end

class UsersControllerTest < ActionController::IntegrationTest
  test "route test" do
    assert_generates "/users/1", { controller: "users", action: "create", id: "1" }
  end
end
