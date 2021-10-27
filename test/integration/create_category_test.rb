require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "get new category form, and create category" do
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

  test "get new category form, and reject invalid category submission" do
    get "/categories/new"
    assert_response :success
    # if it's invalid submission, Category.count should have no difference
    assert_no_difference 'Category.count' do
      post categories_path, params: { category: { name: " "} }
    end
    # error message show up, these wording, div, h4 is coded in in _errors.html.erb
    assert_match "error", response.body
    assert_select "div.alert"
    assert_select "h4.alert-heading"

  end


end
