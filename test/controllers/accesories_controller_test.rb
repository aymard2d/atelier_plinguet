require "test_helper"

class AccesoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get accesories_new_url
    assert_response :success
  end

  test "should get create" do
    get accesories_create_url
    assert_response :success
  end

  test "should get index" do
    get accesories_index_url
    assert_response :success
  end

  test "should get show" do
    get accesories_show_url
    assert_response :success
  end

  test "should get delete" do
    get accesories_delete_url
    assert_response :success
  end

  test "should get update" do
    get accesories_update_url
    assert_response :success
  end

  test "should get edit" do
    get accesories_edit_url
    assert_response :success
  end
end
