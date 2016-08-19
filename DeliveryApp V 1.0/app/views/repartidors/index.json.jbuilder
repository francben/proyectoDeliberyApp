json.array!(@repartidors) do |repartidor|
  json.extract! repartidor, :id, :nombre, :apellido, :telefono, :zona, :en_servicio
  json.url repartidor_url(repartidor, format: :json)
end
