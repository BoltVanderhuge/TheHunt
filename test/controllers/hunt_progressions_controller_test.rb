require "test_helper"

class HuntProgressionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hunt_progressions_new_url
    assert_response :success
  end
end
