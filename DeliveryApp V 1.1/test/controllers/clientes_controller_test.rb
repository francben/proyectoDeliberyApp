require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellido: @cliente.apellido, celular: @cliente.celular, ciudad: @cliente.ciudad, departamento: @cliente.departamento, direccion: @cliente.direccion, documento: @cliente.documento, email: @cliente.email, estado: @cliente.estado, nombre: @cliente.nombre, nombre_usuario: @cliente.nombre_usuario, pais: @cliente.pais, telefono: @cliente.telefono, usuario_id: @cliente.usuario_id }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { apellido: @cliente.apellido, celular: @cliente.celular, ciudad: @cliente.ciudad, departamento: @cliente.departamento, direccion: @cliente.direccion, documento: @cliente.documento, email: @cliente.email, estado: @cliente.estado, nombre: @cliente.nombre, nombre_usuario: @cliente.nombre_usuario, pais: @cliente.pais, telefono: @cliente.telefono, usuario_id: @cliente.usuario_id }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
