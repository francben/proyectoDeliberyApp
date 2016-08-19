json.array!(@roles) do |rol|
  json.extract! rol, :id, :nombre_rol, :descripcion_rol, :estado_rol
  json.url rol_url(rol, format: :json)
end
