require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get here" do
    get :here
    assert_response :success
  end

end
