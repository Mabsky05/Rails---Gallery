# require "test_helper"

class PicsControllerTest < ActionDispatch::IntegrationTest
  test "should get pics" do
    get pics_url
    assert_response :success
  end
end
