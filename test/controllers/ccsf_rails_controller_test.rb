require 'test_helper'

class CcsfRailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Index | Ruby on Rails Tutorial Sample App"
  end

  test "should get links" do
    get :links
    assert_response :success
    assert_select "title", "Links | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
