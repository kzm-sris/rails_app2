require "test_helper"

class PostBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_post_book_path
    assert_response :success
  end

  test "should get index" do
    get post_books_path
    assert_response :success
  end

  test "should get show" do
    get post_book_path
    assert_response :success
  end
end
