require 'test_helper'

class DevlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devlog = devlogs(:one)
  end

  test "should get index" do
    get devlogs_url
    assert_response :success
  end

  test "should get new" do
    get new_devlog_url
    assert_response :success
  end

  test "should create devlog" do
    assert_difference('Devlog.count') do
      post devlogs_url, params: { devlog: { content: @devlog.content, title: @devlog.title } }
    end

    assert_redirected_to devlog_url(Devlog.last)
  end

  test "should show devlog" do
    get devlog_url(@devlog)
    assert_response :success
  end

  test "should get edit" do
    get edit_devlog_url(@devlog)
    assert_response :success
  end

  test "should update devlog" do
    patch devlog_url(@devlog), params: { devlog: { content: @devlog.content, title: @devlog.title } }
    assert_redirected_to devlog_url(@devlog)
  end

  test "should destroy devlog" do
    assert_difference('Devlog.count', -1) do
      delete devlog_url(@devlog)
    end

    assert_redirected_to devlogs_url
  end
end
