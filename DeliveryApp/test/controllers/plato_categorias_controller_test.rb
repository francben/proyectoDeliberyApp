require 'test_helper'

class PlatoCategoriasControllerTest < ActionController::TestCase
  setup do
    @plato_categoria = plato_categorias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plato_categorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plato_categoria" do
    assert_difference('PlatoCategoria.count') do
      post :create, plato_categoria: { categoria_id: @plato_categoria.categoria_id, empresa_id: @plato_categoria.empresa_id, menu_id: @plato_categoria.menu_id, plato_id: @plato_categoria.plato_id }
    end

    assert_redirected_to plato_categoria_path(assigns(:plato_categoria))
  end

  test "should show plato_categoria" do
    get :show, id: @plato_categoria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plato_categoria
    assert_response :success
  end

  test "should update plato_categoria" do
    patch :update, id: @plato_categoria, plato_categoria: { categoria_id: @plato_categoria.categoria_id, empresa_id: @plato_categoria.empresa_id, menu_id: @plato_categoria.menu_id, plato_id: @plato_categoria.plato_id }
    assert_redirected_to plato_categoria_path(assigns(:plato_categoria))
  end

  test "should destroy plato_categoria" do
    assert_difference('PlatoCategoria.count', -1) do
      delete :destroy, id: @plato_categoria
    end

    assert_redirected_to plato_categorias_path
  end
end
