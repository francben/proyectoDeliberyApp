json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :nombre, :estado
  json.url ingrediente_url(ingrediente, format: :json)
end
