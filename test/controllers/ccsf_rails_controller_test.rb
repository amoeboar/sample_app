require 'test_helper'

class CcsfRailsControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "CS 232 Ruby on Rails Development"
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Index | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
    assert_select "h1", "Contact"
    assert_select "h1.page-title"
  end
end
