require 'test_helper'

class PlatosControllerTest < ActionController::TestCase
  setup do
    @plato = platos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plato" do
    assert_difference('Plato.count') do
      post :create, plato: { estado: @plato.estado, img: @plato.img, nombre: @plato.nombre, tiempo_preparacion: @plato.tiempo_preparacion }
    end

    assert_redirected_to plato_path(assigns(:plato))
  end

  test "should show plato" do
    get :show, id: @plato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plato
    assert_response :success
  end

  test "should update plato" do
    patch :update, id: @plato, plato: { estado: @plato.estado, img: @plato.img, nombre: @plato.nombre, tiempo_preparacion: @plato.tiempo_preparacion }
    assert_redirected_to plato_path(assigns(:plato))
  end

  test "should destroy plato" do
    assert_difference('Plato.count', -1) do
      delete :destroy, id: @plato
    end

    assert_redirected_to platos_path
  end
end
