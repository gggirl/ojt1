require 'test_helper'

class UserMsgsControllerTest < ActionController::TestCase
  setup do
    @user_msg = user_msgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_msgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_msg" do
    assert_difference('UserMsg.count') do
      post :create, user_msg: { message: @user_msg.message }
    end

    assert_redirected_to user_msg_path(assigns(:user_msg))
  end

  test "should show user_msg" do
    get :show, id: @user_msg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_msg
    assert_response :success
  end

  test "should update user_msg" do
    put :update, id: @user_msg, user_msg: { message: @user_msg.message }
    assert_redirected_to user_msg_path(assigns(:user_msg))
  end

  test "should destroy user_msg" do
    assert_difference('UserMsg.count', -1) do
      delete :destroy, id: @user_msg
    end

    assert_redirected_to user_msgs_path
  end
end
