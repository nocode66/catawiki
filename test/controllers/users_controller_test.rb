require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, subcription_plan_id: @user.subcription_plan_id, subscription_expiration_date: @user.subscription_expiration_date, type: @user.type, type: @user.type } }
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, subcription_plan_id: @user.subcription_plan_id, subscription_expiration_date: @user.subscription_expiration_date, type: @user.type, type: @user.type } }
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_response 204
  end
end
