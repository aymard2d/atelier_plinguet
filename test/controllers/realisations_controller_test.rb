require "test_helper"

class RealisationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get realisations_new_url
    assert_response :success
  end

  test "should get index" do
    get realisations_index_url
    assert_response :success
  end

  test "should get show" do
    get realisations_show_url
    assert_response :success
  end

  test "should get create" do
    get realisations_create_url
    assert_response :success
  end

  test "should get update" do
    get realisations_update_url
    assert_response :success
  end

  test "should get edit" do
    get realisations_edit_url
    assert_response :success
  end

  test "should get delete" do
    get realisations_delete_url
    assert_response :success
  end
end
