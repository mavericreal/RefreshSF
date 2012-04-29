require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

end
