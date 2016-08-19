json.array!(@menus) do |menu|
  json.extract! menu, :id, :empresa_id, :nombre, :estado
  json.url menu_url(menu, format: :json)
end
