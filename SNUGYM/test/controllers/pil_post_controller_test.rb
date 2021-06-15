require 'test_helper'

class PilPostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pil_post_index_url
    assert_response :success
  end

end
