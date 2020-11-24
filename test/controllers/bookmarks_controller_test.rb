require 'test_helper'

class BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookmarks_index_url
    assert_response :success
  end

  test "should get new" do
    get bookmarks_new_url
    assert_response :success
  end

  test "should get create" do
    get bookmarks_create_url
    assert_response :success
  end

  test "should get destro" do
    get bookmarks_destro_url
    assert_response :success
  end

end
