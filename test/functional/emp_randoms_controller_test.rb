require 'test_helper'

class EmpRandomsControllerTest < ActionController::TestCase
  setup do
    @emp_random = emp_randoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_randoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_random" do
    assert_difference('EmpRandom.count') do
      post :create, emp_random: { id: @emp_random.id, name: @emp_random.name }
    end

    assert_redirected_to emp_random_path(assigns(:emp_random))
  end

  test "should show emp_random" do
    get :show, id: @emp_random
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_random
    assert_response :success
  end

  test "should update emp_random" do
    put :update, id: @emp_random, emp_random: { id: @emp_random.id, name: @emp_random.name }
    assert_redirected_to emp_random_path(assigns(:emp_random))
  end

  test "should destroy emp_random" do
    assert_difference('EmpRandom.count', -1) do
      delete :destroy, id: @emp_random
    end

    assert_redirected_to emp_randoms_path
  end
end
