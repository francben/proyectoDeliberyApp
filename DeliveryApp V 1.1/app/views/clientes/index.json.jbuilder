json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :nombre_usuario, :documento, :email, :telefono, :celular, :direccion, :pais, :ciudad, :departamento, :usuario_id, :estado
  json.url cliente_url(cliente, format: :json)
end
