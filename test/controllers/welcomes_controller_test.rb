require "test_helper"

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get welcomes_start_url
    assert_response :success
  end
end
