require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new_u" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { cardNumber: @user.cardNumber, email: @user.email, fName: @user.fName, nName: @user.nName, password: @user.password, pasword2: @user.pasword2, paymentMethod: @user.paymentMethod } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show_u user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit_u" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { cardNumber: @user.cardNumber, email: @user.email, fName: @user.fName, nName: @user.nName, password: @user.password, pasword2: @user.pasword2, paymentMethod: @user.paymentMethod } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
