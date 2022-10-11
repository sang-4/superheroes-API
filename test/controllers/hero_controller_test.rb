require "test_helper"

class HeroControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get hero_controller_url
    assert_response :success
  end
end
