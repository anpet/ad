require 'test_helper'

class BolgControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get write_complete" do
    get :write_complete
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get delete_post" do
    get :delete_post
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
