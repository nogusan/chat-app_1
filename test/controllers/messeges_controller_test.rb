require 'test_helper'

class MessegesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get messeges_index_url
    assert_response :success
  end

end
