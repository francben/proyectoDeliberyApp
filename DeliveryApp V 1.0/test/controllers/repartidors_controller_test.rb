require 'test_helper'

class RepartidorsControllerTest < ActionController::TestCase
  setup do
    @repartidor = repartidors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repartidors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repartidor" do
    assert_difference('Repartidor.count') do
      post :create, repartidor: { apellido: @repartidor.apellido, en_servicio: @repartidor.en_servicio, nombre: @repartidor.nombre, telefono: @repartidor.telefono, zona: @repartidor.zona }
    end

    assert_redirected_to repartidor_path(assigns(:repartidor))
  end

  test "should show repartidor" do
    get :show, id: @repartidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repartidor
    assert_response :success
  end

  test "should update repartidor" do
    patch :update, id: @repartidor, repartidor: { apellido: @repartidor.apellido, en_servicio: @repartidor.en_servicio, nombre: @repartidor.nombre, telefono: @repartidor.telefono, zona: @repartidor.zona }
    assert_redirected_to repartidor_path(assigns(:repartidor))
  end

  test "should destroy repartidor" do
    assert_difference('Repartidor.count', -1) do
      delete :destroy, id: @repartidor
    end

    assert_redirected_to repartidors_path
  end
end
