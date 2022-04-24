require "test_helper"

class User::BankCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_bank_categories_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_bank_categories_edit_url
    assert_response :success
  end
end
