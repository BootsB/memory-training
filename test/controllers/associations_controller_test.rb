require "test_helper"

class AssociationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get associations_new_url
    assert_response :success
  end

  test "should get create" do
    get associations_create_url
    assert_response :success
  end

  test "should get edit" do
    get associations_edit_url
    assert_response :success
  end

  test "should get update" do
    get associations_update_url
    assert_response :success
  end
end
