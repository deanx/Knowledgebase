require 'test_helper'

class ConhecimentosControllerTest < ActionController::TestCase
  setup do
    @conhecimento = conhecimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conhecimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conhecimento" do
    assert_difference('Conhecimento.count') do
      post :create, :conhecimento => @conhecimento.attributes
    end

    assert_redirected_to conhecimento_path(assigns(:conhecimento))
  end

  test "should show conhecimento" do
    get :show, :id => @conhecimento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @conhecimento.to_param
    assert_response :success
  end

  test "should update conhecimento" do
    put :update, :id => @conhecimento.to_param, :conhecimento => @conhecimento.attributes
    assert_redirected_to conhecimento_path(assigns(:conhecimento))
  end

  test "should destroy conhecimento" do
    assert_difference('Conhecimento.count', -1) do
      delete :destroy, :id => @conhecimento.to_param
    end

    assert_redirected_to conhecimentos_path
  end
end
