require 'test_helper'

class DetallePedidosControllerTest < ActionController::TestCase
  setup do
    @detalle_pedido = detalle_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_pedido" do
    assert_difference('DetallePedido.count') do
      post :create, detalle_pedido: { cantidad: @detalle_pedido.cantidad, costo_plato: @detalle_pedido.costo_plato, empresa_id: @detalle_pedido.empresa_id, pedido_id: @detalle_pedido.pedido_id, plato_id: @detalle_pedido.plato_id }
    end

    assert_redirected_to detalle_pedido_path(assigns(:detalle_pedido))
  end

  test "should show detalle_pedido" do
    get :show, id: @detalle_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_pedido
    assert_response :success
  end

  test "should update detalle_pedido" do
    patch :update, id: @detalle_pedido, detalle_pedido: { cantidad: @detalle_pedido.cantidad, costo_plato: @detalle_pedido.costo_plato, empresa_id: @detalle_pedido.empresa_id, pedido_id: @detalle_pedido.pedido_id, plato_id: @detalle_pedido.plato_id }
    assert_redirected_to detalle_pedido_path(assigns(:detalle_pedido))
  end

  test "should destroy detalle_pedido" do
    assert_difference('DetallePedido.count', -1) do
      delete :destroy, id: @detalle_pedido
    end

    assert_redirected_to detalle_pedidos_path
  end
end
