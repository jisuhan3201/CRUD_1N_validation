require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get area" do
    get :area
    assert_response :success
  end

  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get sports" do
    get :sports
    assert_response :success
  end

  test "should get arts" do
    get :arts
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

end
