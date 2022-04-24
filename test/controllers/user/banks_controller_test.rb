require "test_helper"

class User::BanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_banks_index_url
    assert_response :success
  end

  test "should get show" do
    get user_banks_show_url
    assert_response :success
  end

  test "should get new" do
    get user_banks_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_banks_edit_url
    assert_response :success
  end
end
