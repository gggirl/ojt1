require 'test_helper'

class ChatiwsControllerTest < ActionController::TestCase
  setup do
    @chatiw = chatiws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatiws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatiw" do
    assert_difference('Chatiw.count') do
      post :create, chatiw: { content: @chatiw.content }
    end

    assert_redirected_to chatiw_path(assigns(:chatiw))
  end

  test "should show chatiw" do
    get :show, id: @chatiw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatiw
    assert_response :success
  end

  test "should update chatiw" do
    put :update, id: @chatiw, chatiw: { content: @chatiw.content }
    assert_redirected_to chatiw_path(assigns(:chatiw))
  end

  test "should destroy chatiw" do
    assert_difference('Chatiw.count', -1) do
      delete :destroy, id: @chatiw
    end

    assert_redirected_to chatiws_path
  end
end
