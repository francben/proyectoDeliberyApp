json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :menu_id, :empresa_id, :nombre, :estado
  json.url categoria_url(categoria, format: :json)
end
