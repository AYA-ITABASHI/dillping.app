require "test_helper"

class Public::EventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_event_index_url
    assert_response :success
  end
end
