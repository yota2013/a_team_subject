require 'test_helper'

class BlogPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get blog_pages_home_url
    assert_response :success
  end

  test "should get comments" do
    get blog_pages_comments_url
    assert_response :success
  end

end
