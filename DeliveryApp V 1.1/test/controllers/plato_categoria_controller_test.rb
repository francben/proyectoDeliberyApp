require 'test_helper'

class PlatoCategoriaControllerTest < ActionController::TestCase
  setup do
    @plato_categorium = plato_categoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plato_categoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plato_categorium" do
    assert_difference('PlatoCategorium.count') do
      post :create, plato_categorium: { categoria_id: @plato_categorium.categoria_id, empresa_id: @plato_categorium.empresa_id, menu_id: @plato_categorium.menu_id, plato_id: @plato_categorium.plato_id }
    end

    assert_redirected_to plato_categorium_path(assigns(:plato_categorium))
  end

  test "should show plato_categorium" do
    get :show, id: @plato_categorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plato_categorium
    assert_response :success
  end

  test "should update plato_categorium" do
    patch :update, id: @plato_categorium, plato_categorium: { categoria_id: @plato_categorium.categoria_id, empresa_id: @plato_categorium.empresa_id, menu_id: @plato_categorium.menu_id, plato_id: @plato_categorium.plato_id }
    assert_redirected_to plato_categorium_path(assigns(:plato_categorium))
  end

  test "should destroy plato_categorium" do
    assert_difference('PlatoCategorium.count', -1) do
      delete :destroy, id: @plato_categorium
    end

    assert_redirected_to plato_categoria_path
  end
end
