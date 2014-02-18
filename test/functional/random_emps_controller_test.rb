require 'test_helper'

class RandomEmpsControllerTest < ActionController::TestCase
  setup do
    @random_emp = random_emps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:random_emps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create random_emp" do
    assert_difference('RandomEmp.count') do
      post :create, random_emp: { id: @random_emp.id, name: @random_emp.name }
    end

    assert_redirected_to random_emp_path(assigns(:random_emp))
  end

  test "should show random_emp" do
    get :show, id: @random_emp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @random_emp
    assert_response :success
  end

  test "should update random_emp" do
    put :update, id: @random_emp, random_emp: { id: @random_emp.id, name: @random_emp.name }
    assert_redirected_to random_emp_path(assigns(:random_emp))
  end

  test "should destroy random_emp" do
    assert_difference('RandomEmp.count', -1) do
      delete :destroy, id: @random_emp
    end

    assert_redirected_to random_emps_path
  end
end
