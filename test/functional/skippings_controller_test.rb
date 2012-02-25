require 'test_helper'

class SkippingsControllerTest < ActionController::TestCase
  setup do
    @skipping = skippings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skippings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skipping" do
    assert_difference('Skipping.count') do
      post :create, :skipping => @skipping.attributes
    end

    assert_redirected_to skipping_path(assigns(:skipping))
  end

  test "should show skipping" do
    get :show, :id => @skipping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skipping.to_param
    assert_response :success
  end

  test "should update skipping" do
    put :update, :id => @skipping.to_param, :skipping => @skipping.attributes
    assert_redirected_to skipping_path(assigns(:skipping))
  end

  test "should destroy skipping" do
    assert_difference('Skipping.count', -1) do
      delete :destroy, :id => @skipping.to_param
    end

    assert_redirected_to skippings_path
  end
end
