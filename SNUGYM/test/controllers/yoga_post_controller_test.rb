require 'test_helper'

class YogaPostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yoga_post_index_url
    assert_response :success
  end

end
