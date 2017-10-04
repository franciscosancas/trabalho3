require 'test_helper'

class BoletimsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boletims_index_url
    assert_response :success
  end

end
