require 'test_helper'

class MarksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
