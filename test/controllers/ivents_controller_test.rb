require "test_helper"

class IventsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ivents_home_url
    assert_response :success
  end
end
