json.array!(@plato_categorias) do |plato_categoria|
  json.extract! plato_categoria, :id, :plato_id, :categoria_id, :menu_id, :empresa_id
  json.url plato_categoria_url(plato_categoria, format: :json)
end
