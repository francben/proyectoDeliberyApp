json.array!(@ingrediente_platos) do |ingrediente_plato|
  json.extract! ingrediente_plato, :id, :ingrediente_id, :plato_id, :cantidad
  json.url ingrediente_plato_url(ingrediente_plato, format: :json)
end
