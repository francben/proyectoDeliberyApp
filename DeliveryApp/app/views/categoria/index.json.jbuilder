json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :menu_id, :empresa_id, :nombre, :estado
  json.url categorium_url(categorium, format: :json)
end
