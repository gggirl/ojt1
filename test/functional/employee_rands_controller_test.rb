require 'test_helper'

class EmployeeRandsControllerTest < ActionController::TestCase
  setup do
    @employee_rand = employee_rands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_rands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_rand" do
    assert_difference('EmployeeRand.count') do
      post :create, employee_rand: { id: @employee_rand.id, name: @employee_rand.name }
    end

    assert_redirected_to employee_rand_path(assigns(:employee_rand))
  end

  test "should show employee_rand" do
    get :show, id: @employee_rand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_rand
    assert_response :success
  end

  test "should update employee_rand" do
    put :update, id: @employee_rand, employee_rand: { id: @employee_rand.id, name: @employee_rand.name }
    assert_redirected_to employee_rand_path(assigns(:employee_rand))
  end

  test "should destroy employee_rand" do
    assert_difference('EmployeeRand.count', -1) do
      delete :destroy, id: @employee_rand
    end

    assert_redirected_to employee_rands_path
  end
end
