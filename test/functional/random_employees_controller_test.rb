require 'test_helper'

class RandomEmployeesControllerTest < ActionController::TestCase
  setup do
    @random_employee = random_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:random_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create random_employee" do
    assert_difference('RandomEmployee.count') do
      post :create, random_employee: { id: @random_employee.id, name: @random_employee.name }
    end

    assert_redirected_to random_employee_path(assigns(:random_employee))
  end

  test "should show random_employee" do
    get :show, id: @random_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @random_employee
    assert_response :success
  end

  test "should update random_employee" do
    put :update, id: @random_employee, random_employee: { id: @random_employee.id, name: @random_employee.name }
    assert_redirected_to random_employee_path(assigns(:random_employee))
  end

  test "should destroy random_employee" do
    assert_difference('RandomEmployee.count', -1) do
      delete :destroy, id: @random_employee
    end

    assert_redirected_to random_employees_path
  end
end
