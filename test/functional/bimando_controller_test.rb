require 'test_helper'

class BimandoControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
