require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { cliente_id: @pedido.cliente_id, direccion: @pedido.direccion, empresa_id: @pedido.empresa_id, entregado: @pedido.entregado, enviado: @pedido.enviado, estado: @pedido.estado, fecha_pedido: @pedido.fecha_pedido, monto_total: @pedido.monto_total, orden_numero: @pedido.orden_numero, recepcionado: @pedido.recepcionado, repartidor_id: @pedido.repartidor_id, tiempo_estimado_envio: @pedido.tiempo_estimado_envio, usuario_id: @pedido.usuario_id }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    patch :update, id: @pedido, pedido: { cliente_id: @pedido.cliente_id, direccion: @pedido.direccion, empresa_id: @pedido.empresa_id, entregado: @pedido.entregado, enviado: @pedido.enviado, estado: @pedido.estado, fecha_pedido: @pedido.fecha_pedido, monto_total: @pedido.monto_total, orden_numero: @pedido.orden_numero, recepcionado: @pedido.recepcionado, repartidor_id: @pedido.repartidor_id, tiempo_estimado_envio: @pedido.tiempo_estimado_envio, usuario_id: @pedido.usuario_id }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
end
