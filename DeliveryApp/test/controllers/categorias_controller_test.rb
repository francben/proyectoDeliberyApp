require 'test_helper'

class CategoriasControllerTest < ActionController::TestCase
  setup do
    @categoria = categorias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria" do
    assert_difference('Categoria.count') do
      post :create, categoria: { empresa_id: @categoria.empresa_id, estado: @categoria.estado, menu_id: @categoria.menu_id, nombre: @categoria.nombre }
    end

    assert_redirected_to categoria_path(assigns(:categoria))
  end

  test "should show categoria" do
    get :show, id: @categoria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria
    assert_response :success
  end

  test "should update categoria" do
    patch :update, id: @categoria, categoria: { empresa_id: @categoria.empresa_id, estado: @categoria.estado, menu_id: @categoria.menu_id, nombre: @categoria.nombre }
    assert_redirected_to categoria_path(assigns(:categoria))
  end

  test "should destroy categoria" do
    assert_difference('Categoria.count', -1) do
      delete :destroy, id: @categoria
    end

    assert_redirected_to categorias_path
  end
end
