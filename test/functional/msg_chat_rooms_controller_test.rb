require 'test_helper'

class MsgChatRoomsControllerTest < ActionController::TestCase
  setup do
    @msg_chat_room = msg_chat_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:msg_chat_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create msg_chat_room" do
    assert_difference('MsgChatRoom.count') do
      post :create, msg_chat_room: { content: @msg_chat_room.content }
    end

    assert_redirected_to msg_chat_room_path(assigns(:msg_chat_room))
  end

  test "should show msg_chat_room" do
    get :show, id: @msg_chat_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @msg_chat_room
    assert_response :success
  end

  test "should update msg_chat_room" do
    put :update, id: @msg_chat_room, msg_chat_room: { content: @msg_chat_room.content }
    assert_redirected_to msg_chat_room_path(assigns(:msg_chat_room))
  end

  test "should destroy msg_chat_room" do
    assert_difference('MsgChatRoom.count', -1) do
      delete :destroy, id: @msg_chat_room
    end

    assert_redirected_to msg_chat_rooms_path
  end
end
