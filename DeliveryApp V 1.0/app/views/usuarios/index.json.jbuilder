json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :rol_id, :nick_usuario, :nombre_usuario, :apellido_usuario, :documento_usuario, :estado_usuario,  :created_at,
  json.url usuario_url(usuario, format: :json)
end
