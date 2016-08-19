json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :razonsocial, :nombrecorto, :ruc, :pais, :ciudad, :departamento, :direccion, :email, :telefono, :web, :estado
  json.url empresa_url(empresa, format: :json)
end
