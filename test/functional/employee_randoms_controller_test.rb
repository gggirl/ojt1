require 'test_helper'

class EmployeeRandomsControllerTest < ActionController::TestCase
  setup do
    @employee_random = employee_randoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_randoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_random" do
    assert_difference('EmployeeRandom.count') do
      post :create, employee_random: { userid: @employee_random.userid, username: @employee_random.username }
    end

    assert_redirected_to employee_random_path(assigns(:employee_random))
  end

  test "should show employee_random" do
    get :show, id: @employee_random
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_random
    assert_response :success
  end

  test "should update employee_random" do
    put :update, id: @employee_random, employee_random: { userid: @employee_random.userid, username: @employee_random.username }
    assert_redirected_to employee_random_path(assigns(:employee_random))
  end

  test "should destroy employee_random" do
    assert_difference('EmployeeRandom.count', -1) do
      delete :destroy, id: @employee_random
    end

    assert_redirected_to employee_randoms_path
  end
end
