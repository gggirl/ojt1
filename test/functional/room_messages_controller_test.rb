require 'test_helper'

class RoomMessagesControllerTest < ActionController::TestCase
  setup do
    @room_message = room_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_message" do
    assert_difference('RoomMessage.count') do
      post :create, room_message: { message: @room_message.message }
    end

    assert_redirected_to room_message_path(assigns(:room_message))
  end

  test "should show room_message" do
    get :show, id: @room_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_message
    assert_response :success
  end

  test "should update room_message" do
    put :update, id: @room_message, room_message: { message: @room_message.message }
    assert_redirected_to room_message_path(assigns(:room_message))
  end

  test "should destroy room_message" do
    assert_difference('RoomMessage.count', -1) do
      delete :destroy, id: @room_message
    end

    assert_redirected_to room_messages_path
  end
end
