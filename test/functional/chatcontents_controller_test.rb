require 'test_helper'

class ChatcontentsControllerTest < ActionController::TestCase
  setup do
    @chatcontent = chatcontents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatcontents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatcontent" do
    assert_difference('Chatcontent.count') do
      post :create, chatcontent: { content: @chatcontent.content }
    end

    assert_redirected_to chatcontent_path(assigns(:chatcontent))
  end

  test "should show chatcontent" do
    get :show, id: @chatcontent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatcontent
    assert_response :success
  end

  test "should update chatcontent" do
    put :update, id: @chatcontent, chatcontent: { content: @chatcontent.content }
    assert_redirected_to chatcontent_path(assigns(:chatcontent))
  end

  test "should destroy chatcontent" do
    assert_difference('Chatcontent.count', -1) do
      delete :destroy, id: @chatcontent
    end

    assert_redirected_to chatcontents_path
  end
end
