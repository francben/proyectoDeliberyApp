json.array!(@precios) do |precio|
  json.extract! precio, :id, :plato_id, :categoria_id, :precio, :estado
  json.url precio_url(precio, format: :json)
end
