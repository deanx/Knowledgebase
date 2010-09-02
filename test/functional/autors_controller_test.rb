require 'test_helper'

class AutorsControllerTest < ActionController::TestCase
  setup do
    @autor = autors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post :create, :autor => @autor.attributes
    end

    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should show autor" do
    get :show, :id => @autor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @autor.to_param
    assert_response :success
  end

  test "should update autor" do
    put :update, :id => @autor.to_param, :autor => @autor.attributes
    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete :destroy, :id => @autor.to_param
    end

    assert_redirected_to autors_path
  end
end
