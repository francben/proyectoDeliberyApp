require 'test_helper'

class CategoriaControllerTest < ActionController::TestCase
  setup do
    @categorium = categoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorium" do
    assert_difference('Categorium.count') do
      post :create, categorium: { empresa_id: @categorium.empresa_id, estado: @categorium.estado, menu_id: @categorium.menu_id, nombre: @categorium.nombre }
    end

    assert_redirected_to categorium_path(assigns(:categorium))
  end

  test "should show categorium" do
    get :show, id: @categorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorium
    assert_response :success
  end

  test "should update categorium" do
    patch :update, id: @categorium, categorium: { empresa_id: @categorium.empresa_id, estado: @categorium.estado, menu_id: @categorium.menu_id, nombre: @categorium.nombre }
    assert_redirected_to categorium_path(assigns(:categorium))
  end

  test "should destroy categorium" do
    assert_difference('Categorium.count', -1) do
      delete :destroy, id: @categorium
    end

    assert_redirected_to categoria_path
  end
end
