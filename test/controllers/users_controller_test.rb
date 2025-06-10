require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # or however you set up your test user
  end

  test "should get show" do
    # Log in the user
    post session_path, params: { email_address: @user.user1@example.com, password: 'User1' }
    get user_url(@user)
    assert_response :success
  end
end