require 'test_helper'

class PilReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pil_review_index_url
    assert_response :success
  end

end
