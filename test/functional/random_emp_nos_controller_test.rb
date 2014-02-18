require 'test_helper'

class RandomEmpNosControllerTest < ActionController::TestCase
  setup do
    @random_emp_no = random_emp_nos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:random_emp_nos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create random_emp_no" do
    assert_difference('RandomEmpNo.count') do
      post :create, random_emp_no: { id: @random_emp_no.id, name: @random_emp_no.name }
    end

    assert_redirected_to random_emp_no_path(assigns(:random_emp_no))
  end

  test "should show random_emp_no" do
    get :show, id: @random_emp_no
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @random_emp_no
    assert_response :success
  end

  test "should update random_emp_no" do
    put :update, id: @random_emp_no, random_emp_no: { id: @random_emp_no.id, name: @random_emp_no.name }
    assert_redirected_to random_emp_no_path(assigns(:random_emp_no))
  end

  test "should destroy random_emp_no" do
    assert_difference('RandomEmpNo.count', -1) do
      delete :destroy, id: @random_emp_no
    end

    assert_redirected_to random_emp_nos_path
  end
end
