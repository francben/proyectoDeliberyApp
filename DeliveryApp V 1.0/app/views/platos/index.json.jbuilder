json.array!(@platos) do |plato|
  json.extract! plato, :id, :nombre, :img, :tiempo_preparacion, :estado
  json.url plato_url(plato, format: :json)
end
