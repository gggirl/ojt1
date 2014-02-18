require 'test_helper'

class EmployeerandomsControllerTest < ActionController::TestCase
  setup do
    @employeerandom = employeerandoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employeerandoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employeerandom" do
    assert_difference('Employeerandom.count') do
      post :create, employeerandom: { Id: @employeerandom.Id, Name: @employeerandom.Name }
    end

    assert_redirected_to employeerandom_path(assigns(:employeerandom))
  end

  test "should show employeerandom" do
    get :show, id: @employeerandom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employeerandom
    assert_response :success
  end

  test "should update employeerandom" do
    put :update, id: @employeerandom, employeerandom: { Id: @employeerandom.Id, Name: @employeerandom.Name }
    assert_redirected_to employeerandom_path(assigns(:employeerandom))
  end

  test "should destroy employeerandom" do
    assert_difference('Employeerandom.count', -1) do
      delete :destroy, id: @employeerandom
    end

    assert_redirected_to employeerandoms_path
  end
end
