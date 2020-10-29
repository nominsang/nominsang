require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get portal_home_url
    assert_response :success
  end

  test "should get about" do
    get portal_about_url
    assert_response :success
  end

  test "should get blog" do
    get portal_blog_url
    assert_response :success
  end

end
