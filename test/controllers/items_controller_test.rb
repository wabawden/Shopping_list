require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get items_new_url
    assert_response :success
  end

  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get delete" do
    get items_delete_url
    assert_response :success
  end

  test "should get mark" do
    get items_mark_url
    assert_response :success
  end

  test "should get delete_all_marked" do
    get items_delete_all_marked_url
    assert_response :success
  end

  test "should get delete_all" do
    get items_delete_all_url
    assert_response :success
  end

end
