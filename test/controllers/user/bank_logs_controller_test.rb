require "test_helper"

class User::BankLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_bank_logs_index_url
    assert_response :success
  end

  test "should get show" do
    get user_bank_logs_show_url
    assert_response :success
  end

  test "should get new" do
    get user_bank_logs_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_bank_logs_edit_url
    assert_response :success
  end
end
