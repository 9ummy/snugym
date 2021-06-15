require 'test_helper'

class YogaReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yoga_review_index_url
    assert_response :success
  end

end
