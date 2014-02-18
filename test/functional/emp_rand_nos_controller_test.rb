require 'test_helper'

class EmpRandNosControllerTest < ActionController::TestCase
  setup do
    @emp_rand_no = emp_rand_nos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_rand_nos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_rand_no" do
    assert_difference('EmpRandNo.count') do
      post :create, emp_rand_no: { Id: @emp_rand_no.Id, Name: @emp_rand_no.Name }
    end

    assert_redirected_to emp_rand_no_path(assigns(:emp_rand_no))
  end

  test "should show emp_rand_no" do
    get :show, id: @emp_rand_no
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_rand_no
    assert_response :success
  end

  test "should update emp_rand_no" do
    put :update, id: @emp_rand_no, emp_rand_no: { Id: @emp_rand_no.Id, Name: @emp_rand_no.Name }
    assert_redirected_to emp_rand_no_path(assigns(:emp_rand_no))
  end

  test "should destroy emp_rand_no" do
    assert_difference('EmpRandNo.count', -1) do
      delete :destroy, id: @emp_rand_no
    end

    assert_redirected_to emp_rand_nos_path
  end
end
