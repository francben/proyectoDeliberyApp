json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :empresa_id, :cliente_id, :fecha_pedido, :direccion, :monto_total, :estado
  json.url pedido_url(pedido, format: :json)
end
