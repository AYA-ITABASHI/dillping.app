require "test_helper"

class Public::TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_tasks_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_tasks_edit_url
    assert_response :success
  end
end
