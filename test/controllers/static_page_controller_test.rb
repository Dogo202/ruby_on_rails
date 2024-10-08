require "test_helper"

class StaticPageControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
  end

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
    end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
