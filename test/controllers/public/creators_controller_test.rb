require "test_helper"

class Public::CreatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_creators_index_url
    assert_response :success
  end

  test "should get show" do
    get public_creators_show_url
    assert_response :success
  end
end
