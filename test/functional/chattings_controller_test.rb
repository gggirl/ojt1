require 'test_helper'

class ChattingsControllerTest < ActionController::TestCase
  setup do
    @chatting = chattings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chattings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatting" do
    assert_difference('Chatting.count') do
      post :create, chatting: { message: @chatting.message }
    end

    assert_redirected_to chatting_path(assigns(:chatting))
  end

  test "should show chatting" do
    get :show, id: @chatting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatting
    assert_response :success
  end

  test "should update chatting" do
    put :update, id: @chatting, chatting: { message: @chatting.message }
    assert_redirected_to chatting_path(assigns(:chatting))
  end

  test "should destroy chatting" do
    assert_difference('Chatting.count', -1) do
      delete :destroy, id: @chatting
    end

    assert_redirected_to chattings_path
  end
end
