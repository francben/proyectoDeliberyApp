json.array!(@plato_categoria) do |plato_categorium|
  json.extract! plato_categorium, :id, :plato_id, :categoria_id, :menu_id, :empresa_id
  json.url plato_categorium_url(plato_categorium, format: :json)
end
