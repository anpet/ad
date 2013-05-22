require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get output" do
    get :output
    assert_response :success
  end

end
