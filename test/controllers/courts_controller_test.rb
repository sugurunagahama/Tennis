require 'test_helper'

class CourtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get courts_index_url
    assert_response :success
  end

end
