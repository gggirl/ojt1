require 'test_helper'

class RandomNumbersControllerTest < ActionController::TestCase
  setup do
    @random_number = random_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:random_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create random_number" do
    assert_difference('RandomNumber.count') do
      post :create, random_number: { Name: @random_number.Name }
    end

    assert_redirected_to random_number_path(assigns(:random_number))
  end

  test "should show random_number" do
    get :show, id: @random_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @random_number
    assert_response :success
  end

  test "should update random_number" do
    put :update, id: @random_number, random_number: { Name: @random_number.Name }
    assert_redirected_to random_number_path(assigns(:random_number))
  end

  test "should destroy random_number" do
    assert_difference('RandomNumber.count', -1) do
      delete :destroy, id: @random_number
    end

    assert_redirected_to random_numbers_path
  end
end
