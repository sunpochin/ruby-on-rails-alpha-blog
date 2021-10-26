require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "get new category form and create category" do
    get "/categories/new"
    assert_response :success
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { name: "Sports"} }
      assert_response :redirect
    end
    # after the previous "assert_response: redirect", we want to follow it.
    follow_redirect!
    assert_response :success
    # the name Sports should show up in the page.
    assert_match "Sports", response.body
  end
end
