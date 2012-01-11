require 'test_helper'

class ScientmenControllerTest < ActionController::TestCase
  setup do
    @scientman = scientmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scientmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scientman" do
    assert_difference('Scientman.count') do
      post :create, :scientman => @scientman.attributes
    end

    assert_redirected_to scientman_path(assigns(:scientman))
  end

  test "should show scientman" do
    get :show, :id => @scientman.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scientman.to_param
    assert_response :success
  end

  test "should update scientman" do
    put :update, :id => @scientman.to_param, :scientman => @scientman.attributes
    assert_redirected_to scientman_path(assigns(:scientman))
  end

  test "should destroy scientman" do
    assert_difference('Scientman.count', -1) do
      delete :destroy, :id => @scientman.to_param
    end

    assert_redirected_to scientmen_path
  end
end
